<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>Golden Educations | visa,
immigration,
air ticket
tour packages,
australia immigration,
study in canada,
immigration to australia,
immigration consultant,
australia student visa,
immigration forms,
new zealand student visa,
immigrant visa,
visa for australia,
australia pr,
student visa for australia,
migration to australia,
american immigration,
uk student visa,
student visa,
australia immigration consultants,
australia pr visa,
immigration process,
spouse visa,
new zealand study visa,
australian visa application,
australia study visa,
visa immigration,
australian immigration process,
uk study visa,
pr in australia,
immigration australia,
immigration website,
study visa,
work visa,
immigration information,
australia skilled immigration,
australia permanent residency,
australian visa application form,
study visa for australia,
canada study,
student visa australia,
investor visa,
apply for australian visa,
puerto rico visa,
working visa australia,
tourist visa australia,
visitor visa,
australia migration,
apply for australian pr,
skilled immigration to australia,
australian immigration points,
australian immigration official website,
work and study in australia,
study in australia for international students,
permanent resident,
visa requirements,
immigration agent,
working holiday visa,
australia work permit,
visa application for australia,
non immigrant visa,
immigration australia permanent residency,
immigration application,
dual citizenship,
study visa australia,
business immigration,
family visa,
permanent residence,
permanent visa australia,
f1 visa,
temporary work visa australia,
immigration for australia,
australia pr application,
marriage for green card,
immigration online,
visa application australia,
immigration and customs enforcement,
immigration rules,
permanent residence in australia,
student visa in australia,
immigration australia points,
immigration requirements,
australia immigration visa,
immigration in australia,
permanent resident visa,
immigration solutions,
immigration department,
permanent residency australia,
emigrating to australia,
skilled immigration australia,
permanent resident visa australia,
marriage green card,
emigrate to australia,
australian permanent residency visa,
family immigration,
australian residency,
immigration work visa,
australian immigration lawyers,
student visa to australia,
immigration of australia</title>
    <!-- Stylesheets -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/revolution-slider.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
    <link rel="shortcut icon" type="image/x-icon" href="images/1475600421.ico">
    <link href="css/owl.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/responsiveslides.css" rel="stylesheet" />
    <meta name="Keywords" content="visa,
immigration,
air ticket
tour packages,
australia immigration,
study in canada,
immigration to australia,
immigration consultant,
australia student visa,
immigration forms,
new zealand student visa,
immigrant visa,
visa for australia,
australia pr,
student visa for australia,
migration to australia,
american immigration,
uk student visa,
student visa,
australia immigration consultants,
australia pr visa,
immigration process,
spouse visa,
new zealand study visa,
australian visa application,
australia study visa,
visa immigration,
australian immigration process,
uk study visa,
pr in australia,
immigration australia,
immigration website,
study visa,
work visa,
immigration information,
australia skilled immigration,
australia permanent residency,
australian visa application form,
study visa for australia,
canada study,
student visa australia,
investor visa,
apply for australian visa,
puerto rico visa,
working visa australia,
tourist visa australia,
visitor visa,
australia migration,
apply for australian pr,
skilled immigration to australia,
australian immigration points,
australian immigration official website,
work and study in australia,
study in australia for international students,
permanent resident,
visa requirements,
immigration agent,
working holiday visa,
australia work permit,
visa application for australia,
non immigrant visa,
immigration australia permanent residency,
immigration application,
dual citizenship,
study visa australia,
business immigration,
family visa,
permanent residence,
permanent visa australia,
f1 visa,
temporary work visa australia,
immigration for australia,
australia pr application,
marriage for green card,
immigration online,
visa application australia,
immigration and customs enforcement,
immigration rules,
permanent residence in australia,
student visa in australia,
immigration australia points,
immigration requirements,
australia immigration visa,
immigration in australia,
permanent resident visa,
immigration solutions,
immigration department,
permanent residency australia,
emigrating to australia,
skilled immigration australia,
permanent resident visa australia,
marriage green card,
emigrate to australia,
australian permanent residency visa,
family immigration,
australian residency,
immigration work visa,
australian immigration lawyers,
student visa to australia,
immigration of australia" />

