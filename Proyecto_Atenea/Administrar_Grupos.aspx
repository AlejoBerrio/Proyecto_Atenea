<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar_Grupos.aspx.cs" Inherits="Proyecto_Atenea.Administrar_Grupos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div> <br />
        <table style="width: 100%;">
            <tr>
                <td>ID Grupo:</td>
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
                     <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id_Grupo" HeaderText="ID Grupo" />
                <asp:BoundField DataField="Aula" HeaderText="Aula" />
                <asp:BoundField DataField="Ced_Profesor" HeaderText="Cedula Profesor" />
                <asp:BoundField DataField="Id_Horario" HeaderText="ID Horario" />
                <asp:BoundField DataField="Ced_Alumno" HeaderText="Cedula Alumno" />
                <asp:BoundField DataField="Id_Matricula" HeaderText="ID Matricula" />
                <asp:ButtonField DataTextField="Eliminar" HeaderText="Eliminar" Text="Eliminar" ButtonType="Image" HeaderImageUrl="~/Images/borrar.png" ImageUrl="~/Images/borrar.png" />
                <asp:ButtonField DataTextField="Modificar" HeaderText="Modificar" Text="Modificar" ButtonType="Image" HeaderImageUrl="~/Images/editar.gif" ImageUrl="~/Images/editar.gif" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
            
        </table>
    </div>
</asp:Content>
