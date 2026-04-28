<?php class Response
{
    function redirect($uri = "")
    {
        $url = '/ecommerce/' . $uri;
        header('location:' . $url);
        exit;
    }

    function dataApi($code, $mess, $data = [])
    {
        header('Content-Type: application/json');
        $data = [
            'code' => $code,
            'message' => $mess,
            'data' => $data,
        ];
        return json_encode($data);
    }

    function setToastSession($type, $mess, $uri = '')
    {
        Session::set('toastType', $type);
        Session::set('toastMessage', $mess);
        if (!empty($uri)) {
            return $this->redirect($uri);
        }
        return;
    }
}
