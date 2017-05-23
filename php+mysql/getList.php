<?php
header("Content-Type:text/html;charset=utf-8");
require_once "sqlHelper.class.php";

$cityName = $_GET['city'];
//$cityName = iconv('gbk','UTF-8',$cityName);
//echo $cityName;

$sqlHelper = new SqlHelper();

$sql = "select * from lists where city='$cityName'";
$res = $sqlHelper->execute_dql($sql);

$arr = array();
while($row=mysql_fetch_assoc($res)){
	$arr[] = $row;	
}
$json = json_encode($arr);
//var_dump($arr);
echo $json;


