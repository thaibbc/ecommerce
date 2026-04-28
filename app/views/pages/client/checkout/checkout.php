<div class="checkout_page">
    <!-- Ec checkout page -->
    <form action="checkout-final" method="post">
        <section class="ec-page-content section-space-p">
            <div class="container">
                <div class="row">
                    <div class="ec-checkout-leftside col-lg-8 col-md-12 ">
                        <!-- checkout content Start -->
                        <div class="ec-checkout-content">

                            <div class="ec-checkout-inner">
                                <div class="ec-checkout-wrap margin-bottom-30 padding-bottom-3">
                                    <div class="ec-checkout-block ec-check-bill">
                                        <h3 class="ec-checkout-title">Chi tiết thanh toán</h3>
                                        <div class="ec-bl-block-content">
                                            <!-- <div class="ec-check-subtitle">Tùy chọn thanh toán</div>
                                        <span class="ec-bill-option">
                                            <span>
                                                <input type="radio" id="bill1" name="radio-group">
                                                <label for="bill1">Tôi muốn sử dụng địa chỉ hiện có</label>
                                            </span>
                                            <span>
                                                <input type="radio" id="bill2" name="radio-group" checked>
                                                <label for="bill2">Tôi muốn sử dụng địa chỉ mới</label>
                                            </span>
                                        </span> -->

                                            <div class="ec-check-bill-form">

                                                <span class="ec-bill-wrap ">
                                                    <label>Họ và tên<small class="text-danger ">*</small></label>
                                                    <input type="text" name="fullname" value="<?= $dataAddress['fullname'] ?? '' ?>" placeholder="Nhập họ và tên của bạn" required />
                                                </span>
                                                <span class="ec-bill-wrap ">
                                                    <label>Số điện thoại<small class="text-danger ">*</small></label>
                                                    <input type="tel" name="phone" value="<?= $dataAddress['phone'] ?? '' ?>" placeholder="Nhập số điện thoại của bạn" required />
                                                </span>

                                                <span class="ec-bill-wrap">
                                                    <label>Địa chi<small class="text-danger ">*</small></label>
                                                    <textarea name="address" placeholder="Nhập địa chỉ của bạn" id="" cols="30" rows="3"><?= $dataAddress['address'] ?? '' ?></textarea>
                                                </span>



                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <span class="ec-check-order-btn">
                                    <button type="submit" class="btn btn-primary">Đặt hàng</button>
                                </span>
                            </div>
                        </div>
                        <!--cart content End -->
                    </div>
                    <!-- Sidebar Area Start -->
                    <div class="ec-checkout-rightside col-lg-4 col-md-12">
                        <div class="ec-sidebar-wrap">
                            <!-- Sidebar Summary Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-sb-title">
                                    <h3 class="ec-sidebar-title">Tóm tắt đơn hàng</h3>
                                </div>
                                <div class="ec-sb-block-content">
                                    <div class="ec-checkout-summary">
                                        <div>
                                            <span class="text-left">Tạm tính</span>
                                            <span class="text-right order-subtotal-amount"><?= Format::formatCurrency($dataCart[0]['totalPrice']) ?></span>
                                        </div>
                                        <div>
                                            <span class="text-left">Ưu đãi (-)</span>
                                            <span class="text-right order-coupon-amount">0</span>
                                        </div>
                                        <div>
                                            <span class="text-left">Phiếu giảm giá</span>
                                            <span class="text-right"><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#couponModal" style="color: #3474d4; font-weight: bold; cursor:pointer;">Chọn mã giảm giá</a></span>
                                        </div>
                                        <div class="ec-checkout-coupan-content" style="display: block; margin-top: 10px; border-top: 1px solid #eee; padding-top: 10px;">
                                            <div class="ec-checkout-coupan-form">
                                                <input id="coupon_code" name="coupon_code" class="ec-coupan" type="text" placeholder="Mã giảm giá đang chọn" readonly style="background-color: #f9f9f9; width: 100%; border: 1px solid #ccc; padding: 5px 10px;">
                                            </div>
                                        </div>
                                        <div class="ec-checkout-summary-total">
                                            <span class="text-left">Tổng tiền</span>
                                            <span class="text-right order-total-amount"> <?= Format::formatCurrency($dataCart[0]['totalPrice']) ?></span>
                                        </div>
                                    </div>
                                    <div class="ec-checkout-pro">
                                        <?php
                                        foreach ($dataCart as $cartItem) {

                                        ?>
                                            <div class="col-sm-12 mb-6">
                                                <div class="ec-product-inner">
                                                    <div class="ec-pro-image-outer">
                                                        <div class="ec-pro-image">
                                                            <a href="product/<?= "{$cartItem['slug']}-{$cartItem['product_id']}" ?>" class="image" target="_blank">
                                                                <img style="max-height: 130px;" class="main-image" src="<?= $cartItem['thumb'] ?>" alt="<?= $cartItem['title'] ?>" />

                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="ec-pro-content">
                                                        <h5 class="ec-pro-title">
                                                            <a href="product/<?= "{$cartItem['slug']}-{$cartItem['product_id']}" ?>"><?= $cartItem['title']  ?></a>
                                                        </h5>
                                                        <div class="ec-pro-rating">
                                                            <span style="color: #888; font-size: 12px;">( <?= $cartItem['attribute_values'] ?>)</span>
                                                            <span><?= 'x' . $cartItem['quantity'] ?></span>
                                                        </div>
                                                        <span class="ec-price">
                                                            <span class="new-price"><?= Format::formatCurrency(($cartItem['price'])) ?></span>
                                                        </span>

                                                    </div>
                                                </div>
                                            </div>
                                        <?php } ?>

                                    </div>
                                </div>
                            </div>
                            <!-- Sidebar Summary Block -->
                        </div>
                        <!-- <div class="ec-sidebar-wrap ec-checkout-del-wrap">
                        <div class="ec-sidebar-block">
                            <div class="ec-sb-title">
                                <h3 class="ec-sidebar-title">Delivery Method</h3>
                            </div>
                            <div class="ec-sb-block-content">
                                <div class="ec-checkout-del">
                                    <div class="ec-del-desc">Please select the preferred shipping method to use on this
                                        order.</div>
                                    <form action="#">
                                        <span class="ec-del-option">
                                            <span>
                                                <span class="ec-del-opt-head">Free Shipping</span>
                                                <input type="radio" id="del1" name="radio-group" checked>
                                                <label for="del1">Rate - $0 .00</label>
                                            </span>
                                            <span>
                                                <span class="ec-del-opt-head">Flat Rate</span>
                                                <input type="radio" id="del2" name="radio-group">
                                                <label for="del2">Rate - $5.00</label>
                                            </span>
                                        </span>
                                        <span class="ec-del-commemt">
                                            <span class="ec-del-opt-head">Add Comments About Your Order</span>
                                            <textarea name="your-commemt" placeholder="Comments"></textarea>
                                        </span>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div> -->
                        <div class="ec-sidebar-wrap ec-checkout-pay-wrap">
                            <!-- Sidebar Payment Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-sb-title">
                                    <h3 class="ec-sidebar-title">Phương thức thanh toán</h3>
                                </div>
                                <div class="ec-sb-block-content">
                                    <div class="ec-checkout-pay">
                                        <div class="ec-pay-desc">Vui lòng chọn phương thức thanh toán ưa thích để sử dụng trên này
                                            đặt hàng.
                                        </div>

                                        <div class="d-flex flex-column  mb-3 ">
                                            <?php
                                            foreach ($dataPaymentMethod as $paymentMethod) {
                                            ?>
                                                <span class="ec-pay-option mb-1 ">
                                                    <span>
                                                        <input type="radio" id="<?= $paymentMethod['name']  ?>" value="<?= $paymentMethod['id']  ?> - <?= $paymentMethod['name'] ?>" name="payment_method" checked>
                                                        <label class="mb-0 " for="<?= $paymentMethod['name']  ?>"><?= $paymentMethod['display_name']  ?></label>
                                                    </span>
                                                </span>
                                            <?php } ?>

                                        </div>

                                        <span class="ec-del-commemt  ">
                                            <span class="ec-del-opt-head">Để lại lời nhắn cho người bán</span>
                                            <textarea name="note" placeholder="Viết ở đây"></textarea>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <!-- Sidebar Payment Block -->
                        </div>
                        <div class="ec-sidebar-wrap ec-check-pay-img-wrap">
                            <!-- Sidebar Payment Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-sb-title">
                                    <h3 class="ec-sidebar-title">Phương thức thanh toán</h3>
                                </div>
                                <div class="ec-sb-block-content">
                                    <div class="ec-check-pay-img-inner">
                                        <div class="ec-check-pay-img">
                                            <img src="public/client/images/icons/payment1.png" alt="payment_method">
                                        </div>
                                        <div class="ec-check-pay-img">
                                            <img src="public/client/images/icons/payment2.png" alt="payment_method">
                                        </div>
                                        <div class="ec-check-pay-img">
                                            <img src="public/client/images/icons/payment3.png" alt="payment_method">
                                        </div>
                                        <div class="ec-check-pay-img">
                                            <img src="public/client/images/icons/payment4.png" alt="payment_method">
                                        </div>
                                        <div class="ec-check-pay-img">
                                            <img src="public/client/images/icons/payment5.png" alt="payment_method">
                                        </div>
                                        <div class="ec-check-pay-img">
                                            <img src="public/client/images/icons/payment6.png" alt="payment_method">
                                        </div>
                                        <div class="ec-check-pay-img">
                                            <img src="public/client/images/icons/payment7.png" alt="payment_method">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Sidebar Payment Block -->
                        </div>
                    </div>
                </div>
            </div>
        </section>


    </form>
