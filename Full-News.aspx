<%@ Page Title="" Language="C#" MasterPageFile="~/With-Sidebar.master" AutoEventWireup="true" CodeFile="Full-News.aspx.cs" Inherits="Full_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
    News & Events
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
    
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    
                    <!--Projects Section-->
                    <section class="blog-news-section blog-detail no-padd-bottom no-padd-top padd-right-20">
                            
                        <!--News Column-->
                        <div class="column blog-news-column">
                            <article class="inner-box">          
                                <figure class="image-box">
                                   <img src="uploadimage/<%=img%>" alt="" />
                                   <%-- <div class="news-date">14<span class="month">Mar</span></div>--%>
                                </figure>
                                <div class="content-box padd-top-30">
                                    <h3><b><%=title %></b></h3>
                                   <%-- <ul class="post-info clearfix">
                                        <li>By <a href="#">Admin</a></li><li>In <a href="#">Finance</a></li><li><a href="#">07 Comments</a></li>
                                    </ul>--%>
                                    <div class="text">
                                    	<p><%=descr%></p>
                                    	
                                    </div>
                                </div>
          
                            </article>
                        </div>
                        
                        <hr class="separator" />
                        
                    </section>
   
                </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

