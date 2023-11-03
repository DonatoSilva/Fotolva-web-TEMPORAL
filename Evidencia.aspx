<!DOCTYPE html>

<%@ Page language="C#" AutoEventWireup="true" CodeBehind="~/Evidencia.aspx.cs" Inherits="Fotolva_Web.Evidencia"%>

<html lang="es">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="~/icon.ico" rel="shortcut icon" type="image/x-icon" />
    <title>Evidencia | Fotolva</title>
    <asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager runat="server">
             <Scripts>
                 <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                 <%--Framework Scripts--%>
                 <asp:ScriptReference Name="MsAjaxBundle" />
                 <asp:ScriptReference Name="jquery" />
                 <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                 <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                 <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                 <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                 <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                 <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                 <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                 <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                 <asp:ScriptReference Name="WebFormsBundle" />
                 <%--Site Scripts--%>
             </Scripts>
         </asp:ScriptManager>

         <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
             <div class="container">
                 <div class="container-fluid">
                     <a class="navbar-brand" runat="server" href="~/">
                         <img runat="server" src="~/svg/icon.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                         Fotolva Web
                     </a>
                 </div>
                 <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" title="Alternar navegación" aria-controls="navbarSupportedContent"
                     aria-expanded="false" aria-label="Toggle navigation">
                     <span class="navbar-toggler-icon"></span>
                 </button>
                 <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
                     <ul class="navbar-nav flex-grow-1">
                         <li class="nav-item"><a class="nav-link" runat="server" href="~/">Inicio</a></li>
                         <li class="nav-item"><a class="nav-link" runat="server" href="~/About">Nosotros</a></li>
                         <li class="nav-item"><a class="nav-link" runat="server" href="~/Evidencia">Evidencia</a></li>
                         <li class="nav-item"><a class="nav-link" runat="server" href="~/Contact">Contacto</a></li>
                     </ul>
                 </div>
             </div>
         </nav>
        <div class="container body-content">
            <h1>Álbumes de la empresa</h1>
            <asp:GridView CssClass="border-0 w-100" ID="GridAlbumData" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Imagen" ControlStyle-CssClass="imagen-altura">
                        <ItemTemplate>
                            <asp:Image ID="AlbumImage" runat="server" CssClass="imagen-altura"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Nombre" />
                    <asp:BoundField DataField="Date" HeaderText="Fecha" />
                    <asp:BoundField DataField="Place" HeaderText="Lugar" />
                    <asp:BoundField DataField="Description" HeaderText="Descripción" />
                </Columns>
            </asp:GridView>
            <hr />
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Fotolva Web </p>
            </footer>
        </div>
        <style>
            .imagen-altura{
                width: 70px;
                height: 62px;
            }
        </style>
    </form>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/Scripts/bootstrap.js") %>
</asp:PlaceHolder>
</body>
</html>
