<%@ Page Title="Inicia | Fotolva" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fotolva_Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row bg-info-subtle p-lg-4 rounded-3 mb-3 border border-dark" aria-labelledby="aspnetTitle">
           <div class="col-md-6 ">
                <h1 id="aspnetTitle">El futuro es Fotolva</h1>
                <p class="lead">Fotolva es una empresa que busca revolucionar el mundo de la fotografía con sus soluciones tecnológicas. Su visión es convertirse en un referente global en este campo y ofrecer a sus clientes una experiencia única e inolvidable.</p>
                <p><a runat="server"  href="~/Evidencia" class="btn btn-light btn-md border border-dark">Saber mas &raquo;</a></p>
            </div>
            <div class="col-md-6 d-flex justify-content-center">
                <img src="https://statics.forbesargentina.com/2021/08/crop/611d4b7f4a7e5__400x260.webp" alt="Imagen de ASP.NET">
            </div>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Fotolva</h2>
                <p>
                    Soñamos con cambiar el mundo una foto a la vez, es por eso que si piensas lo mismo te invitamos a ver nuestro trabajo.
                </p>
                <p>
                    <a class="btn btn-secondary" runat="server"  href="~/Evidencia">Evidencias &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Velocidad</h2>
                <p>
                   Tenemos un soporte en cualquier plataforma con una velocidad de respuesta que nos diferencia de la competencia.
                </p>
                <p>
                    <a class="btn btn-secondary" href="#">Comprobar</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Aplicación de escritorio</h2>
                <p>
                    No pierdas tiempo si no hay internet con nuestra aplicación de escritorio manten todo listo sin perder el tiempo 🧑🏻‍💻, descarga disponible para windows 10, 11 y 12.
                </p>
                <p>
                    <a class="btn btn-secondary" href="#">Descargar &raquo;</a>
                </p>
            </section>
        </div>
    </main>

</asp:Content>
