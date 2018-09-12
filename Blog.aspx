<%@ Page Title="" Language="C#" MasterPageFile="~/Without-Sidebar.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
    Blog
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
           <!--Content Side-->	
                <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
                    <!--Projects Section-->
                    <section class="blog-news-section two-column no-padd-bottom no-padd-top padd-right-10">
                    	<div class="row clearfix">        
                            <!--News Column-->
                            <asp:ListView ID="ListBlog" runat="server" onitemcommand="ListBlog_ItemCommand" 
                                onitemdatabound="ListBlog_ItemDataBound">
                              <ItemTemplate>
                                <div class="column blog-news-column margin-bott-50 col-md-6 col-sm-6 col-xs-12">
                                    <article class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                                        <figure class="image-box" style="    height: 250px;
    overflow: hidden;">
                                            <img src="uploadimage/<%#Eval("Image") %>" alt="">
                                           <%-- <div class="news-date">14<span class="month">Mar</span></div>--%>
                                        </figure>
                                        <div class="content-box">
                                            <h3><asp:Label ID="lblname" runat="server" Text='<%#Eval("Name") %>'></asp:Label></h3>
                                            <%--<ul class="post-info clearfix">
                                                <li>By <a href="#">Admin</a></li><li>In <a href="#">Finance</a></li><li><a href="#">07 Comments</a></li>
                                            </ul>--%>
                                            <div class="text"><asp:Label ID="lbldesc" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                                             <asp:LinkButton ID="lnkread" ToolTip="Read More" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="read" style="color:#00AEF0" >
                                           Read More </asp:LinkButton>
                                            </div>
                                        </div>
                                    </article>
                                 </div>
                               </ItemTemplate>
                            </asp:ListView>

                            
                        </div>
                        <!-- Styled Pagination -->
                        <%--<div class="styled-pagination text-center">
                            <ul>
                                <li><a class="prev" href="#"><span class="fa fa-angle-double-left"></span></a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#" class="active">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a class="next" href="#"><span class="fa fa-angle-double-right"></span></a></li>
                            </ul>
                        </div>--%>
                    </section>
 
                </div>
                <!--Content Side-->
                
                <!--Sidebar-->	
                <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <aside class="sidebar">
                        
                        <!-- Recent Posts -->
                        <div class="sidebar-widget recent-posts wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <div class="sidebar-title"><h2>Recent Post</h2></div>
                            <asp:ListView ID="ListRecent" runat="server" 
                                onitemcommand="ListRecent_ItemCommand">
                                <ItemTemplate>
                                    <article class="post">
                                      <figure class="post-thumb"><img src="uploadimage/<%#Eval("Image") %>" alt=""></figure>
                                     <asp:LinkButton ID="lnkfull" runat="server" CommandArgument='<%#Eval ("id")%>' CommandName="full" style="color:#00AEF0" >
                                            <h4><asp:Label ID="lblrname" runat="server" Text='<%#Eval("Name") %>'></asp:Label></h4>
                                      </asp:LinkButton>
                                        <%--<div class="post-info">March 15, 2016</div>--%>
                                    </article>
                                    <hr class="separator" />
                                </ItemTemplate>
                            </asp:ListView>

                            <%-- <article class="post">
                            	<figure class="post-thumb"><img src="images/resource/post-thumb-5.jpg" alt=""></figure>
                                <h4><a href="#">Give us any rule we'll break it we're gonna make</a></h4>
                                <div class="post-info">March 14, 2016</div>
                            </article>
                            
                            <hr class="separator">
                            
                            <article class="post">
                            	<figure class="post-thumb"><img src="images/resource/post-thumb-6.jpg" alt=""></figure>
                                <h4><a href="#">Its like a kind of torture to have to watch</a></h4>
                                <div class="post-info">March 12, 2016</div>
                            </article>--%>
                        </div>
                        
                        <!-- Text Widget -->
                        
                        
                        <!-- Popular Tags -->
                        <%--<div class="sidebar-widget popular-tags">
                            <div class="sidebar-title"><h2>Follow Us</h2></div>
                            
                           
                            
                        </div>--%>
                                
                    </aside>
                
                    
                </div>
                <!--Sidebar-->  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

