<%@ Page Title="Contacto | Fotolva" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Fotolva_Web.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1 class="w-100 text-center"><%: Title %>.</h1>
        <p class="text-center">¡Gracias por interesarte en Fotolva! Puedes ponerte en contacto con nosotros a través de los siguientes medios:</p>
        <hr />
    <div class="row">
        <div class="col-md-6">
            <h2>Información de contacto</h2>
            <ul>
                <li><strong>Teléfono:</strong> +1 (123) 456-7890</li>
                <li><strong>Correo Electrónico:</strong> info@fotolva.com</li>
                <li><strong>Dirección:</strong> 123 Calle Principal, Ciudad Fotografía</li>
            </ul>

            <img class="m-auto w-75" width="250" runat="server" src="~/svg/contactImg.png" alt="conact svg">
        </div>
        <div class="col-md-6 px-4">
            <h2>Formulario de contacto</h2>
            <form>
                <div class="form-group pb-1  w-100">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control w-100" id="nombre" placeholder="Tu nombre">
                </div>
                <div class="form-group pb-1  w-100">
                    <label for="correo">Correo Electrónico</label>
                    <input type="email" class="form-control w-100" id="correo" placeholder="tucorreo@example.com">
                </div>
                <div class="form-group pb-1 w-100">
                    <label for="mensaje">Mensaje</label>
                    <textarea class="form-control w-100" id="mensaje" rows="4" placeholder="Escribe tu mensaje"></textarea>
                </div>
                <button type="submit" class="btn btn-primary mt-1">Enviar Mensaje 🪁</button>
            </form> 
        </div>
    </div>
    </main>
</asp:Content>
