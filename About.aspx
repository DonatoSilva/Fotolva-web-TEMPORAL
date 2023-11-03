<%@ Page Title="Nosotos | Fotolva" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Fotolva_Web.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1 class="text-center"><%: Title %>.</h1>
        <p class="text-center">Somos Fotolva, una empresa especializada en fotografía de alta calidad. Nuestra misión es capturar momentos especiales y transformarlos en recuerdos inolvidables.</p>
        <hr />
        <div class="row">
            <div class="col-md-4  row align-content-center">
                <h2>Nuestra Historia</h2>
                <p>Fotolva fue fundada en 2005 por un grupo de apasionados fotógrafos que compartían la visión de brindar servicios excepcionales de fotografía. A lo largo de los años, hemos trabajado con una amplia gama de clientes y hemos capturado innumerables momentos preciosos.</p>
            </div>

            <div class="col-md-4 bg-info-subtle p-4 rounded-3 border border-dark">
                <h2>Nuestro Equipo</h2>
                <p>Contamos con un equipo de fotógrafos profesionales altamente capacitados y apasionados por su trabajo. Están comprometidos a brindar a nuestros clientes la mejor experiencia fotográfica posible.</p>
            </div>

            <div class="col-md-4 row align-content-center">
                <h2>Misión y Valores</h2>
                <p>Nuestra misión es proporcionar fotografías de alta calidad que preserven momentos significativos y cuenten historias. Valoramos la creatividad, la calidad, la integridad y la satisfacción del cliente en todo lo que hacemos.</p>
            </div>
        </div>
    </main>
</asp:Content>
