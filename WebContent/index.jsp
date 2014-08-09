
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head>
  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="styles/styles.css" rel="stylesheet" type="text/css" />

<script>
function modify_value()
{
    //var hidden_field = document.getElementById("firstname").value;
    document.getElementById('h1').value = document.getElementById("firstname").value;
    document.getElementById('h2').value = document.getElementById("lastname").value;
    document.getElementById('h3').value = document.getElementById("emailaddress").value;
    document.getElementById('h4').value = document.getElementById("twitterid").value;
    document.getElementById("myform2").Submit();
}
</script>

</head>

<body>
<div id="container"><!--FORMS CONTAINER-->

<div class="forms" id="left"><!--FORM LEFT-->
<form id="myform" class="cssform" action="">

<p>
<label for="firstname">FIRST NAME: </label>
<input type="text" id="firstname" value="" />
</p>

<p>
<label for="lastname">LAST NAME :</label>
<input type="text" id="lastname" value="" />
</p>

<p>
<label for="email">EMAIL:</label>
<input type="text" id="emailaddress" value="" />
</p>

<p>
<label for="twitterid">TWITTER ID:</label>
<input type="text" id="twitterid" value="" />
</p>
<!-- </form> -->
<p style="margin-top:33px;"><strong><font color="#7e7d78" face="Arial, Helvetica, sans-serif">This is how we ge ahold of you.</font></strong></p>
<p style="width:457px;"><font color="#7e7d78" face="Arial, Helvetica, sans-serif"> I guarantee that your information will not be shared with any third party for any reason. Your information will only be used in relation to this demonstration. </font></p>
</form>
</div>
<!--FORM LEFT-->

<div class="forms" id="right"><!--FORM RIGHT-->
<form id="myform2" class="cssform" action="reg.jsp" method="post">

<p>
<label for="stagename" style="color:#FFFFFF; text-shadow: -1px -1px 1px #000000;">STAGE NAME: </label>
<input type="text" name="sname" id="stagename" value="" />
</p>

<p>
<label for="catchphrase"  style="color:#FFFFFF; text-shadow: -1px -1px 1px #000000;">CATCH PHRASE: </label>
<input type="text" name="cphrase" id="catchphrase" value="" />
</p>

<p>
<label for="minibio"  style="color:#FFFFFF; text-shadow: -1px -1px 1px #000000;">MINI BIO:</label>
<textarea name="minibio" id="comments" rows="5" cols="25"></textarea>
</p>

  <p style="text-align:left; padding-top: 29px; float: left; color: #7e7d78; margin-left: -153px; font-family:Arial, Helvetica, sans-serif;"><strong>This is how you could win. :)   </strong></p>
  <p>&nbsp;</p>
 	
 <!--  hidden Fields. We add these fields here so that the values are accessible when teh reg.jsp is triggered on clicking the submit button-->
 <input type="hidden" name="fname" id="h1" />
 <input type="hidden" name="lname" id="h2" />
 <input type="hidden" name="emailid" id="h3" />
 <input type="hidden" name="tweetid" id="h4" />
 	
  <p>
    <input type="submit" id="submitbutton" value="Upload photo" />
  </p>
  
  <p>
    <!-- <input type="submit" value="Submit" onclick="modify_value();" /> -->
     <input type="submit" id="submitbutton" value="Submit"  onclick="modify_value();"/>       
  </p>
  </form>
  
</div><!--FORM RIGHT-->
<div style="margin-left: 150px;">
</div>

</div>
<p>
  <!--FORMS CONTAINER-->
</p>
<p>&nbsp; </p>
<p>&nbsp; </p>
<p>&nbsp; </p>
<p>&nbsp; </p>
<p>&nbsp; </p>
<p>&nbsp; </p><p>&nbsp; </p>
</body>

</html>

