<%@ Page Title="" Language="C#" MasterPageFile="~/Without-Sidebar.master" AutoEventWireup="true" CodeFile="Terms-Conditions.aspx.cs" Inherits="Terms_Conditions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
Terms & Conditions
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
 <div class="col-md-12">
               <%-- <div class="column text-column col-md-6 col-sm-12 col-xs-12">--%>
                	<div class="inner-box ">
                    	<h2><%=title %></h2>
                        <div class="text">
                        	<p><em /><%=desc %></p>
                        </div>
                    </div>
               <%-- </div>--%>
                
                <!--Counter Column-->
               <%-- <div class="column col-md-6 col-sm-12 col-xs-12">
                	
                 <img src="uploadimage/<%=img %>" alt="" class="img-responsive" />
                    
                </div>--%>
       </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

