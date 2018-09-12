<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/main.master" AutoEventWireup="true" CodeFile="add-edit-countes.aspx.cs" Inherits="Auth_add_edit_countes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
<script type="text/javascript" src="tinymce/tinymce.min.js"></script>
    <script type="text/javascript">        tinymce.init({ selector: 'textarea' });</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
Add / Edit Counting
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
<div class="col-md-8">
        <div class="form-group">
            <label>Title</label>
                     <asp:TextBox ID="txttitle" runat="server" class="form-control" 
                   placeholder="Title" ></asp:TextBox>
        </div>
        <div class="form-group">
               <label>Description</label>
               <asp:TextBox ID="txtdesc" TextMode="MultiLine" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
          </div>
          <div class="form-group">
                        <label>Student Visa</label>
                     <asp:TextBox ID="txtVisa" runat="server" class="form-control" 
                   placeholder="Student Visa" ></asp:TextBox>
          </div>
           <div class="form-group">
               <label>Happy Client</label>
               <asp:TextBox ID="txtclient" runat="server" class="form-control" 
                   placeholder="Happy Client" ></asp:TextBox>
          </div>
            <div class="form-group">
                        <label>Air Tickets</label>
                     <asp:TextBox ID="txtair" runat="server" class="form-control" 
                   placeholder="Air Tickets" ></asp:TextBox>
          </div>
           <div class="form-group">
               <label>PR Visa</label>
               <asp:TextBox ID="txtpr" runat="server" class="form-control" 
                   placeholder="PR Visa" ></asp:TextBox>
          </div>
          <div class="form-group">
                   <asp:Button CssClass="btn-success" ID="btnsubmit" runat="server" 
                       Text="Submit" onclick="btnsubmit_Click" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

