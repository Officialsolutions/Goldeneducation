<%@ Page Title="" Language="C#" MasterPageFile="~/Without-Sidebar.master" AutoEventWireup="true" CodeFile="About-Us.aspx.cs" Inherits="About_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
    About Us
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
    <!--Text Column-->
    <div class="col-md-12">
                <div class="column text-column col-md-6 col-sm-12 col-xs-12">
                	<div class="inner-box ">
                    	<h2><%=title %></h2>
                        <div class="text">
                        	<p><%=desc %></p>
                        </div>
                    </div>
                </div>
                
                <!--Counter Column-->
                <div class="column col-md-6 col-sm-12 col-xs-12">
                	
                 <img src="uploadimage/<%=img %>" alt="" class="img-responsive" />
                    
                </div>
        </div>  

    <div class="column col-md-4 col-sm-12 col-xs-12">
                	<div class="introtext-two padd-right-50">
                    <%--	<h3>Why Choose Us?</h3>--%>
                        <h2><%=titlem %></h2>
                        <div class="text"><%=desm %></div>
                        <a href="Mission.aspx" class="theme-btn btn-style-four">Read More</a>
                    </div>
     </div>
      <div class="column col-md-4 col-sm-12 col-xs-12">
                	<div class="introtext-two padd-right-50">
                        <h2><%=titlev %></h2>
                        <div class="text"><%=desv %></div>
                        <a href="Vision.aspx" class="theme-btn btn-style-four">Read More</a>
                    </div>
     </div>       
      <div class="column col-md-4 col-sm-12 col-xs-12">
                	<div class="introtext-two padd-right-50">
                        <h2><%=titlew %></h2>
                        <div class="text"><%=desw %></div>
                        <a href="WhoWeAre.aspx" class="theme-btn btn-style-four">Read More</a>
                    </div>
     </div>    
                <!--Column-->
            	<%--<div class="column col-md-8 col-sm-12 col-xs-12">
                	<div class="row clearfix">
                    	
                        <!--Left Icon Column-->
                        <div class="left-icon-column col-md-6 col-sm-6 col-xs-12">
                        	<div class="inner-box">
                            	<div class="icon"><span class="flaticon-technology-33"></span></div>
                                <h3>Trust Worthy</h3>
                                <div class="text">When the odds are against him and their dangers work to do. </div>
                            </div>
                        </div>
                        
                        <!--Left Icon Column-->
                        <div class="left-icon-column col-md-6 col-sm-6 col-xs-12">
                        	<div class="inner-box">
                            	<div class="icon"><span class="flaticon-tool-12"></span></div>
                                <h3>Experienced</h3>
                                <div class="text">When the odds are against him and their dangers work to do. </div>
                            </div>
                        </div>
                        
                        <!--Left Icon Column-->
                        <div class="left-icon-column col-md-6 col-sm-6 col-xs-12">
                        	<div class="inner-box">
                            	<div class="icon"><span class="flaticon-hand"></span></div>
                                <h3>Professional</h3>
                                <div class="text">When the odds are against him and their dangers work to do. </div>
                            </div>
                        </div>
                        
                        <!--Left Icon Column-->
                        <div class="left-icon-column col-md-6 col-sm-6 col-xs-12">
                        	<div class="inner-box">
                            	<div class="icon"><span class="flaticon-interface-19"></span></div>
                                <h3>Vibrant</h3>
                                <div class="text">When the odds are against him and their dangers work to do. </div>
                            </div>
                        </div>
                        
                    </div>
                </div>--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

