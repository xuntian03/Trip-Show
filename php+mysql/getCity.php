<?php
header("Content-Type:text/html;charset=utf-8");
require_once "sqlHelper.class.php";

//$json = '{"city1":"北京","city2":"上海","city3":"杭州","city4":"厦门"}';

$sqlHelper = new SqlHelper();

$sql = "select * from cities";
$res = $sqlHelper->execute_dql($sql);

$arr = array();
while($row=mysql_fetch_assoc($res)){
	$arr[] = $row;	
}
$json = json_encode($arr);

echo $json;