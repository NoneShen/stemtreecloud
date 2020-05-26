<!DOCTYPE html>
<html lang="en-US" class="js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Franchisee Information</title>
	<link rel="stylesheet" id="child-style-css" href="https://stemtree.com/wp-content/themes/StemTreeTheme/style.css?ver=1.0.5" type="text/css" media="all">
</head>
<body>
<div id="main-content">
    <div id="crmWebToEntityForm" style="width:600px;margin:auto;">
        <form action="" name="" method="POST" accept-charset="UTF-8">
            <!-- Do not remove this code. -->
            <style>
                tr, td {
                    padding: 6px;
                    border-spacing: 0px;
                    border-width: 0px;
                }
            </style>
            <table style="width:600px;background-color:white;color:black">

                <tbody>
                <tr>
                    <td colspan="2" style="text-align:left;color:black;font-family:Arial;font-size:14px;"><strong>Franchisee Information</strong></td>
                </tr>
<?php
$conn=connectDb();
$result=mysqli_query($conn,"SELECT * FROM Franchisee_information ORDER BY Franchisee_id");
$dataCount=mysqli_num_rows($result);
for($i=0;$i<$dataCount;$i++){
    $result_arr=mysqli_fetch_assoc($result);
    $First_name=$result_arr['First_name'];
    $Last_name=$result_arr['Last_name'];
    $Email_address=$result_arr['Franchisee_email_address'];
    $Mobile=$result_arr['Mobile'];
}
       echo "<tr><td style="nowrap:nowrap;text-align:left;font-size:12px;font-family:Arial;width:200px;">First Name</td>
                    <td style="width:250px;">$First_name</td>
                </tr>";

       echo "<tr><td style="nowrap:nowrap;text-align:left;font-size:12px;font-family:Arial;width:200px;">Last Name</td>
                    <td style="width:250px;">$Last_name</td>
                </tr>";
                    
 ?>
                </tbody>
            </table>
        </form>
    </div>
</div>

</body>

</html>
