<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto_Atenea._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="jumbotron">
        <h2 align="Center">ESCUELA DE DEPORTES ATENEA</h2>
        <p class="lead">"El deporte delega en el cuerpo alguna de las virtudes más fuertes del alma: la energía, la audacia, la paciencia" <br /> Jean Giraudoux.</p>
    </div>
    <div class="row">
        <div class="col-md-6">
            <IMG src="Images/Juegos_Olimpicos.jpg" width="450" height="250"/>
            <p>
            El deporte es una actividad que el ser humano realiza principalmente con <br /> objetivos recreativos aunque en algunos casos puede convertirse en la <br /> profesión de una persona si la misma se dedica de manera intensiva a ella <br /> y perfecciona su técnica y sus resultados de manera permanente.
            </p>
        </div>
        <div class="col-md-6">
            <IMG src="Images/Rendimiento_Fisico.jpg" width="450" height="250"/>
            <p>
                El rendimiento físico de un deportista está íntimamente ligado al <br /> Metabolismo Energético, que en función del tipo de actividad deportiva, <br /> duración e intensidad va tener unas claves diferentes.
            </p>
        </div>
    </div>
</asp:Content>
