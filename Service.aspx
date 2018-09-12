<%@ Page Title="" Language="C#" MasterPageFile="~/With-Sidebar.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="Service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" runat="Server">
    <%=title %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" runat="Server">
    <div class="tab active-tab" id="tab-one">

        <!--Main Image-->
        <figure class="main-image">
            <img src="uploadimage/<%=img %>" alt="" class="thumbnail" /></figure>

        <h2 class="service-title"><%=title %></h2>
        <!--Default Text Block-->
        <div class="default-text-block">
            <p><%=desc %></p>
        </div>

        <!--Default Two Column-->


    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" runat="Server">
</asp:Content>

