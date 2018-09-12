<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/main.master" AutoEventWireup="true" CodeFile="add-edit-ourdeals.aspx.cs" Inherits="Auth_add_edit_ourdeals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
<script type="text/javascript" src="tinymce/tinymce.min.js"></script>
    <script type="text/javascript"> tinymce.init({ selector: 'textarea' });</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
  <div class="col-md-8">
    <h1 class="page-header">Add/Edit Blogs</h1>
      <hr />
         <div class="form-group">
               <label>Name</label>
               <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
          </div>
          <div class="form-group">
                        <label>Upload Image</label>
                        <asp:FileUpload ID="sliderimage" runat="server" CssClass="form-control" />   
          </div>
           <div class="form-group">
               <label>Description</label>
               <asp:TextBox ID="txtdes" runat="server" class="form-control" 
                   placeholder="Enter Description" TextMode="MultiLine"></asp:TextBox>
          </div>
          <div class="form-group">
                   <asp:Button CssClass="btn-success" ID="btnsubmit" runat="server" 
                       Text="Submit" onclick="btnsubmit_Click" />
        </div>   
        </div>
        <div class="col-md-4">
            <img alt="" src="../uploadimage/<%=img %>" width="80px"/>
        </div> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

