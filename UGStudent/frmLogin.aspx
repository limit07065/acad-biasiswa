<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="UGStudent_frmLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="stylesheet" href="../Styles/css/font-awesome.min.css">
<link rel="stylesheet" href="../Styles/css/loginnew.css" />
<title>MyUTM Login Page</title>
</head>
<script>
    function check(theForm) {
        if (theForm.username.value == "") {
            alert("Please enter your 'Acid ID (UTM)' ...");
            theForm.username.focus();
            return false;
        }

        if (theForm.password.value == "") {
            alert("Please enter your 'Password' ...");
            theForm.password.focus();
            return false;
        }

        theForm.password.value = mdmok(theForm.password.value)
        return true;
    }
</script>
<body>
    <div class="container">
    	<div class="header">
            <img ID="Image1" src="../Styles/images/utm-logonew.png" Class="center" />
        </div>
        <section class="main">
          <form name="form" method="post" action="https://sso.utm.my/login?" class="form" onSubmit="return check(this)">
		    <p class="field">
				<input type="text" name="username" placeholder="Acid ID (UTM)" class="field">
				<i class="fa fa-user fa-lg"></i>
		    </p>
		    <p class="field">
				<input type="password" name="password" placeholder="Password" TextMode="Password" class="field">
				<i class="fa fa-lock fa-lg"></i>
		    </p>
		    <p class="submit">
			<button id="button" type="submit" name="submit" onserverclick="btnSubmit_Click"
			    validationgroup="login">
			    <i class="fa fa-arrow-right fa-lg"></i>
			</button>
		    </p>
		    <input type="hidden" name="auto" value="true" />
		    <input type="hidden" name="service" value="https://my.utm.my/iportal.php" />
		    <table width="100%" style="margin-top: 10px">
			<tr>
			    <td style="text-align: left;" class="register"><a href="http://acid.utm.my">Help Desk</a></td>
			    <td style="text-align: right;" class="register"><a ID="lblMsg" href="howtologin.pdf">How to login</a></td>
			</tr>
		    </table>
          </form>
        </section>
        <div class="footer">&#169; 2016 Universiti Teknologi Malaysia - All Right Reserved.
	<!-- Start of StatCounter Code for Default Guide -->
	<script type="text/javascript">
	    var sc_project = 11021922;
	    var sc_invisible = 0;
	    var sc_security = "673bd8a3";
	    var scJsHost = (("https:" == document.location.protocol) ? "https://secure." : "http://www.");
	    document.write("<sc" + "ript type='text/javascript' src='" + scJsHost + "statcounter.com/counter/counter.js'></" + "script>");
	</script>
	<noscript>
		<div class="statcounter">
			<a title="hits counter" 
			href="http://statcounter.com/free-hit-counter/" 
			target="_blank"><img class="statcounter" src="http://c.statcounter.com/11021922/0/673bd8a3/0/" alt="hits counter"></a>
		</div>
	</noscript>
	<!-- End of StatCounter Code for Default Guide -->
	</div>
    </div>
 </body>
 </html>
