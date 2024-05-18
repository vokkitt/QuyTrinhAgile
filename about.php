<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
   $about_title = $row['about_title'];
    $about_content = $row['about_content'];
    $about_banner = $row['about_banner'];
}
?>

<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $about_banner; ?>);">
    <div class="inner">
        <h1><?php echo $about_title; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12">
                
                <p>
                    <?php echo $about_content; ?>
                </p>
                <div style="
                    display:flex;
                    flex-wrap:wrap;
                    align-items:center;
                    justify-content:center">
                    <a href="product-category.php?id=9&type=top-category">
                        <img src="./assets/img/hades.jpg" alt="" style="width:500px;margin:20px;">
                    </a>
                    <a href="product-category.php?id=12&type=top-category">
                        <img src="./assets/img/ananas.jpg" style="width:500px;margin:20px;">
                    </a>
                    <a href="product-category.php?id=11&type=top-category">
                        <img src="./assets/img/nowsg.jpg" alt="" style="width:500px;margin:20px;">
                    </a>
                    <a href="product-category.php?id=10&type=top-category">
                        <img src="./assets/img/swe.jpg" alt="" style="width:500px;margin:20px;">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>