<%@ Page Title="" Language="C#" MasterPageFile="~/Without-Sidebar.master" AutoEventWireup="true" CodeFile="Contact-Us.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
    Contact Us
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
        <section class="map-section">
    	<!--Map Container-->
        <div class="map-container">
            <!--Map Canvas-->
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d16298.332263738725!2d75.17142781942582!3d30.82219471283242!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x719a65c7c80e525d!2sGolden+Educations+%26+Immigration+Consultants!5e0!3m2!1sen!2sin!4v1535105515832" width="1200" height="450" frameborder="3px" style="border:3px" allowfullscreen></iframe>
          <%--  <div class="map-canvas"
                data-zoom="13"
                data-lat="-37.817085"
                data-lng="144.955631"			  
                data-type="roadmap"
                data-hue="#ffc400"
                data-title="Envato"
                data-content="Melbourne VIC 3000, Australia<br><a href='mailto:info@youremail.com'>info@youremail.com</a>"							
                style="height: 600px;">
            </div>--%>
            
        </div>
    </section>
    
    <!--Contact Section-->
    <section class="contact-section style-one">
    	<div class="auto-container">
        	<h2>Send Your Message</h2>
            
        	<div class="row clearfix">
            	<div class="form-column column col-lg-8 col-md-8 col-sm-12 col-xs-12">
                	<div class="default-form-style contact-form">
                    
                    	<form method="post" action="http://wp1.themexlab.com/html/consult_pro_new/consultant-pro/sendemail.php" id="contact-form">
                        	<div class="row clearfix">
                                <div class="form-group col-lg-6 col-md-6 col-xs-12">
                                <asp:TextBox ID="txtname" runat="server" placeholder="YOUR NAME *"></asp:TextBox>
                              
                                </div>
                                
                                <div class="form-group col-lg-6 col-md-6 col-xs-12">
                                <asp:TextBox ID="txtemail" runat="server" placeholder="EMAIL ADDRESS *"></asp:TextBox>
                             
                                </div>
                                
                                <div class="form-group col-lg-6 col-md-6 col-xs-12">
                                <asp:TextBox ID="txtphone" runat="server" placeholder="PHONE NUMBER"></asp:TextBox>
                                   
                                </div>
                                
                                <div class="form-group col-lg-6 col-md-6 col-xs-12">
                                <asp:TextBox ID="txtsubject" runat="server" placeholder="SUBJECT"></asp:TextBox>
                                 
                                </div>
                                
                                <div class="form-group col-lg-12 col-sm-12 col-xs-12">
                                <asp:TextBox ID="txtmsz" runat="server" placeholder="YOUR MESSAGE *" TextMode="MultiLine"></asp:TextBox>
                               
                                </div>
                            
                            </div>
                            <div class="text-left">
                            <asp:Button ID="btnsubmit" CssClass="theme-btn btn-style-four" runat="server" 
                                    Text="Send Message" onclick="btnsubmit_Click"></asp:Button>
                           </div>
                        </form>
                        
                    </div>
                </div>
                
                <!--Info Column-->
                <div class="info-column column col-lg-4 col-md-4 col-sm-12 col-xs-12">
                	<div class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
                    	<ul class="info-style-two">
                        	<li><div class="icon"><span class="flaticon-building"></span></div><%=address %><br /></li>
                            <li><div class="icon"><span class="flaticon-telephone"></span></div><%=mobno %></li>
                            <li><div class="icon"><span class="flaticon-web-3"></span></div> <a href="mailto:Info@goldeneducations.Com"><%=email %></a></li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

