<?php
class Request
{
    private $_rules = [];
    private $_message = [];
    private $_errors = [];
    function getMethod()
    {
        return strtolower($_SERVER['REQUEST_METHOD']);
    }

    function isGet()
    {
        if ($this->getMethod() == 'get') {
            return true;
        }
        return false;
    }

    function isPost()
    {
        if ($this->getMethod() == 'post') {
            return true;
        }
        return false;
    }

    function getFields()
    {
        $dataFields = array();

        // Standard POST/GET data is usually better accessed via Superglobals directly
        // to avoid issues with filter_input on some configurations.
        
        if ($this->isGet()) {
            $source = $_GET;
        } elseif ($this->isPost()) {
            $source = $_POST;
        } else {
            return [];
        }

        if (!empty($source)) {
            foreach ($source as $key => $value) {
                if (is_array($value)) {
                    $dataFields[$key] = filter_var_array($value, FILTER_DEFAULT);
                } else {
                    $dataFields[$key] = filter_var($value, FILTER_DEFAULT);
                }
            }
        }

        return $dataFields;
    }

    //set Rules
    public function rules($rules = [])
    {
        $this->_rules = $rules;
    }

    //set Message 
    public function message($mess = [])
    {
        $this->_message = $mess;
    }

    //set Message 
    public function validate()
    {
        $this->_rules = array_filter($this->_rules);
        $isValidate = true;
        if (!empty($this->_rules)) {

            $dataFields = $this->getFields();

            foreach ($this->_rules as $fieldName => $ruleItem) {
                $ruleItemArr = explode('|', $ruleItem);

                foreach ($ruleItemArr as $rule) {

                    $ruleName = null;
                    $ruleValue = null;

                    $rulesArr = explode(':', $rule);
                    //Lấy phần tử dầu tiên
                    $ruleName = reset($rulesArr);
                    if (count($rulesArr) > 1) {
                        //Lấy phần tử cuối
                        $ruleValue = end($rulesArr);
                    }

                    //Kiểm tra lỗi không nhập
                    if ($ruleName == 'required' && empty(trim($dataFields[$fieldName] ?? ''))) {
                        //Set giá trị cho errors từ message
                        $this->setErrors($fieldName, $ruleName);
                        $isValidate = false;
                    }

                    //Kiểm tra lỗi min
                    if ($ruleName == 'min' && strlen(trim($dataFields[$fieldName] ?? '')) < $ruleValue) {
                        //Set giá trị cho errors từ message
                        $this->setErrors($fieldName, $ruleName);
                        $isValidate = false;
                    }

                    //Kiểm tra lỗi max
                    if ($ruleName == 'max' && strlen(trim($dataFields[$fieldName] ?? '')) > $ruleValue) {
                        //Set giá trị cho errors từ message
                        $this->setErrors($fieldName, $ruleName);
                        $isValidate = false;
                    }

                    //Kiểm tra lỗi email
                    if ($ruleName == 'email' && !filter_var(trim($dataFields[$fieldName] ?? ''), FILTER_VALIDATE_EMAIL)) {
                        //Set giá trị cho errors từ message
                        $this->setErrors($fieldName, $ruleName);
                        $isValidate = false;
                    }

                    // Kiem tra lỗi phone

                    if ($ruleName == 'phone') {
                        if (!preg_match('/(84|0[35789])[0-9]{8}\b/', trim($dataFields[$fieldName] ?? ''))) {
                            //Set giá trị cho errors từ message
                            $this->setErrors($fieldName, $ruleName);
                            $isValidate = false;
                        }
                    }

                    // Kiểm tra độ mạnh mật khẩu
                    if ($ruleName == 'strong') {
                        $val = trim($dataFields[$fieldName] ?? '');
                        if (strlen($val) < 8) {
                            $this->setErrors($fieldName, $ruleName);
                            $isValidate = false;
                        }
                        if (!preg_match('/[A-Z]/', $val) || !preg_match('/[a-z]/', $val)) {
                            $this->setErrors($fieldName, $ruleName);
                            $isValidate = false;
                        }

                        if (!preg_match('/[0-9]/', $val)) {
                            $this->setErrors($fieldName, $ruleName);
                            $isValidate = false;
                        }

                        if (!preg_match('/[\W_]/', $val)) {
                            $this->setErrors($fieldName, $ruleName);
                            $isValidate = false;
                        }
                    }

                    //Kiểm tra lỗi match
                    if ($ruleName == 'match' && trim($dataFields[$fieldName] ?? '') !== trim($dataFields[$ruleValue] ?? '')) {
                        //Set giá trị cho errors từ message
                        $this->setErrors($fieldName, $ruleName);
                        $isValidate = false;
                    }
                }
            }
        }
        return $isValidate;
    }

    //get Error
    public function errors($fieldName = '')
    {
        if (!empty($this->_errors)) {
            if (empty($fieldName)) {
                $errorArr = array();
                foreach ($this->_errors as $key => $value) {
                    $errorArr[$key] = reset($value);
                }
                return $errorArr;
            }

            return reset($this->_errors[$fieldName]);
        }
        return false;
    }

    public function setErrors($fieldName, $ruleName)
    {
        $this->_errors[$fieldName][$ruleName] = $this->_message[$fieldName . '.' . $ruleName];
    }
}
