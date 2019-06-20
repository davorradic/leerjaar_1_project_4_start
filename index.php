<?php
session_start();
include_once('config/db.php');
include_once('template/header.php');
if(isset($_GET['page']) && $_GET['page'] != ''){
    $pages = ['home', 'upload', 'merk', 'merken', 'merk_detail'];
    if(in_array($_GET['page'], $pages)){
        include_once($_GET['page'].'.php');
    } else {
        include_once('404.php');
    }
} else {
    include_once('home.php');
}
include_once('template/footer.php');
?>