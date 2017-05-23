<?php
header("Content-Type:text/html;charset=utf-8");
require_once "sqlHelper.class.php";

$viewName = $_GET['views'];

//$viewName = iconv('gbk','UTF-8',$viewName);
//echo $viewName;

$sqlHelper = new SqlHelper();

$sql = "select * from lists where views='$viewName'";
$res = $sqlHelper->execute_dql($sql);

$arr = array();
while($row=mysql_fetch_assoc($res)){
	$arr[] = $row;	
}
$json = json_encode($arr);
//var_dump($arr);
echo $json;


