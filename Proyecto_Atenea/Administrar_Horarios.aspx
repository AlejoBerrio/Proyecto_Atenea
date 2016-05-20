﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar_Horarios.aspx.cs" Inherits="Proyecto_Atenea.Administrar_Horarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div> <br />
        <table style="width: 100%;">
            <tr>
                <td>ID_Grupo:</td>
                <td>
                    <asp:TextBox ID="txtId_Grupo" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>Aula:</td>
                <td>
                    <asp:TextBox ID="txtAula" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>Cedula Profesor:</td>
                <td>
                    <asp:TextBox ID="txtCed_Profesor" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>ID Horario:</td>
                <td>
                    <asp:TextBox ID="txtHorario" runat="server"></asp:TextBox>
                </td>
                
            </tr>
             <tr>
                <td>Cedula Alumno:</td>
                <td>
                    <asp:TextBox ID="txtCed_Alumno" runat="server"></asp:TextBox>
                 </td>
                
            </tr>
             <tr>
                <td>ID Matricula:</td>
                <td>
                    <asp:TextBox ID="txtId_matricula" runat="server"></asp:TextBox>
                 </td> 
            </tr>
            <tr>
                <td></td>
                 <td></td>
                 <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
                </td>
                <td>
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
                </td>
                 <td>
                     <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                </td>
                 <td>
                     <asp:Button ID="btnConsultar" runat="server" Text="Consultar" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                   
            
                </td>
            </tr>
            
        </table>
         <div>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id_Horario" HeaderText="ID MHorario" />
                <asp:BoundField DataField="Aula" HeaderText="Aula de Clase" />
                <asp:BoundField DataField="Horario_Inicio" HeaderText="Horario Inicio" />
                <asp:BoundField DataField="Horario_Fin" HeaderText="Horario Fin" />
                <asp:BoundField DataField="ID_Grupo" HeaderText="ID Grupo" />
                <asp:BoundField DataField="Dia" HeaderText="Dia" />
                <asp:ButtonField DataTextField="Eliminar" HeaderText="Eliminar" Text="Eliminar" />
                <asp:ButtonField DataTextField="Modificar" HeaderText="Modificar" Text="Modificar" />
            </Columns>
        </asp:GridView>


         </div>

    </div>
</asp:Content>
