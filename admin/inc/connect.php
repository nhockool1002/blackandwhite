<?php
$db_host = 'localhost'; // localhost / ip
$db_user = 'root';// tai khoan Admin
$db_pass = ''; // pass dang nhap
$db_data = 'blackandwhite'; // ten database 

// thực hiện kết nối và kiểm tra có thành công hay không
if ($conn = @mysql_connect($db_host, $db_user, $db_pass)) {
    // nếu thành công, thực hiện chọn CSDL
    if (!@mysql_select_db($db_data)) {
        // nếu chọn thất bại, tiến hành tạo CSDL và tạo bảng.
        mysql_query('CREATE DATABASE `' . $db_data . '` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci');
        mysql_select_db($db_data);
        mysql_query('CREATE TABLE IF NOT EXISTS `counter` (
                `ip_address` varchar(15) NOT NULL,
                `last_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                KEY `ip_address` (`ip_address`)
        ) ENGINE=InnoDB DEFAULT CHARSET=latin1;');
    }
} else {
    // thông báo lỗi nếu không kết nối CSDL được.
    die(mysql_error());
}
?>