<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="TangailBarAssociationV2.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TANGAIL BAR ASSOCIATION</title>
    <link rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="owl-carousel/owl.theme.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <!-- <link href="css/bootstrap.css" rel="stylesheet" /> -->
    <link href="css/style.css" rel="stylesheet" />

    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/modernizr.js"></script>
    <script type="text/javascript" src="js/responsee.js"></script>

    <script type="text/javascript" src="js/jquery-1.12.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>

    <!--[if lt IE 9]>
	      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
      <![endif]-->
</head>
<form id="form1" runat="server">
    <body class="size-1140">
        <!-- HEADER -->
        <header>
            <div class="line">
                <div class="box">
                    <div class="s-6 l-2">
                        <img src="img/banner.jpg">
                        
                    </div>
                    <%--<div class="s-12 l-8 right">
                        <div class="headingWrite">
                            <h6>TANGAIL BAR</h6>
                        <h6>ASSOCIATION</h6>
                        </div>
                    </div>--%>
                </div>
            </div>
            <!-- TOP NAV -->
            <div class="line">
                <nav>
                    <p class="nav-text">Custom menu text</p>
                    <div class="top-nav s-12 l-10">
                        <ul>
                            <li><a href="home.aspx">Home</a></li>
                            <li>
                                <a>About us</a>
                                <ul>
                                    <li><a>History</a></li>
                                    <li><a href="Constitution/THE-CONSTITUTION.pdf">Constitution</a></li>
                                    <li><a>Activities</a></li>
                                    <li><a>Eminent Lawyer</a></li>
                                    <li>
                                        <a>Message</a>
                                        <ul>
                                            <li><a>DBA President</a></li>
                                            <li><a>DBA Secretary</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a>Committee</a>
                                <%--<ul>
                                    <li><a>Present Executive Committee</a></li>
                                    <li>
                                        <a>Formal Executive Committee</a>
                                        <ul>
                                            <li><a>2015-16</a></li>
                                            <li><a>2014-15</a></li>
                                            <li><a>2013-14</a></li>
                                            <li><a>2012-13</a></li>
                                        </ul>
                                    </li>
                                </ul>--%>
                            </li>

                            <li>
                                <a>Membership</a>
                                <ul>
                                    <li><a href="Members.aspx">Member of TBA</a></li>
                                    <li><a>Membership form</a></li>
                                </ul>
                            </li>

                            <li>
                                <a>Library</a>
                                <ul>
                                    <li><a href="LibraryBookInformation.aspx">Books Information</a></li>
                                    <li><a>Doner Information</a></li>
                                </ul>
                            </li>

                            <%--<li><a>News & Event</a></li>--%>

                            <li><a href="Gallery.aspx">Gallery</a></li>

                            <li><a>Contact</a></li>

                            <li><a href="Login.aspx">Login</a></li>
                            <li><a href="http://webmail.tangailbarassociation.com/login.php">Webmail</a></li>

                        </ul>
                    </div>

                </nav>
            </div>
        </header>

        <!--marquee-->

        <div class="container">
            <marquee>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("RecentNews") %>' Font-Bold="true">'></asp:Label>
                    </ItemTemplate>
                </asp:Repeater>
            </marquee>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [RecentNews] FROM [MarqueeNews]"></asp:SqlDataSource>

        <!--marquee-->

        <!--slider-->

        <section id="slider">
            <div class="container">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="images/1.jpg" alt="">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/2.jpg" alt="">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/3.jpg" alt="">
                            <div class="carousel-caption">
                            </div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </section>


        <!--counter-->

        <section id="counterup">
            <div class="counter-overlay">
                <div class="container">
                    <div class="counter-content text-center">

                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <div class="count">
                                    <span class="counter">200</span>
                                    <h3>TOTAL MEMBER</h3>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="count">
                                    <span class="counter">50</span>
                                    <h3>OFFICE BEARERS</h3>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="count">
                                    <span class="counter">500</span>
                                    <h3>NEW MEMBER</h3>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="count">
                                    <span class="counter">25</span>
                                    <h3>TOTAL BOOK</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ASIDE NAV AND CONTENT -->





        <div class="line">
            <div class="box">
                <div class="margin">
                    <!-- CONTENT -->
                    <section class="s-12 m-8 l-9 right">
                        <%--<h1>Content</h1>--%>
                        <div class="NoticeboardHeader text-center">
                             <h3>Executive Committee 2016-17</h3>
                         </div>
                        <div class="margin">
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/multan.jpg"/>
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ মুলতান উদ্দিন</p>
                                    <p>সভাপতি</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/mohsin.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ মহসিন সিকদার</p>
                                    <p>সাধারান সম্পাদক</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/shakhaoat.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ সাখাওয়াত হোসেন মিয়া</p>
                                    <p>সহ-সভাপতি</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/monirujjaman.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ মনিরুজ্জামান সেলিম</p>
                                    <p>সহ-সভাপতি</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/kuddus.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ আব্দুল কুদ্দুস</p>
                                    <p>যুগ্ম-সাধারন সম্পাদক</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/fozlur.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ ফজলুর রহমান</p>
                                    <p>লাইব্রেরী সম্পাদক</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/almas.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ আলমাস মিয়া</p>
                                    <p>ক্রীড়া সম্পাদক</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/jahid.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ জাহিদ শামস</p>
                                    <p>সাহিত্য ও সাংস্কৃতিক সম্পাদক</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/mrinal.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মুহাম্মদ মৃনাল হোসেন</p>
                                    <p>নির্বাহী সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/taslima.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>তাসলিমা আকন্দ</p>
                                    <p>নির্বাহী সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/horipod.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>হরিপদ পাল</p>
                                    <p>নির্বাহী সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/rouf.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>এম এ রউফ</p>
                                    <p>নির্বাহী সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/rofiqul.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ রফিকুল ইসলাম</p>
                                    <p>নির্বাহী সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/shamim.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ শামীম রেজা</p>
                                    <p>নির্বাহী সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/kobir.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোহাম্মদ কবির হোসেন</p>
                                    <p>নির্বাহী সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/waseem.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ ওয়াসীম তারেক আনসারী</p>
                                    <p>নির্বাহী সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/mahbubur.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মাহবুবুর রহমান</p>
                                    <p>নির্বাহী সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/taleb.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ আবু তালেব মিয়া</p>
                                    <p>পদাধীকারবলে সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/saiful.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ সাইফুল ইসলাম শিবলী</p>
                                    <p>পদাধীকারবলে সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/gofur.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>আলহাজ্ মোঃ আব্দুল গফুর</p>
                                    <p>মনোনীত সদস্য</p>
                                </div>
                            </div>
                            <div class="s-12 m-6 l-4">
                                <a href="WebForm1.aspx">
                                    <img src="img/joyaher.jpg">
                                    <%TangailBarAssociationV2.Class1.i = 1; %>
                                </a>
                                <div class="fontModify">
                                    <p>মোঃ জোয়াহেরুল ইসলাম</p>
                                    <p>মনোনীত সদস্য</p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- ASIDE NAV -->


                    <section id="asideImages">
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <div class="about-icon">
                                    <div class="memberSearchDiv">
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label1" runat="server" Text="SEARCH VOTER NO" Font-Bold="True" ForeColor="White"></asp:Label>
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label5" runat="server" Text="TANGAIL BAR ASSOCIATION" Font-Bold="True" ForeColor="White" Font-Size="Medium"></asp:Label>
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label6" runat="server" Text="ELECTION 2016-2017" Font-Bold="True" ForeColor="White" Font-Size="Medium"></asp:Label>
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label7" runat="server" Text="Enter Membership no :" Font-Bold="True" ForeColor="White" Font-Size="Medium"></asp:Label>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text="Search" BorderStyle="Dashed" Font-Names="Andalus" ForeColor="#003366" />
                                        <br /><br />
                                    </div>

                                    <%--<img src="leftImages/c.jpg" />

                                <a href="ShowTutorials.aspx">
                                    <div class="image-overlay"></div>
                                </a>
                                <div class="about">
                                </div>--%>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="about-icon">
                                    <div class="NoticeBoard">
                                        <div class="NoticeboardHeader text-center">
                                  News and Events</h3>
                                        </div>
                                        <div class="NoticeSection">

                                            <%--notice section--%>
                                            <div class="notice-section row">
                                                <ul>
                                                    <li>

                                                        <%--<span class="notice-date">10/07/2015</span><br>--%>
                                                        <asp:Label ID="LabelNotice1" runat="server" Text="টাংগাইল আইনজীবী সমিতির বিজ্ঞ সদস্যগনকে জানানো যাইতেছে যে, সমিতির ২০১৬-২০১৭ ইং সনের"></asp:Label>
                                                        <br />
                                                        <asp:LinkButton ID="LinkButtonNotice1" runat="server" OnClick="LinkButtonNotice1_Click">Click here to download</asp:LinkButton>

                                                    </li>
                                                    <hr />
                                                    <li>

                                                        <%--<span class="notice-date">10/07/2015</span><br>--%>
                                                        <asp:Label ID="LabelNotice2" runat="server" Text="টাংগাইল আইনজীবী সমিতির বিজ্ঞ সদস্যগনকে জানানো যাইতেছে যে, সমিতির কার্যকরী পরিষদের"></asp:Label>
                                                        <br />
                                                        <asp:LinkButton ID="LinkButtonNotice2" runat="server" OnClick="LinkButtonNotice2_Click">Click here to download</asp:LinkButton>

                                                    </li>
                                                    <hr />
                                                    <li>

                                                        <%--<span class="notice-date">10/07/2015</span><br>--%>
                                                        <asp:Label ID="LabelNotice3" runat="server" Text="টাংগাইল বার এসোসিয়েশান এর ডাটা বেজ আপডেট এর জন্য আপনার সদ্য তোলা এক কপি পাসপোর্ট"></asp:Label>
                                                        <br />
                                                        <asp:LinkButton ID="LinkButtonNotice3" runat="server" OnClick="LinkButtonNotice3_Click">Click here to download</asp:LinkButton>

                                                    </li>
                                                </ul>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="about-icon">

                                    <img src="leftImages/Office.jpg" />

                                    <a href="ShowTutorials.aspx">
                                        <div class="image-overlay"></div>
                                    </a>
                                    <div class="about">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="about-icon">

                                    <img src="leftImages/Finance.jpg" />

                                    <a href="ShowTutorials.aspx">
                                        <div class="image-overlay"></div>
                                    </a>
                                    <div class="about">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="about-icon">

                                    <img src="leftImages/Cultural.jpg" />

                                    <a href="ShowTutorials.aspx">
                                        <div class="image-overlay"></div>
                                    </a>
                                    <div class="about">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="about-icon">

                                    <img src="leftImages/Library.jpg" />

                                    <a href="ShowTutorials.aspx">
                                        <div class="image-overlay"></div>
                                    </a>
                                    <div class="about">
                                    </div>
                                </div>
                            </div>

                        </div>
                    </section>



                </div>
            </div>
        </div>

        <!-- GALLERY CAROUSEL -->
        <div class="line">
            <h2>Gallery</h2>
            <div id="owl-demo2" class="owl-carousel margin-bottom">
                <div class="item">
                    <img class="lazyOwl" data-src="img1/1.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img1/2.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img1/3.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img1/1.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img1/2.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img1/3.jpg" alt="">
                </div>
                <%--<div class="item">
                    <img class="lazyOwl" data-src="img/330x190.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img/330x190-2.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img/330x190-3.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img/330x190.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img/330x190-2.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img/330x190-3.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img/330x190.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img/330x190-2.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img/330x190-3.jpg" alt="">
                </div>
                <div class="item">
                    <img class="lazyOwl" data-src="img/330x190.jpg" alt="">
                </div>--%>
            </div>
        </div>

        <!-- FOOTER -->
        <section id="footer" class="text-center">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<div class="footer-text text-right">
							<p>Copyright &copy; 2016 Tangail Bar Assocation. All Rights Reserved. Powered by <a href="http://www.trycatchtechnologybd.com">Try Catch Technology Ltd.</a></p>
						</div>
					</div>
					
				</div>
			</div>
		</section>
        <%--<footer class="line">
            <div class="footerColorSection">
            <div class="s-12 l-6">
                <p>Copyright 2015, Vision Design - graphic zoo</p>
            </div>
            <div class="s-12 l-6">
                <a class="right" href="http://www.myresponsee.com" title="Responsee - lightweight responsive framework">Design and coding by Responsee Team</a>
            </div>
                </div>
        </footer>--%>

        <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
        <script type="text/javascript" src="js/jquery.counterup.min.js"></script>
        <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $("#owl-demo").owlCarousel({
                    navigation: true,
                    slideSpeed: 300,
                    paginationSpeed: 400,
                    autoPlay: true,
                    singleItem: true
                });
                $("#owl-demo2").owlCarousel({
                    items: 4,
                    lazyLoad: true,
                    autoPlay: true,
                    navigation: true,
                    pagination: false
                });
            });



        </script>
        <script>
            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        </script>



    </body>
</form>
</html>
