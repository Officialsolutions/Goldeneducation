﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/main.master" AutoEventWireup="true" CodeFile="add-edit-contact.aspx.cs" Inherits="Auth_add_edit_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
        <script src="tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector:'textarea' });</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
    Contact
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
      <div class="col-md-8">
        <div class="form-group">
               <label>Address</label>
               <asp:TextBox ID="txtname" TextMode="MultiLine" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
          </div>
          <div class="form-group">
                        <label>Phone</label>
                     <asp:TextBox ID="txtphone" runat="server" class="form-control" 
                   placeholder="Phone" ></asp:TextBox>
          </div>
           <div class="form-group">
               <label>Email</label>
               <asp:TextBox ID="txtemail" runat="server" class="form-control" 
                   placeholder="Email" ></asp:TextBox>
          </div>
           <div class="form-group">
               <label>Front Title</label>
               <asp:TextBox ID="txtfront" runat="server" class="form-control" 
                   placeholder="Front Title" ></asp:TextBox>
          </div>
           <div class="form-group"  style="display:none;">
               <label>Front Image</label>
                <asp:FileUpload ID="sliderimage" runat="server" CssClass="form-control" />   
          </div>
           <div class="form-group">
               <label>Description</label>
               <asp:TextBox ID="txtdesc" runat="server" class="form-control" TextMode="MultiLine"
                   placeholder="Email" ></asp:TextBox>
          </div>
          <div class="form-group">
                   <asp:Button CssClass="btn-success" ID="btnsubmit" runat="server" 
                       Text="Submit" onclick="btnsubmit_Click" />
        </div>
    </div>
     <div class="col-md-4" style="display:none;">
           <img alt="" src="../uploadimage/<%=img %>" width="80"  />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