</div>

<!-- Modal for Coupons -->
<div class="modal fade" id="couponModal" tabindex="-1" aria-labelledby="couponModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="couponModalLabel">Chọn mã giảm giá</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="input-group mb-4">
          <input type="text" id="couponSearchInput" class="form-control" placeholder="Nhập mã ưu đãi..." style="border: 1px solid #ccc; padding: 10px;">
          <button class="btn btn-primary" type="button" onclick="applyModalCoupon(<?= $dataCart[0]['totalPrice'] ?? 0 ?>)">Áp dụng</button>
        </div>
        <div class="coupon-list">
          <h6 class="mb-3">Mã giảm giá khả dụng</h6>
          <?php 
          $hasCoupon = false;
          foreach ($dataCoupon as $coupon): ?>
            <?php if ($coupon['status'] == 1 && strtotime($coupon['expired']) > time() && $coupon['quantity'] > 0 && $coupon['min_amount'] <= ($dataCart[0]['totalPrice'] ?? 0)): 
              $hasCoupon = true;
            ?>
            <div class="card mb-3 coupon-item shadow-sm" style="border: 1px solid #e1e1e1;">
              <div class="card-body d-flex justify-content-between align-items-center">
                <div>
                  <h6 class="mb-1" style="color: #3474d4;"><strong><?= $coupon['code'] ?></strong></h6>
                  <p class="mb-1 text-muted" style="font-size: 13px;"><?= $coupon['title'] ?></p>
                  <small class="text-danger"><i class="fa fa-clock-o"></i> HSD: <?= date('d/m/Y', strtotime($coupon['expired'])) ?></small>
                </div>
                <button type="button" class="btn btn-sm btn-outline-primary px-3" onclick="selectAndApplyCoupon('<?= $coupon['code'] ?>', <?= $dataCart[0]['totalPrice'] ?? 0 ?>)">Chọn</button>
              </div>
            </div>
            <?php endif; ?>
          <?php endforeach; 
          if(!$hasCoupon): ?>
            <p class="text-muted text-center mt-4">Không có mã giảm giá nào phù hợp cho đơn hàng của bạn.</p>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
    function applyModalCoupon(totalPrice) {
        const code = document.getElementById('couponSearchInput').value.trim();
        if(code) {
            document.getElementById('coupon_code').value = code;
            updateProductCoupon(totalPrice);
            $('#couponModal').modal('hide');
        } else {
            showToast('error', 'Vui lòng nhập mã giảm giá');
        }
    }

    function selectAndApplyCoupon(code, totalPrice) {
        document.getElementById('coupon_code').value = code;
        updateProductCoupon(totalPrice);
        $('#couponModal').modal('hide');
    }
</script>