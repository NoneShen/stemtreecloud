<?php
require_once 'functions.php';
if(!empty($_GET['Franchisee_id'])){
    $conn=connectDb();
    $Franchisee_id=intval($_GET['Franchisee_id']);
    $result=mysqli_query($conn,"SELECT * FROM franchisee_information WHERE Franchisee_id = $Franchisee_id");
    $arr=mysqli_fetch_assoc($result);
}
?>


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
        <form action="Franchisee_update_server.php" name="" method="POST" accept-charset="UTF-8">
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
                <tr>
                    <td style="nowrap:nowrap;text-align:left;font-size:12px;font-family:Arial;width:200px;">ID<span style="color:red;">*</span></td>
                    <td style="width:250px;"><input contenteditable="false" type="text" style="width:250px;" maxlength="40" name="Franchisee_id" value="<?php echo $arr['Franchisee_id'];?>">
                    </td>
                </tr>
                <tr>
                    <td style="nowrap:nowrap;text-align:left;font-size:12px;font-family:Arial;width:200px;">First
                        Name<span style="color:red;">*</span></td>
                    <td style="width:250px;"><input type="text" style="width:250px;" maxlength="40" name="First_name" value="<?php echo $arr['First_name'];?>">
                    </td>
                </tr>

                <tr>
                    <td style="nowrap:nowrap;text-align:left;font-size:12px;font-family:Arial;width:200px;">Last
                        Name<span style="color:red;">*</span></td>
                    <td style="width:250px;"><input type="text" style="width:250px;" maxlength="80" name="Last_name" value="<?php echo $arr['Last_name'];?>">
                    </td>
                </tr>

                <tr>
                    <td style="nowrap:nowrap;text-align:left;font-size:12px;font-family:Arial;width:200px;">Email<span style="color:red;">*</span></td>
                    <td style="width:250px;"><input type="text" style="width:250px;" maxlength="80" name="Franchisee_email_address" value="<?php echo $arr['Franchisee_email_address'];?>">
                    </td>
                    
                </tr>

                <tr>
                    <td style="nowrap:nowrap;text-align:left;font-size:12px;font-family:Arial;width:200px;">Mobile<span
                            style="color:red;">*</span></td></td>
                    <td style="width:250px;"><input type="text" style="width:250px;" maxlength="30" name="Mobile" value="<?php echo $arr['Mobile'];?>"></td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align:center; padding-top:15px;font-size:12px;">
                        <input style="font-size:12px;color:black" type="submit" value="Submit">
                        <input type="reset" style="font-size:12px;color:black" value="Reset">
                    </td>
                </tr>
                </tbody>

            </table>
        </form>
    </div>
</div>

</body>

</html>