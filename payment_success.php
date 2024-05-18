<?php require_once('header.php'); ?>
<?php 
    if(isset($_GET['partnerCode'])){
        $code_order = rand(0,9999);
        $partnerCode = $_GET['partnerCode'];
        $orderId = $_GET['orderId'];
        $amount = $_GET['amount'];
        $orderInfo = $_GET['orderInfo'];
        $orderType = $_GET['orderType'];
        $transId = $_GET['transId'];
        $payType = $_GET['payType'];
        $cart_payment = 'momo';
        // insert databse momo
        $insert_momo = "INSERT INTO tbl_momo(partner_code, order_id, amount, order_infor, order_type, trans_id, pay_type, code_cart) VALUES('".$partnerCode."','" . $orderId."','" . $amount."','" . $orderInfo."','" . $orderType."','" . $transId."','" . $payType."','".$code_order."')";
        $payment_query = ecommerceweb_query($ecommerceweb, $insert_momo);

        
        if($payment_query){
            $insert_payment = "INSERT INTO tbl_payment(customer_id,code_cart,customer_name,customer_email,payment_date,txnid,paid_amount,card_number,card_cvv, card_month, card_year, bank_transaction_info,payment_method,payment_status,shipping_status, payment_id) 
            VALUES('".$customer_id."','".$code_cart."','".$customer_name."','".$customer_email."','".$now."','".$paid_amount."','".$payment_method."')";
            $payment_query = ecommerceweb_query($ecommerceweb,$insert_payment);
            // insert gio hang

            // them don hang chi tiet
        foreach ($_SESSION['cart'] as $key => $value){
            $product_id = $value['id'];
            $quantity = $value['quantity'];
            $insert_order_details = "INSERT INTO tbl_order(id, product_id, code_cart, quantity) VALUES('".$product_id."','".$code_order."','".$quantity."')";
            ecommerceweb_query($ecommerceweb,$insert_order);
        }
            echo '<h3>Giao dịch thanh toán bằng MOMO thành công</h3>';
            echo '<p>Vui lòng vào trang <a target="_blank" href="#">lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>';
        }
        else{
            echo 'Giao dịch thất bại';
        }
    }
?>
<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12">
                <p>
                    <h3 style="margin-top:20px;"><?php echo "THANH TOÁN THÀNH CÔNG!!" ?></h3>
                    <a href="customer-order.php" class="btn btn-search" style="padding: 10px 30px;"><?php echo "Xem đơn đã đặt" ?></a>
                </p>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>