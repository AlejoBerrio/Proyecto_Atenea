<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar_Docentes.aspx.cs" Inherits="Proyecto_Atenea.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
          <div> <br />
        <table style="width: 100%;">
            <tr>
                <td colspan="4">
                     
                </td>
            </tr>
            <tr>
                <td>
                    Cedula
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtCedulaP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Nombres</td>
                <td colspan="3">
                    <asp:TextBox ID="txtNombreP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Apellidos</td>
                <td colspan="3">
                    <asp:TextBox ID="txtApellidosP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Correo</td>
                <td colspan="3">
                    <asp:TextBox ID="txtCorreoP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Direccion</td>
                <td colspan="3">
                    <asp:TextBox ID="txtDireccionP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Telefono</td>
                <td colspan="3">
                    <asp:TextBox ID="txtTelefonoP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tipo de Vinculacion</td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownListP" runat="server">
                        <asp:ListItem>Planta</asp:ListItem>
                        <asp:ListItem>Catedra</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Especialidad</td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownListEsp" runat="server">
                        <asp:ListItem>Rendimiento Fisico</asp:ListItem>
                        <asp:ListItem>Recreacion</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </td>
                <td>
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
                </td>
                 <td>
                     <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                </td>
                 <td>
                     <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridDocente" runat="server" AutoGenerateColumns="False" OnRowCommand="GridDocente_RowCommand">
            <Columns>
                <asp:BoundField DataField="Ced_Profesor" HeaderText="Cedula Doc" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre Doc" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellidos Doc" />
                <asp:BoundField DataField="Correo" HeaderText="Correo Doc" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion Doc" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono Doc" />
                <asp:BoundField DataField="Tipo_Vinculacion" HeaderText="Tipo de Vinculacion" />
                <asp:BoundField DataField="Especialidad" HeaderText="Especialidad Doc" />
                <asp:ButtonField HeaderText="Eliminar" Text="Eliminar" ButtonType="Image" HeaderImageUrl="~/Images/borrar.png" ImageUrl="~/Images/borrar.png" CommandName="Eliminar" />
                <asp:ButtonField HeaderText="Modificar" Text="Editar" ButtonType="Image" HeaderImageUrl="~/Images/editar.gif" ImageUrl="~/Images/editar.gif" CommandName="Editar" />
            </Columns>
        </asp:GridView>
    </div>
    </table>
</asp:Content>
