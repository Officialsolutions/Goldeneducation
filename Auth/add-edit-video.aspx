﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/main.master" AutoEventWireup="true" CodeFile="add-edit-video.aspx.cs" Inherits="Auth_add_edit_video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
   Gallery
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
    <div class="col-md-8">
        <div class="form-group">
               <label>Name</label>
               <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
          </div>
          <div class="form-group">
                        <label>Upload Image</label>
                        <asp:FileUpload ID="sliderimage" runat="server" CssClass="form-control" />   
          </div>
         <div class="form-group">
               <label>URL</label>
               <asp:TextBox ID="txturl" runat="server" class="form-control" placeholder="Enter URL"></asp:TextBox>
          </div>
          <div class="form-group">
                   <asp:Button CssClass="btn-success" ID="btnsubmit" runat="server" 
                       Text="Submit" onclick="btnsubmit_Click" />
        </div>   
    </div>
    <div class="col-md-4">
           <img alt="" src="../uploadimage/<%=img %>" width="80" />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

