<?php
include('dbcon.php');
if(isset($_POST['login'])){
    $IdOrMail=$_POST['userid'];
    $password=$_POST['pass'];
    $row1=0;
    $row=0;
    if(is_numeric($IdOrMail)){
        $qry="SELECT * FROM `users` WHERE `uid`='$IdOrMail' and `password`='$password';";
        $run=mysqli_query($con,$qry);
        $row=mysqli_num_rows($run);
        $userid=$IdOrMail;
    }
    else{
    $query="SELECT * FROM `users` WHERE `email`='$IdOrMail' and `password`='$password';";
    $rn=mysqli_query($con,$query);
    $row1=mysqli_num_rows($rn);
    if($rn==TRUE){
                $data=mysqli_fetch_assoc($rn);
                $userid=$data["uid"];
            }
    }
    if($row1<1 && $row<1){
        ?>
        <script>
        alert('User Id/Email or password not matched!!');
        window.open('login.php','_self');
        </script>
        <?php 
    }
    else{
        $q="SELECT * FROM `student` WHERE `sid`='$userid';";
        $run1=mysqli_query($con,$q);
        $row1=mysqli_num_rows($run1);
        if($row1<1){
            $_SESSION['uid']=$userid;
            header("location:user/form1.php?uid=$userid"); 
        }
        else{
        $q1="SELECT * FROM `student`,`images` WHERE `sid`='$userid' and `sid`=`st_id`;";
        $run2=mysqli_query($con,$q1);
        $row2=mysqli_num_rows($run2);
        if($row2<1){
        $_SESSION['uid']=$userid;
        header("location:user/testimage.php?uid=$userid");
        }
        else{
            $_SESSION['uid']=$userid;
            header("location:user/studentdash.php?uid=$userid");
        }
        }
    }
}

?>