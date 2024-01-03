<?php

function GiaTien($dongia) //1000000
{
    $sResult = $dongia;
    for ( $i = 3; $i < strlen($sResult); $i += 4)
    {
        $sSau = substr($sResult,strlen($sResult) - $i); // 000.000
        $sDau = substr($sResult,0, strlen($sResult) - $i); // 1
        $sResult = $sDau . "." . $sSau; // 1.000.000
    }
    return $sResult;
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vinylhanoi1";
$conn = mysqli_connect($servername, $username, $password, $dbname);
	
if(!$conn) {
	die("Connection failed: ".mysqli_connect_error());
}
mysqli_query($conn,"set names utf8");

$laySP="SELECT * FROM sanpham";

if(!empty($_POST["gia"]))
    $laySP="SELECT * FROM sanpham WHERE DonGia < '".$_POST["gia"]."'"; //nếu tìm theo giá thì sẽ chỉ hiển thị các sản phẩm có giá bé hơn giá cung cấp

if(!empty($_POST["loaisp"]))
    $laySP="SELECT * FROM sanpham WHERE MaLoaiSP = ".$_POST["loaisp"]; //nếu tìm theo loại sản phẩm thì sẽ chỉ hiển thị các sản phẩm có cùng loại 

if(!empty($_POST["loaisp"]) && !empty($_POST["gia"]))
    $laySP="SELECT * FROM sanpham WHERE MaLoaiSP = ".$_POST["loaisp"]." and DonGia < '".$_POST["gia"]."'"; 

$truyvan_laySP=mysqli_query($conn,$laySP);
?>

    <div class="clearfix"></div>
<?php
$i = 0;
while ($cot = mysqli_fetch_array($truyvan_laySP)) {
    $i++;
    ?>
    <div class="product-one">
        <div class="col-md-4 product-left single-left">
            <div class="p-one simpleCart_shelfItem">

                <a href="ChiTietSanPham.php?MaSP=<?php echo $cot["MaSanPham"]; ?>">  <!-- link chi tiet san pham -->

                    <img height="250" src="../images/HinhSP/<?php echo $cot["Anh"] ?>" alt=""/>

                    <div class="mask mask1">
                        <span>Xem chi tiết</span>
                    </div>
                </a>
                <h4><?php echo $cot["TenSanPham"] ?></h4>

                <p><a class="item_add" href="#"><span
                            class=" item_price"><?php echo GiaTien($cot["DonGia"]); ?></span>VNĐ</a></p>
            </div>
        </div>

    </div>


    <?php if ($i % 3 == 0) { ?>

        <div class="clearfix"></div>

    <?php
    }
}
?>