</head>

<body>
    <form runat="server">
        <div class="page-wrapper">

            <!-- Preloader -->


            <!-- Main Header -->
            <header class="main-header">
                <!-- Header Top -->
                <div class="header-top">
                    <div class="auto-container clearfix">
                        <!-- Top Left -->
                        <div class="top-left col-sm-3">
                            <ul class="clearfix">
                                <li><a href="#">Welcome to Golden Educations</a></li>
                            </ul>
                        </div>

                        <!-- Top Right -->
                        <div class="top-right col-sm-9">
                            <div class='marquee'>
                                <asp:ListView ID="lvnews" runat="server">
                                    <ItemTemplate>
                                        <a href="Full-News.aspx?id=<%#Eval("Id") %>"><%#Eval("Name") %></a> &nbsp | &nbsp
                                    </ItemTemplate>
                                </asp:ListView>


                            </div>
                        </div>

                    </div>
                </div>
                <!-- Header Top End -->

                <!--Header-Upper-->
                <div class="header-upper">
                    <div class="auto-container">
                        <div class="clearfix">

                            <div class="pull-left logo-outer">
                                <div class="logo" style="padding-top: 25px">
                                    <a href="Default.aspx">
                                        <img src="images/logo.png" alt="" title="Golden"></a>
                                </div>
                            </div>

                            <div class="pull-right upper-right clearfix">

                                <!--Info Box-->
                                <div class="upper-column info-box">
                                    <div class="icon-box"><span class="flaticon-telephone"></span></div>
                                    <ul>
                                        <li><strong>Contact us</strong></li>
                                        <li><a href="#"><%=mobno %><%-- 9592101305--%></a></li>
                                    </ul>
                                </div>

                                <!--Info Box-->
                                <div class="upper-column info-box">
                                    <div class="icon-box"><span class="flaticon-location-1"></span></div>
                                    <ul>
                                        <li><strong>Our Address</strong></li>
                                        <li><%=address %><%--SCO 24 , Bhagat Singh Market Moga--%></li>
                                    </ul>
                                </div>

                                <!--Info Box-->




                            </div>

                        </div>
                    </div>
                </div>

                <!--Header-Lower-->
                <div class="header-lower">
                    <div class="auto-container">
                        <div class="nav-outer clearfix">
                            <!-- Main Menu -->
                            <nav class="main-menu">
                                <div class="navbar-header">
                                    <!-- Toggle Button -->
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>

                                <div class="navbar-collapse collapse clearfix">
                                    <ul class="navigation clearfix">
                                        <li><a href="Default.aspx">Home</a>
                                            <!--<ul>
                                        <li><a href="index.html">Homepage One</a></li>
                                        <li><a href="index-2.html">Homepage Two</a></li>
                                        <li><a href="index-3.html">Homepage Three</a></li>
                                    </ul>-->
                                        </li>
                                        <li class="dropdown"><a href="About-Us.aspx">About us</a>
                                            <ul>
                                                <li><a href="WhoWeAre.aspx">Who We Are</a></li>
                                                <li><a href="Mission.aspx">Our Mission</a></li>
                                                <li><a href="Vision.aspx">Our Vision</a></li>

                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="Study-Abroad.aspx">Study Abroad</a>
                                            <ul>
                                                <asp:ListView ID="ListedService" runat="server"
                                                    OnItemCommand="ListedService_ItemCommand">
                                                    <ItemTemplate>
                                                        <li>
                                                            <asp:Label ID="mainService" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
                                                            <asp:LinkButton ID="LinkButton2" CommandName="main" CommandArgument='<%#Eval("id") %>' runat="server"><span style="margin-left: 10px;"><%#Eval("Name")%></span></asp:LinkButton>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:ListView>
                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="#">Services</a>
                                            <ul>
                                                <asp:ListView ID="lvss" runat="server" OnItemCommand="lvss_ItemCommand">
                                                    <ItemTemplate>
                                                        <li>
                                                            <asp:Label ID="lnkss" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
                                                            <asp:LinkButton ID="LinkButton2" CommandName="main" CommandArgument='<%#Eval("id") %>' runat="server"><span style="margin-left: 10px;"><%#Eval("Name")%></span></asp:LinkButton>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:ListView>
                                            </ul>
                                        </li>

                                        <li class="dropdown"><a href="#">Migration</a>
                                            <ul>
                                                <asp:ListView ID="lvmastercat" runat="server" OnItemDataBound="lvmastercat_ItemDataBound">
                                                    <ItemTemplate>
                                                        <li class="dropdown">

                                                            <asp:LinkButton ID="lnkmigration" runat="server" Text='<%#Eval("Country") %>'></asp:LinkButton>
                                                            <ul>
                                                                <asp:ListView ID="lvsab" runat="server" OnItemCommand="lvsab_ItemCommand">
                                                                    <ItemTemplate>
                                                                        <li>
                                                                            <asp:Label ID="lblid" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
                                                                            <asp:LinkButton ID="LinkButton2" CommandName="main" CommandArgument='<%#Eval("id") %>' runat="server"><span style="margin-left: 10px;"><%#Eval("Name")%></span></asp:LinkButton>
                                                                        </li>
                                                                    </ItemTemplate>
                                                                </asp:ListView>


                                                            </ul>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:ListView>


                                            </ul>
                                        </li>

                                        <li class="dropdown"><a href="#">Gallery</a>
                                            <ul>
                                                <li><a href="Album.aspx">Gallery</a></li>


                                            </ul>
                                        </li>

                                        <li><a href="Blog.aspx">Blog</a>

                                        </li>
                                        <li class="dropdown"><a href="Contact-Us.aspx">Contact Us</a>

                                        </li>
                                        <%--<li style="float:right" >
                                    <span>Office Helpline</span>
                                    <a href="tel:0163504257" style="padding:0px">01636504257</a>
                                  
                                </li>--%>
                                    </ul>
                                </div>
                            </nav>
                            <!-- Main Menu End-->



                        </div>
                    </div>
                </div>


                <!--Bounce In Header-->
                <div class="bounce-in-header">
                    <div class="auto-container clearfix">
                        <!--Logo-->
                        <div class="logo pull-left">
                            <h3 class="logo-text">Golden<span class="theme_color">Educations</span></h3>
                        </div>

                        <!--Right Col-->
                        <div class="right-col pull-right">
                            <!-- Main Menu -->
                            <nav class="main-menu">
                                <div class="navbar-header">
                                    <!-- Toggle Button -->
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>

                                <div class="navbar-collapse collapse clearfix">
                                    <ul class="navigation clearfix">
                                        <li><a href="Default.aspx">Home</a>
                                            <!--<ul>
                                        <li><a href="index.html">Homepage One</a></li>
                                        <li><a href="index-2.html">Homepage Two</a></li>
                                        <li><a href="index-3.html">Homepage Three</a></li>
                                    </ul>-->
                                        </li>
                                        <li class="dropdown"><a href="About-Us.aspx">About us</a>
                                            <ul>
                                                <li><a href="WhoWeAre.aspx">Who We Are</a></li>
                                                <li><a href="Mission.aspx">Our Mission</a></li>
                                                <li><a href="Vision.aspx">Our Vision</a></li>

                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="Study-Abroad.aspx">Study Abroad</a>
                                            <ul>
                                                <asp:ListView ID="ServiceList" runat="server"
                                                    OnItemCommand="ServiceList_ItemCommand">
                                                    <ItemTemplate>
                                                        <li>
                                                            <asp:Label ID="mainService" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
                                                            <asp:LinkButton ID="LinkButton2" CommandName="main" CommandArgument='<%#Eval("id") %>' runat="server"><span style="margin-left: 10px;"><%#Eval("Name")%></span></asp:LinkButton>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:ListView>

                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="#">Services</a>
                                            <ul>
                                                <asp:ListView ID="lvss2" runat="server" OnItemCommand="lvss_ItemCommand">
                                                    <ItemTemplate>
                                                        <li>
                                                            <asp:Label ID="lnkss" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
                                                            <asp:LinkButton ID="LinkButton2" CommandName="main" CommandArgument='<%#Eval("id") %>' runat="server"><span style="margin-left: 10px;"><%#Eval("Name")%></span></asp:LinkButton>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:ListView>
                                            </ul>
                                        </li>

                                        <li class="dropdown"><a href="#">Migration</a>
                                            <ul>
                                                <asp:ListView ID="ListView1" runat="server" OnItemDataBound="lvmastercat_ItemDataBound">
                                                    <ItemTemplate>
                                                        <li class="dropdown">

                                                            <asp:LinkButton ID="lnkmigration" runat="server" Text='<%#Eval("Country") %>'></asp:LinkButton>
                                                            <ul>
                                                                <asp:ListView ID="lvsab" runat="server" OnItemCommand="lvsab_ItemCommand">
                                                                    <ItemTemplate>
                                                                        <li>
                                                                            <asp:Label ID="lblid" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
                                                                            <asp:LinkButton ID="LinkButton2" CommandName="main" CommandArgument='<%#Eval("id") %>' runat="server"><span style="margin-left: 10px;"><%#Eval("Name")%></span></asp:LinkButton>
                                                                        </li>
                                                                    </ItemTemplate>
                                                                </asp:ListView>


                                                            </ul>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:ListView>


                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="#">Gallery</a>
                                            <ul>
                                                <li><a href="Album.aspx">Gallery</a></li>


                                            </ul>
                                        </li>

                                        <li><a href="Blog.aspx">Blog</a>

                                        </li>
                                        <li class="dropdown"><a href="Contact-Us.aspx">Contact Us</a>

                                        </li>
                                    </ul>
                                </div>
                            </nav>
                            <!-- Main Menu End-->
                        </div>

                    </div>
                </div>

            </header>
            <!--End Main Header -->


            <!--Main Slider-->
            <section class="main-slider revolution-slider">

                <div class="tp-banner-container">
                    <div class="tp-banner">
                        <ul>
                            <asp:ListView ID="ListSlider" runat="server">
                                <ItemTemplate>

                                    <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="uploadimage/<%#Eval("Image") %>" data-saveperformance="off">
                                        <img src="uploadimage/<%#Eval("Image") %>" alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" style="height: 450px !important">


                                        <%--  <div class="tp-caption sfl sfb tp-resizeme"
                    data-x="left" data-hoffset="15"
                    data-y="center" data-voffset="-100"
                    data-speed="1500"
                    data-start="500"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"
                    style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;"><h3 class="italic-heading">Welcome to ConsultPro</h3></div>
                    
                    <div class="tp-caption sfr sfb tp-resizeme"
                    data-x="left" data-hoffset="15"
                    data-y="center" data-voffset="0"
                    data-speed="1500"
                    data-start="1000"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"
                    style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;"><h1>Helping your business <br>build and grow</h1></div>
                    
                    <div class="tp-caption sfl sfb tp-resizeme"
                    data-x="left" data-hoffset="15"
                    data-y="center" data-voffset="110"
                    data-speed="1500"
                    data-start="1500"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"
                    style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;"><a href="#" class="theme-btn btn-style-one">Get in touch</a></div>--%>

                                    </li>
                                </ItemTemplate>
                            </asp:ListView>

                            <%-- <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="images/main-slider/2.jpg"  data-saveperformance="off"  data-title="Awesome Title Here">
                    <img src="images/demo/banner2.jpg" alt=""  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat"> 
                    
                    
                    <div class="tp-caption sfl sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="-90"
                    data-speed="1500"
                    data-start="500"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"
                    style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;"><h1>Building a Better Business</h1></div>
                    
                    <div class="tp-caption sfr sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="-10"
                    data-speed="1500"
                    data-start="1000"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"
                    style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;"><div class="text text-center">So join us here each week my friends you're sure <br>to smile from seven stranded</div></div>
                    
                    <div class="tp-caption sfr sfb tp-resizeme"
                    data-x="center" data-hoffset="-90"
                    data-y="center" data-voffset="80"
                    data-speed="1500"
                    data-start="1500"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"
                    style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;"><a href="#" class="theme-btn btn-style-one">Get in touch</a></div>
                    
                    <div class="tp-caption sfl sfb tp-resizeme"
                    data-x="center" data-hoffset="90"
                    data-y="center" data-voffset="80"
                    data-speed="1500"
                    data-start="1500"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"
                    style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;"><a href="#" class="theme-btn btn-style-two">purchase now</a></div>
                    
                    </li>--%>
                        </ul>

                        <div class="tp-bannertimer"></div>
                    </div>
                </div>
            </section>


            <!--Features Style One-->
            <section class="intro-style-one extended">
                <div class="auto-container">
                    <div class="row clearfix">

                        <!--Featured Style One -->
                        <div class="column bigger-column col-lg-4 col-md-12 col-sm-12 col-xs-12">
                            <div class="inner wow fadeInDown" data-wow-delay="0ms" data-wow-duration="1500ms">
                                <h3>Welcome to<br />
                                    <span class="theme_color" style="font-weight: bold; font-size: 32px;">Golden Educations</span></h3>
                                <div class="text"><%=desc %></div>
                                <%--   <a href="#" class="read-more">view all services <span class="fa fa-angle-right"></span></a>--%>
                            </div>
                        </div>

                        <div class="col-lg-8 col-md-12 col-xs-12">
                            <div class="row clearfix">
                                <!--Featured Style One -->
                                <asp:ListView ID="ListService" runat="server"
                                    OnItemCommand="ListService_ItemCommand"
                                    OnItemDataBound="ListService_ItemDataBound">
                                    <ItemTemplate>
                                        <div class="col-md-4">
                                            <div class="card">
                                                <img class="card-img-top img-responsive" src="uploadimage/<%#Eval("thumb") %>" alt="<%#Eval("Name") %>">
                                                <div class="card-body">
                                                    <h5 class="card-title"><%#Eval("Name") %></h5>
                                                    <div style="overflow: hidden; height: 138px;">
                                                        <%#Eval("Description") %>
                                                    </div>

                                                    <asp:LinkButton ID="lnkmore" ToolTip="Read More" runat="server" CommandArgument='<%#Eval ("id")%>' CommandName="more" class="btn btn-primary">
                                           Read More <span class="icon-right fa fa-angle-right"></span></asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>

                                    </ItemTemplate>
                                </asp:ListView>


                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!--Services Style One-->
            <section class="intro-style-two" style="background-image: url(http://world5.commonsupport.com/html/consultant-pro/images/background/image-4.jpg);">
                <div class="auto-container">
                    <div class="col-6">
                        <h2><%=front %></h2>
                        <p><%=frontdesc %></p>
                        <a href="Contact-Us.aspx" class="theme-btn btn-style-four">Contact Us</a>
                    </div>
                </div>
            </section>
            <section class="blog-news-section latest-news">
                <div class="auto-container">

                    <div class="sec-title text-center">
                        <h2>Countries We Deals</h2>
                        <h3>Check For Recent Updates</h3>
                    </div>
                    <div class="row clearfix">

                        <!--News Column-->
                        <asp:ListView ID="lvabroad" runat="server" OnItemCommand="lvabroad_ItemCommand">
                            <ItemTemplate>
                                <div class="column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                    <article class="inner-box wow fadeInUp animated card" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInUp;">
                                        <figure class="image-box">
                                            <a href="#">
                                                <img src="uploadimage/<%#Eval("thumb") %>" alt=""></a>

                                        </figure>
                                        <div class="content-box card-body">
                                            <h3><a href="#"><%#Eval("name") %></a></h3>
                                            <div style="overflow: hidden; height: 138px;">
                                                <%#Eval("Description") %>
                                            </div>
                                            <asp:LinkButton ID="lnkmore" ToolTip="Read More" runat="server" CommandArgument='<%#Eval ("id")%>' CommandName="more" class="btn btn-primary">
                                           Read More <span class="icon-right fa fa-angle-right"></span></asp:LinkButton>
                                        </div>
                                    </article>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>







                    </div>
                    <div class="col-md-12 text-center">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-lg" OnClick="LinkButton1_Click">View More</asp:LinkButton>
                    </div>
                </div>
            </section>

            <!--Default Section-->
            <section class="default-section" style='background: rgb(230, 230, 230) none repeat scroll 0% 0%; background-image: url("../images/counter.png"); background-size: cover; background-color: #00000087; background-blend-mode: multiply; background-attachment: fixed;'>
                <div class="auto-container">
                    <div class="row clearfix">

                        <!--Text Column-->
                        <%--<div class="column text-column col-md-6 col-sm-12 col-xs-12">
                	<div class="inner-box padd-right-50">
                    	<h2><%=head %></h2>
                        <div class="text">
                        	<p><%=detail %></p>
                        </div>
                    </div>
                </div>--%>

                        <!--Counter Column-->
                        <div class="column no-margin-bottom counter col-md-12 col-sm-12 col-xs-12">
                            <div class="fact-counter">
                                <div class="row clearfix">

                                    <!--Counter Column-->
                                    <article class="col-md-3 col-sm-6 col-xs-12 counter-column wow fadeIn" data-wow-duration="0ms">
                                        <div class="count-outer"><span class="count-text" data-speed="1500" data-stop='<%=visa %>'>0</span>+</div>
                                        <div class="text">Study Visa</div>
                                    </article>

                                    <!--Counter Column-->
                                    <article class="col-md-3 col-sm-6 col-xs-12 counter-column wow fadeIn" data-wow-duration="0ms">
                                        <div class="count-outer"><span class="count-text" data-speed="1500" data-stop='<%=air %>'>0</span>+</div>
                                        <div class="text">Air Tickets</div>
                                    </article>

                                    <!--Counter Column-->
                                    <article class="col-md-3 col-sm-6 col-xs-12 counter-column wow fadeIn" data-wow-duration="0ms">
                                        <div class="count-outer"><span class="count-text" data-speed="1500" data-stop='<%=Happy %>'>0</span>+</div>
                                        <div class="text">Happy Clients</div>
                                    </article>

                                    <!--Counter Column-->
                                    <article class="col-md-3 col-sm-6 col-xs-12 counter-column wow fadeIn" data-wow-duration="0ms">
                                        <div class="count-outer"><span class="count-text" data-speed="1500" data-stop='<%=pr %>'>0</span>+</div>
                                        <div class="text">PR Visa</div>
                                    </article>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <!--Two Column Fluid-->


            <section class="testimonials-area">
                <div class="auto-container clearfix">
                    <div class="col-md-8">
                        <!--Section Title-->
                        <div class="sec-title text-center">
                            <h2>Feedback From Our Clients</h2>
                            <h3>Words from our trusted clients</h3>
                        </div>

                        <!--Slider-->
                        <ul class="slider">

                            <asp:ListView ID="ListTest" runat="server">
                                <ItemTemplate>
                                    <li class="slide-item">
                                        <div class="slide-text">
                                            <asp:Label ID="lbltdes" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                                        </div>
                                        <div class="testi-pager clearfix" id="testi-pager">

                                            <%-- <a href="#" class="pager-item active" data-slide-index="">--%>
                                            <div class="testi-thumb">
                                                <img class="img-circle" src="uploadimage/<%#Eval("Image") %>" alt="" title="" />
                                            </div>
                                            <strong>
                                                <asp:Label ID="lbltname" runat="server" Text='<%#Eval("Name") %>'></asp:Label></strong>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:ListView>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <div class="sec-title text-center">
                            <h2>Recent Achievers</h2>

                        </div>
                        <ul class="rslides">
                             
                            <asp:ListView ID="Listachiever" runat="server">
                                <ItemTemplate>
                                   <li>
                                     <img src="uploadimage/<%#Eval("Image") %>" alt="" class="img-responsive">
                                       </li>
                                </ItemTemplate>
                            </asp:ListView>

                               
                          <%--  <li>
                                <img src="images/achiever/achiever6.png" alt=""></li>
                            <li>
                                <img src="images/achiever/achieveraustralia.jpg" alt="">
                            </li>
                            <li>
                                <img src="images/achiever/achieverdhuri.png" alt="">
                            </li>--%>
                        </ul>
                    </div>
                </div>

            </section>
            <!--Recent Projects -->
            <section class="projects-section" style='background: rgb(230, 230, 230) none repeat scroll 0% 0%; display: none'>
                <div class="auto-container">

                    <div class="sec-title text-center">
                        <h2>Our Sucessfull Visa</h2>
                        <h3>Explore our latest works</h3>
                    </div>

                    <div class="projects-gallery">
                        <div class="items-outer clearfix">
                            <asp:ListView ID="ListVisa" runat="server">
                                <ItemTemplate>
                                    <!--Project Item-->
                                    <article class="default-project-item col-md-4 col-sm-6 col-xs-12">
                                        <div class="inner-box">
                                            <figure class="image-box">
                                                <img class="img-responsive" src="uploadimage/<%#Eval("Image") %>" alt="">
                                            </figure>
                                            <div class="overlay-box">
                                                <div class="title-box">
                                                    <h3>
                                                        <asp:Label ID="lblvname" runat="server" Text='<%#Eval("Name") %>'></asp:Label><%--<a href="#">Rise Of Business</a>--%></h3>
                                                    <%-- <div class="text">Finance, Insurance</div>--%>
                                                </div>
                                                <%-- <div class="options">
                                    <a class="link lightbox-image" href="images/resource/project-image-1.jpg" title="Caption Here"><span class="fa fa-search"></span></a>
                                    <a class="link link-box" href="#"><span class="fa fa-link"></span></a>
                                </div>--%>
                                            </div>
                                        </div>
                                    </article>
                                </ItemTemplate>
                            </asp:ListView>


                        </div>
                    </div>



                </div>
            </section>


            <!--Testimonials-->



            <!--Request Quote Section-->
            <section class="request-quote-section">
                <div class="auto-container">

                    <!--Sponsors Outer-->
                    <div class="sponsors-outer">
                        <!--Sponsors Carousel-->
                        <ul class="sponsors-carousel">
                            <asp:ListView ID="lvlogo" runat="server">
                                <ItemTemplate>
                                    <li class="slide-item">
                                        <figure class="image-box">
                                            <a href="#">
                                                <img src="uploadimage/<%#Eval("Image") %>" alt=""></a>
                                        </figure>
                                    </li>
                                </ItemTemplate>
                            </asp:ListView>


                            <%--<li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/3.jpg" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/4.jpg" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/5.jpg" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/6.jpg" alt=""></a></figure></li>--%>
                        </ul>
                    </div>


                </div>
            </section>


            <!--Blog News Section-->


            <!--Main Footer-->
            <footer class="main-footer">

                <!--Footer Upper-->
                <div class="footer-upper">
                    <div class="auto-container">
                        <div class="row clearfix">

                            <!--Two 4th column-->
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="row clearfix">
                                    <div class="col-lg-6 col-sm-6 col-xs-12 column">
                                        <div class="footer-widget about-widget">
                                            <img src="images/logo2.png" class="img-responsive" />
                                            <div class="text margin-bott-30">
                                                <p><%=about %></p>
                                            </div>

                                            <div class="social-links">
                                                 <a href="https://www.facebook.com/goldeneducationsmoga/"><span class="fa fa-facebook-f"></span></a>
                                                <a href="#"><span class="fa fa-twitter"></span></a>
                                                <a href="#"><span class="fa fa-google-plus"></span></a>
                                                <a href="#"><span class="fa fa-skype"></span></a>
                                            </div>

                                        </div>
                                    </div>

                                    <!--Footer Column-->
                                    <div class="col-lg-6 col-sm-6 col-xs-12 column">
                                        <div class="footer-widget contact-widget">
                                            <h3>Contact Us</h3>
                                            <ul class="contact-info">
                                                <li>
                                                    <h4>Address</h4>
                                                    <p><%=address %></p>
                                                </li>
                                                <li>
                                                    <h4>Email Us</h4>
                                                    <p><a href="mailto:Info@goldeneducations.Com"><%=email %></a>
                                                        <br />
                                                    </p>
                                                </li>
                                                <li>
                                                    <h4>Call Us</h4>
                                                    <p>(+91)<%=mobno %>
                                                        <br>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Two 4th column End-->

                            <!--Two 4th column-->
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="row clearfix">
                                    <!--Footer Column-->
                                    <div class="col-lg-6 col-sm-6 col-xs-12 column">
                                        <div class="footer-widget links-widget">
                                            <h3>Quick Links</h3>
                                            <div class="row clearfix">

                                             <%--   <div class="col-lg-6 col-sm-6 col-xs-12">--%>
                                                    <ul>
                                                        <li><a href="Default.aspx">Home</a></li>
                                                        <li><a href="About-Us.aspx">About Us</a></li>
                                                        <%-- <li><a href="Service.aspx">Services</a></li>--%>
                                                        <li><a href="Study-Abroad.aspx">Study Abroad</a></li>
                                                        <li><a href="Blog.aspx">Blog</a></li>
                                                        <li><a href="Terms-Conditions.aspx">Terms &amp; condition</a></li>
                                                        <%--   <li><a href="#">FAQ</a></li>
                                                <li><a href="#">Our Team</a></li>--%>
                                                        <li><a href="Contact-Us.aspx">Contact</a></li>
                                                    </ul>
                                                <%--</div>--%>



                                            </div>

                                        </div>
                                    </div>

                                    <!--Footer Column-->
                                    <div class="col-lg-6 col-sm-6 col-xs-12 column">
                                        <div class="footer-widget newsletter-widget">
                                            <h3>Subscribe Us</h3>

                                            <div class="newsletter-form">
                                                <div class="text padd-bott-20">
                                                    <p>Signup for our mailing list to get latest updates and news.</p>
                                                </div>
                                                <section method="post" action="">
                                                    <div class="form-group">
                                                        <input type="email" name="useremail" value="" placeholder="Email address" required>
                                                        <button type="submit" class="theme-btn btn-submit"><span class="fa fa-envelope-o"></span></button>
                                                    </div>
                                                    <div class="confid"><em>Your mail id is Confidential</em></div>
                                                </section>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Two 4th column End-->

                        </div>

                    </div>
                </div>

                <!--Footer Bottom-->
                <div class="footer-bottom">
                    <div class="auto-container">
                        <div class="row clearfix">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="copyright-text">&copy; 2016 All Rights Reserved |Created By: <a href="http://officialsolutions.in/">Official Solutions</a></div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <!--Bottom Nav-->
                                <nav class="footer-nav clearfix">
                                    <ul class="pull-right clearfix">
                                        <li><a href="Default.aspx">Home</a></li>
                                        <li><a href="About-Us.aspx">About</a></li>
                                        <li><a href="Study-Abroad.aspx">Study Abroad</a></li>
                                        <li><a href="Blog.aspx">Blog</a></li>
                                        <li><a href="Terms-Conditions.aspx">Terms &amp; condition</a></li>

                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

            </footer>


        </div>
        <!--End pagewrapper-->
    </form>
    <!--Scroll to top-->
    <div class="scroll-to-top scroll-to-target" data-target=".main-header"><span class="txt">GE</span></div>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/js/bootstrap.min.js"></script>
    <script src="js/revolution.min.js"></script>
    <script src="js/jquery.fancybox.pack.js"></script>
    <script src="js/bxslider.js"></script>
    <script src="js/owl.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/script.js"></script>
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/pause.js"></script>
    <script src="js/marquee.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.marquee').marquee({
                duration: 10000,
                duplicated: true,
                gap: 00,
                direction: 'left',
                pauseOnHover: true
            });
        });
    </script>
    <script src="css/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $(".rslides").responsiveSlides();
        });
    </script>
</body>

</html>
