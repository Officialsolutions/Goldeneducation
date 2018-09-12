<%@ Page Title="" Language="C#" MasterPageFile="~/Without-Sidebar.master" AutoEventWireup="true" CodeFile="Full-Blog.aspx.cs" Inherits="Full_Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
    Blog Detail
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">

                <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
                    
                    <!--Projects Section-->
                    <section class="blog-news-section blog-detail no-padd-bottom no-padd-top padd-right-20">
                            
                        <!--News Column-->
                        <div class="column blog-news-column">
                            <article class="inner-box">          
                                <figure class="image-box" style="    height: 300px;
    overflow: hidden;">
                                   <img src="uploadimage/<%=img%>" alt="" />
                                   <%-- <div class="news-date">14<span class="month">Mar</span></div>--%>
                                </figure>
                                <div class="content-box padd-top-30">
                                    <h3><%=title %></h3>
                                   <%-- <ul class="post-info clearfix">
                                        <li>By <a href="#">Admin</a></li><li>In <a href="#">Finance</a></li><li><a href="#">07 Comments</a></li>
                                    </ul>--%>
                                    <div class="text">
                                    	<p><%=descr%></p>
                                    	<%--<br>
                                        <div class="row clearfix">
                                        	<div class="col-lg-6 col-md-6 col-xs-12">
                                            	<h3>What We Offered For Clients</h3>
                                                <ul class="styled-list-one">
                                                	<li>Five passengers set sail that day for a three hour</li>
                                                    <li>Till the one day when the lady met this fellow</li>
                                                    <li>Family that's the way we all became the brady</li>
                                                    <li>Champion the cause of the innocent career</li>
                                                    <li>The powerless in a world of criminals operate</li>
                                                    <li>Now were up in the big leagues getting' turn</li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-xs-12">
                                            	<figure><img class="img-responsive" src="images/resource/featured-image-8.jpg" alt=""></figure>
                                            </div>
                                        </div>
                                        <br>
                                        <h3>What Our Team Did For This Great and Perfect Work</h3>
                                        <p>Fleeing from the Cylon tyranny the last Battlestar – Galactica - leads a rag-tag fugitive fleet on a lonely quest - a shining planet known as Earth? A man is born he's a man of means. Then along come two they got nothin' but their jeans. You wanna be where you can see our troubles are all the same.</p>
                                        <br>
                                        <div class="row clearfix">
                                            <div class="col-lg-6 col-md-6 col-xs-12">
                                            	<figure><img class="img-responsive" src="images/resource/featured-image-9.jpg" alt=""></figure>
                                            </div>
                                        	<div class="col-lg-6 col-md-6 col-xs-12">
                                            	<br>
                                            	<p>You wanna be where everybody knows Your name. The weather started getting rough - the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost.</p>
                                                <p>Love exciting and new. Come aboard were expecting you. Love life's sweetest reward Let it flow it floats back to you. You wanna be where you can see our troubles are all the same. You wanna be where every body knows Your name. Makin their way the only way they know how.</p>
                                            </div>
                                        </div>
                                        <br>
                                        <h3>Report and Conclusion From Our Team</h3>
                                        <p>Movin' on up to the east side. We finally got a piece of the pie. Believe it or not I'm walking on air. I never thought I could feel so free. So join us here each week my friends you're sure to get a smile from seven stranded castaways here on Gilligans Isle! Doin' it our way. Nothin's gonna turn us back now.</p>
                                        <br>--%>
                                    </div>
                                </div>
          
                            </article>
                        </div>
                        
                        <hr class="separator" />
                        
                    </section>
   
                </div>
                <!--Content Side-->
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
                        </div>
                        
                        <!-- Text Widget -->
                                
                    </aside>
                
                    
                </div>
                <!--Sidebar-->	
                <%--<div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <aside class="sidebar">

                        <!-- Recent Posts -->
                        <div class="sidebar-widget recent-posts wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <div class="sidebar-title"><h2>Recent Post</h2></div>
                            
                            <article class="post">
                            	<figure class="post-thumb"><img src="images/resource/post-thumb-4.jpg" alt=""></figure>
                                <h4><a href="#">Believe it or not its just me. Come and dance on our</a></h4>
                                <div class="post-info">March 15, 2016</div>
                            </article>
                            
                            <hr class="separator">
                            
                             <article class="post">
                            	<figure class="post-thumb"><img src="images/resource/post-thumb-5.jpg" alt=""></figure>
                                <h4><a href="#">Give us any rule we'll break it we're gonna make</a></h4>
                                <div class="post-info">March 14, 2016</div>
                            </article>
                            
                            <hr class="separator">
                            
                            <article class="post">
                            	<figure class="post-thumb"><img src="images/resource/post-thumb-6.jpg" alt=""></figure>
                                <h4><a href="#">Its like a kind of torture to have to watch</a></h4>
                                <div class="post-info">March 12, 2016</div>
                            </article>
                            
                            
                        </div>
                        
                        <!-- Text Widget -->
                        
                        
                        <!-- Popular Tags -->
                        <div class="sidebar-widget popular-tags">
                            <div class="sidebar-title"><h2>Follow Us</h2></div>
                            
                           
                            
                        </div>
                                
                    </aside>
                
                    
                </div>--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

