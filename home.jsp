<%@ page import="app.Application" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	<title>Welcome!</title>
	
	<!-- Bootstrap itself -->
	<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="assets/css/font-awesome.css">
	<style type="text/css" media="screen">
	  * { font-family: Verdana, Arial, sans-serif; }
	  a:link { color:#000; text-decoration: none; }
	  a:visited { color:#000; }
	  a:hover { color:#33F; }
	  .button {
	    background: -webkit-linear-gradient(top,#008dfd 0,#0370ea 100%);
	    border: 1px solid #076bd2; border-radius: 3px; color: #fff; display: none; font-size: 13px; font-weight: bold;
	    line-height: 1.3; padding: 8px 25px; text-align: center; text-shadow: 1px 1px 1px #076bd2; letter-spacing: normal;
	  }
	  .center { padding: 10px; text-align: center; }
	  .final { color: black; padding-right: 3px; }
	  .interim { color: gray; }
	  .info { font-size: 14px; text-align: center; color: #777; display: none; }
	  .right { float: right; }
	  .sidebyside { display: inline-block; width: 45%; min-height: 40px; text-align: left; vertical-align: top; }
	  #headline { font-size: 40px; font-weight: 300; }
	  #info { font-size: 20px; text-align: center; color: #777; visibility: hidden; }
	  #results { font-size: 14px; font-weight: bold; border: 1px solid #ddd; padding: 15px; text-align: left; min-height: 100px; }
	  #start_button { border: 0; background-color:transparent; padding: 0; }

		body {
			overflow: show;
			padding: 20px;
		}
	</style>

	
</head>

<body>
	<% Application.logger.info("Request received by home.jsp"); %>
	<h1>Awesome <%= request.getSession(false).getAttribute("uid") %>!</h1>
	<hr/>
	If you are reading this message then this application has successfully routed through multiple JSPs and created a session.
	<br/>
	<img src="cloudcomputing.png"/>
	<br/><br/>
	
	<h1>Speech JS API from Google</h1>
	<hr/>
	<div id="info">
		<p id="info_start">Click on the microphone icon and begin speaking.</p>
		<p id="info_speak_now">Speak now.</p>
		<p id="info_no_speech">No speech was detected. You may need to adjust your <a href="//support.google.com/chrome/bin/answer.py?hl=en&amp;answer=1407892"> microphone settings</a>.</p>
		<p id="info_no_microphone" style="display:none">No microphone was found. Ensure that a microphone is installed and that <a href="//support.google.com/chrome/bin/answer.py?hl=en&amp;answer=1407892">microphone settings</a> are configured correctly.</p>
		<p id="info_allow">Click the "Allow" button above to enable your microphone.</p>
		<p id="info_denied">Permission to use microphone was denied.</p>
		<p id="info_blocked">Permission to use microphone is blocked. To change, go to chrome://settings/contentExceptions#media-stream</p>
		<p id="info_upgrade">Web Speech API is not supported by this browser. Upgrade to <a href="//www.google.com/chrome">Chrome</a> version 25 or later.</p>
	</div>

	<div class="right">
		<button id="start_button"><img id="start_img" src="/mic.gif" alt="Start"></button>
	</div>
	<div id="results">
		<div class="left">
		  <div id="div_language">
		    <select id="select_language" onchange="updateCountry()"></select>&nbsp;&nbsp;
		    <select id="select_dialect"></select>
		  </div>
		</div>
		<span id="final_span" class="final"></span>
		<span id="interim_span" class="interim"></span>
	</div>
	
	<script src="/assets/vendor/jquery-2.1.0.min.js"></script>
	<script src="/speech.js"></script>
	
</body>

</html>
