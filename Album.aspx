<%@ Page Title="" Language="C#" MasterPageFile="~/Without-Sidebar.master" AutoEventWireup="true" CodeFile="Album.aspx.cs" Inherits="Album" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
 Album
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
  <asp:ListView ID="ListAlbum" runat="server" onitemcommand="ListAlbum_ItemCommand">
      <ItemTemplate>

          <div class="portfolio-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="uploadimage/<%#Eval("Image") %>" alt=""></figure>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval ("id")%>' CommandName="album" class="lightbox-image overlay-link"><%#Eval("Name") %></asp:LinkButton>
                    </div>
                </div>

            
                      
                <!--Item-->
               <%-- <div class="portfolio-item col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/8.jpg" alt=""></figure>
                        <a href="images/gallery/8.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/9.jpg" alt=""></figure>
                        <a href="images/gallery/9.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>
                
                <!--Item-->
                <div class="portfolio-item col-md-4 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<figure class="image-box"><img src="images/gallery/10.jpg" alt=""></figure>
                        <a href="images/gallery/10.jpg" class="lightbox-image overlay-link" title="Image Caption Here"><span class="icon flaticon-cross-3"></span></a>
                    </div>
                </div>--%>
      </ItemTemplate>
  </asp:ListView>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

