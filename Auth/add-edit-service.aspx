<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/main.master" AutoEventWireup="true" CodeFile="add-edit-service.aspx.cs" Inherits="Auth_add_edit_service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
        <script src="tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector:'textarea' });</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
    <div class="col-md-8">
    <h1 class="page-header">Add/Edit Service</h1>
      <hr />
         <div class="form-group">
               <label>Type</label>

             <asp:DropDownList ID="ddltype" runat="server" OnSelectedIndexChanged="ddltype_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control">
                 <asp:ListItem>Select Type</asp:ListItem>
                 <asp:ListItem>Study Abroad</asp:ListItem>
                 <asp:ListItem>Migration</asp:ListItem>
                 <asp:ListItem>Service</asp:ListItem>
             </asp:DropDownList>
          </div>
        <asp:Panel ID="pnlcountry" runat="server" Visible="false">
              <div class="form-group">
               <label>Select Country</label>
              <asp:DropDownList ID="ddlcountry" runat="server" CssClass="form-control">
                <asp:ListItem>Select Country</asp:ListItem>
                  <asp:ListItem>Canada</asp:ListItem>
                  <asp:ListItem>Australia</asp:ListItem>
                  <asp:ListItem>UK</asp:ListItem>
                  <asp:ListItem>USA</asp:ListItem>
             </asp:DropDownList> 
          </div>
        </asp:Panel>
         <div class="form-group">
               <label>Name</label>
               <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
          </div>
          <div class="form-group">
                        <label>Upload Image</label>
                        <asp:FileUpload ID="sliderimage" runat="server" CssClass="form-control" />   
          </div>
          <div class="form-group">
                        <label>Upload Thumbnail Image</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />   
          </div>
           <div class="form-group">
               <label>Description</label>
               <asp:TextBox ID="txtdes" runat="server" class="form-control" 
                   placeholder="Enter Description" TextMode="MultiLine"></asp:TextBox>
          </div>
           <div class="form-group">
               <label>Main Service</label>
               <asp:RadioButtonList ID="rdomain" runat="server">
               <asp:ListItem Value="1">Yes</asp:ListItem>
               <asp:ListItem Selected="True" Value="0">No</asp:ListItem>
               </asp:RadioButtonList>
          </div>
          <div class="form-group">
                   <asp:Button CssClass="btn-success" ID="btnsubmit" runat="server" 
                       Text="Submit" onclick="btnsubmit_Click" />
        </div>   
        </div>
        <div class="col-md-4">
            <img alt="" src="../uploadimage/<%=img %>" style="width:80px;"/>
        </div> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

