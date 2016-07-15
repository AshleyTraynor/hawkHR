<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uparrow.aspx.cs" Inherits="menus_horizontal_uparrow_uparrow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script src="jquery.min.js" type="text/javascript"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="description" content="We are providing you fixed layout website templates,responsive website templates with master pages - Live preview available" />
    <meta name="keywords" content="Dotnet templates,Asp.net templates, asp.net website templates, asp.net master page templates, asp.net theme templates,bootstrap templates for asp.net,bootstrap templates for dot net" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Responsive Css Menu</title>
    <!-- Open Graph -->
    <meta property="og:type" content="website templates" />
    <meta property="og:title" content="website templates for asp.net | aspxtemplates.com" />
    <meta property="og:description" content="We are providing you fixed layout website templates,responsive website templates with master pages - Live preview available,bootstrap templates for asp.net,bootstrap templates for dot net" />
    <meta property="og:site_name" content="aspxtemplates" />
    <!-- Css Styles -->
    <link href="../../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../../../assets/css/custom.css" rel="stylesheet" type="text/css" />
    <link href="../../../assets/css/animated.css" rel="stylesheet" type="text/css" />
    <link href="../../../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <!-- Webmaster Tools Site Verification -->
    <meta name="google-site-verification" content="JmOnIWLMcmXajTc-MY458H8r9OSlVKbF_4YzNKShGCQ" />
    <!-- fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"
        rel="stylesheet" type="text/css">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <%--<link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />--%>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar navbar-default navbar-fixed-top bs-docs-nav" role="banner">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a href="./" class="navbar-brand">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/img/logo.png" CssClass="img-responsive">
                        </asp:Image>
                    </a>
                </div>
                <nav class="navbar-collapse bs-navbar-collapse in" role="navigation" style="height: auto;">
          <ul class="nav navbar-nav navbar-right">
           <li>
              <a href="../../../index.aspx">.Net templates</a>
            </li>
            <%--<li class="dropdown active">
              <a href="index.aspx" class="dropdown-toggle" data-toggle="dropdown">.Net templates <b class="caret"></b></a>             
	            <ul class="dropdown-menu">	             
	              <li><a href="#">With Masterpage Templates</a></li>
	              <li><a href="index.aspx">Without Masterpage Templates</a></li>
                  <li class="divider" role="presentation"></li>
                  <li><a href="#">Easy To Use</a></li>
	            </ul>
            </li>--%>
				
            <li>
              <a href="../../../html-templates.aspx">Html templates</a>
            </li>
             <li class="active">
              <a href="../../../responsive-css-menu.aspx">Responsive Menus</a>
            </li>
            <li class="dropdown">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tutorials <b class="caret"></b></a>
	            <ul class="dropdown-menu">
	              <li><a href="../../../photoshop-tutorials.aspx">Photoshop Tutorials</a></li>
	             <%-- <li><a href="../../../illustrator-tutorials.aspx">Illustrator Tutorials</a></li>
	              <li><a href="../../../aftereffects-tutorials.aspx">After Effects Tutorials</a></li>--%>
	             <%-- <li><a href="#">Separated link</a></li>
	              <li><a href="#">One more separated link</a></li>--%>
	            </ul>
	          </li>
            <li>
              <a href="../../../freebies.aspx">Freebies</a>
            </li>
            <li>
              <a href="../../../about.aspx">About</a>
            </li>
          </ul>
        </nav>
            </div>
        </div>
    </div>
    <div class="newcommon">
        <div class="container">
            <div class="row">
                <ul class="breadcrumb">
                    <li><a href="../../../responsive-css-menu.aspx">Responsive Menu</a></li>
                    <li class="active">Menus</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tutorials">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="page-header">
                        <h1>
                            <i class="fa fa-eye i pink"></i><strong>Up Arrow </strong>
                        </h1>
                    </div>
                    <div class="page-span">
                    </div>
                    <div class="gap">
                    </div>
                    <div class="thumbnail">
                        <%-- <div class="con">--%>
                        <div id="blue">
                            <ul>
                                <li><a href="http://www.aspxtemplates.com">Home</a></li>
                                <li><a href="http://www.aspxtemplates.com">Articles</a></li>
                                <li><a href="http://www.aspxtemplates.com" class="active">Gallery</a></li>
                                <li><a href="http://www.aspxtemplates.com">About</a></li>
                                <li><a href="http://www.aspxtemplates.com">Contact</a></li>
                            </ul>
                        </div>
                        <script type="text/javascript">
                            $("#blue").addClass("js").before('<div id="menu">Menu</div>');
                            $("#menu").click(function () {
                                $("#blue").toggle();
                            });
                            $(window).resize(function () {
                                if (window.innerWidth > 768) {
                                    $("#blue").removeAttr("style");
                                }
                            });
                        </script>
                        <div class="gap">
                        </div>
                        <%-------------------------- RED ---------------------%>
                        <div id="red">
                            <ul>
                                <li><a href="http://www.aspxtemplates.com">Home</a></li>
                                <li><a href="http://www.aspxtemplates.com">Articles</a></li>
                                <li><a href="http://www.aspxtemplates.com" class="active">Gallery</a></li>
                                <li><a href="http://www.aspxtemplates.com">About</a></li>
                                <li><a href="http://www.aspxtemplates.com">Contact</a></li>
                            </ul>
                        </div>
                        <script type="text/javascript">
                            $("#red").addClass("re").before('<div id="togglered">Menu</div>');
                            $("#togglered").click(function () {
                                $("#red").toggle();
                            });
                            $(window).resize(function () {
                                if (window.innerWidth > 768) {
                                    $("#red").removeAttr("style");
                                }
                            });
                        </script>
                        <div class="gap">
                        </div>
                        <%-------------------------- green ---------------------%>
                        <div id="green">
                            <ul>
                                <li><a href="http://www.aspxtemplates.com">Home</a></li>
                                <li><a href="http://www.aspxtemplates.com">Articles</a></li>
                                <li><a href="http://www.aspxtemplates.com" class="active">Gallery</a></li>
                                <li><a href="http://www.aspxtemplates.com">About</a></li>
                                <li><a href="http://www.aspxtemplates.com">Contact</a></li>
                            </ul>
                        </div>
                        <script type="text/javascript">
                            $("#green").addClass("gr").before('<div id="togglegreen">Menu</div>');
                            $("#togglegreen").click(function () {
                                $("#green").toggle();
                            });
                            $(window).resize(function () {
                                if (window.innerWidth > 768) {
                                    $("#green").removeAttr("style");
                                }
                            });
                        </script>
                        <div class="gap">
                        </div>
                        <%-------------------------- black ---------------------%>
                        <div id="black">
                            <ul>
                                <li><a href="http://www.aspxtemplates.com">Home</a></li>
                                <li><a href="http://www.aspxtemplates.com">Articles</a></li>
                                <li><a href="http://www.aspxtemplates.com" class="active">Gallery</a></li>
                                <li><a href="http://www.aspxtemplates.com">About</a></li>
                                <li><a href="http://www.aspxtemplates.com">Contact</a></li>
                            </ul>
                        </div>
                        <script type="text/javascript">
                            $("#black").addClass("blc").before('<div id="toggleblack">Menu</div>');
                            $("#toggleblack").click(function () {
                                $("#black").toggle();
                            });
                            $(window).resize(function () {
                                if (window.innerWidth > 768) {
                                    $("#black").removeAttr("style");
                                }
                            });
                        </script>
                        <div class="gap">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
        </div>
    </div>
    <div id="footertop">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <h4>
                        ABOUT</h4>
                    <p>
                        aspxtemplates.com is a place to find the best Bootstrap Templates for your desktop,
                        mobile phone or tablet. We make it easy to discover, share and download High Quality
                        Templates Free.
                    </p>
                </div>
                <%-- <div class="col-md-3">
					<h4>aspxtemplates</h4>
						<ul class="list-unstyled">
							<li><a href="/sell">Sell Your Themes</a></li>
							<li><a href="/affiliate">Affiliates</a></li>
							<li><a href="/about">About Us</a></li>
							<li><a href="/feed">RSS Feed</a></li>
						</ul>
				</div>--%>
                <div class="col-md-2 hidden-xs">
                    <h4>
                        GET In Touch</h4>
                    <ul class="list-unstyled">
                        <li><a href="#"><i class="fa fa-facebook-square"></i>Facebook</a></li>
                        <li><a href="#"><i class="fa fa-twitter-square"></i>Twitter </a></li>
                        <li><a href="#"><i class="fa fa-google-plus-square"></i>Google Plus</a></li>
                        <%--<li><a href="/contact-support">Contact &amp; Support</a></li>--%>
                    </ul>
                </div>
                <div class="col-md-3 hidden-xs">
                    <h4>
                        Resources</h4>
                    <ul class="list-unstyled">
                        <li><a href="https://stocksnap.io" target="_blank">Free Stock Photos</a></li>
                        <%--	<li><a href="/blog">Blog</a></li>--%>
                        <li><a href="/blog/bootstrap-resources/">Resource List</a></li>
                        <li><a href="/blog/category/tutorials/">Tutorials</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <footer id="copyright">
    <div class="container">
    <div class="row">
    <div class="col-md-12">
    <p>©2015-2016 aspxtemplates.com - All Templates are copyright to their respective owners.</p>    
    </div>    
    </div>
    </div>
    </footer>
    <%-- ----------------- Scripts -------------------- --%>
    <%--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"
        type="text/javascript"></script>--%>
    <script src="../../../assets/js/jquery.js" type="text/javascript"></script>
    <script src="../../../assets/js/bootstrap.js" type="text/javascript"></script>
    <script src="../../../assets/js/jquery.textillate.js" type="text/javascript"></script>
    <script src="../../../assets/js/jquery.lettering.js" type="text/javascript"></script>
    <script src="../../../assets/js/jquery.fittext.js" type="text/javascript"></script>
    <script src="../../../assets/js/wow.min.js" type="text/javascript"></script>
    <!-- Navbar -->
    <script type='text/javascript'>
        $(document).ready(function () {
            function toggleNavbarMethod() {
                if ($(window).width() > 768) {
                    $('.navbar .dropdown').on('mouseover', function () {
                        $('.dropdown-toggle', this).trigger('click');
                    }).on('mouseout', function () {
                        $('.dropdown-toggle', this).trigger('click').blur();
                    });
                }
                else {
                    $('.navbar .dropdown').off('mouseover').off('mouseout');
                }
            }
            // toggle navbar hover
            toggleNavbarMethod();

            // bind resize event
            $(window).resize(toggleNavbarMethod);
        });        
    </script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            var offset = 220;
            var duration = 500;
            jQuery(window).scroll(function () {
                if (jQuery(this).scrollTop() > offset) {
                    jQuery('.back-to-top').fadeIn(duration);
                } else {
                    jQuery('.back-to-top').fadeOut(duration);
                }
            });

            jQuery('.back-to-top').click(function (event) {
                event.preventDefault();
                jQuery('html, body').animate({ scrollTop: 0 }, duration);
                return false;
            })
        });
    </script>
    <a href="#" class="back-to-top"><i class="fa fa-long-arrow-up"></i>
        <%--↑--%></a>
    <%--  <script type="text/javascript">
         $( document ).ready(function() {
             $('.tlt3').textillate({
               minDisplayTime: 3000, 
       in: {
           effect: 'fadeInRightBig',
                     delayScale: 2,                                   
                     delay: 50,
                     sync: true,
                     shuffle: true

       },
       out: {
             effect: 'fadeOutLeftBig',             
             shuffle: true,
             sync: true
       },
       loop: true
       });       
     });
    </script>--%>
    <script>
        new WOW().init();
    </script>
    <script type="text/javascript">
         $( document ).ready(function() {
             $('.tlt').textillate({
              minDisplayTime: 1800, 
       in: {
           effect: 'fadeInLeftBig',
                     delayScale: 2,                     
                     delay: 50,                     
                     sync: true,
                     shuffle: true

       },
       out: {
             effect: 'fadeOutRightBig',             
             shuffle: true,
             sync: true
       },
       loop: true
       });
       
     });
    </script>
    <script type="text/javascript">
         $( document ).ready(function() {
             $('.tlt2').textillate({
              minDisplayTime: 1800, 
       in: {
           effect: 'fadeInRightBig',
                     delayScale: 2,                                   
                     delay: 50,
                     sync: true,
                     shuffle: true

       },
       out: {
             effect: 'fadeOutLeftBig',             
             shuffle: true,
             sync: true
       },
       loop: true
       });       
     });
    </script>
    </form>
</body>
</html>
