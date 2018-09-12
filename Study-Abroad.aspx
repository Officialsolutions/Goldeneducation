<%@ Page Title="" Language="C#" MasterPageFile="~/Without-Sidebar.master" AutoEventWireup="true" CodeFile="Study-Abroad.aspx.cs" Inherits="Study_Abroad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
    Study Abroad
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
                <div class="auto-container">

                    <div class="sec-title text-center">
                        <h2>Countries We Deals</h2>
                    </div>
                    <div class="row clearfix">

                        <!--News Column-->
                        <asp:ListView ID="lvabroad" runat="server" OnItemCommand="lvabroad_ItemCommand">
                            <ItemTemplate>
                                <div class="column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                    <article class="inner-box wow fadeInUp animated card" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInUp;">
                                        <figure class="image-box">
                                            <a href="#">
                                                <img src="uploadimage/<%#Eval("thumb") %>" alt=""></a>

                                        </figure>
                                        <div class="content-box card-body">
                                            <h3><a href="#"><%#Eval("name") %></a></h3>
                                            <div style="overflow: hidden; height: 138px;">
                                                        <%#Eval("Description") %>
                                                    </div>
                                               <asp:LinkButton ID="lnkmore" ToolTip="Read More" runat="server" CommandArgument='<%#Eval ("id")%>' CommandName="more" class="btn btn-primary">
                                           Read More <span class="icon-right fa fa-angle-right"></span></asp:LinkButton>
                                        </div>
                                    </article>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        

                        




                    </div>
                </div>
        
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

