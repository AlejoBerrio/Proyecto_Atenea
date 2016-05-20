<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar_Matricula.aspx.cs" Inherits="Proyecto_Atenea.Matricula" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%;">
       <div>
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td>Codigo Matricula</td>
                <td colspan="3">
                    <asp:TextBox ID="txtCodMatricula" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>Grupo</td>
                <td colspan="3">
                    <asp:TextBox ID="txtGrupo" runat="server"></asp:TextBox>
                </td>
             
            </tr>
            <tr>
                <td>Alumno</td>
                <td colspan="3">
                    <asp:TextBox ID="txtAlumno" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>Valor Total</td>
                <td colspan="3">
                    <asp:TextBox ID="txtValorTotal" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>Fecha</td>
                <td colspan="3">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
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

                    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" />

                </td>

            </tr>
        </table> <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Cod_Matricula" HeaderText="Codigo Matricula" />
                <asp:BoundField DataField="ID_Grupo" HeaderText="Grupo" />
                <asp:BoundField DataField="ID_Alumno" HeaderText="ID_Alumnos" />
                <asp:BoundField DataField="Valor_Total" HeaderText="Valor Total Matricula" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                <asp:ButtonField ButtonType="Image" DataTextField="Eliminar" HeaderText="Eliminar" Text="Eliminar" />
                <asp:ButtonField ButtonType="Image" DataTextField="Modificar" HeaderText="Modificar" Text="Modificar" />
            </Columns>
        </asp:GridView>
    </div>
    </table>
</asp:Content>
