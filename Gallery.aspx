<%@ Page Title="" Language="C#" MasterPageFile="~/Without-Sidebar.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
    Gallery
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
    <asp:ListView ID="ListGallery" runat="server">
    <ItemTemplate>
      <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="uploadimage/<%#Eval("Image") %>" alt=""></figure>
                        <a href="uploadimage/<%#Eval("Image") %>" class="lightbox-image overlay-link" title='<%#Eval("Name") %>'><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                <!--Item-->
    </ItemTemplate>
    </asp:ListView>
               <%-- <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/29.jpg" alt=""></figure>
                        <a href="images/gallery/29.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/30.jpg" alt=""></figure>
                        <a href="images/gallery/30.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/31.jpg" alt=""></figure>
                        <a href="images/gallery/31.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/32.jpg" alt=""></figure>
                        <a href="images/gallery/32.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/33.jpg" alt=""></figure>
                        <a href="images/gallery/33.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/34.jpg" alt=""></figure>
                        <a href="images/gallery/34.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/35.jpg" alt=""></figure>
                        <a href="images/gallery/35.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/36.jpg" alt=""></figure>
                        <a href="images/gallery/36.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/37.jpg" alt=""></figure>
                        <a href="images/gallery/37.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/38.jpg" alt=""></figure>
                        <a href="images/gallery/38.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/39.jpg" alt=""></figure>
                        <a href="images/gallery/39.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

