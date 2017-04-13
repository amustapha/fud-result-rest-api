<?php


$dir =  $_SERVER['REQUEST_URI'];
$dir = preg_replace("/(\/)\\1+/", "$1", $dir);
$dir = trim($dir, '\/');
$dir = mb_split('/', $dir);

include '../engine/libs/Model.php';
include '../engine/libs/Page.php';
include '../engine/models/Result.php';
include '../engine/pages/IndexPage.php';


$corresponding_method = (isset($dir[1]) ? ucfirst($dir[1]) : "default") . "Action";
$corresponding_param = isset($dir[2]) ? $dir[2] : null;

$corresponding_method = mb_split("-", $corresponding_method);
for($i=1; $i<sizeof($corresponding_method); $i++){
    $corresponding_method[$i] = ucfirst($corresponding_method[$i]);
}
$corresponding_method = implode("", $corresponding_method);


$page = new IndexPage();
if($corresponding_method == "stream"){
    echo $page->streamAction()0;
}
if(method_exists($page, $corresponding_method)){
    echo json_encode($page->$corresponding_method($corresponding_param));
}else{
    echo json_encode($corresponding_method . " not found")

}
