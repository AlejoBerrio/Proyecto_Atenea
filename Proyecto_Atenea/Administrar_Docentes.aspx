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
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Planta</asp:ListItem>
                        <asp:ListItem>Catedra</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Especialidad</td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Rendimiento Fisico</asp:ListItem>
                        <asp:ListItem>Recreacion</asp:ListItem>
                    </asp:DropDownList>
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
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Cedula" HeaderText="Cedula Profesor" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre Profesor" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos Profesor" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono Profesor" />
                <asp:BoundField DataField="Vinculacion" HeaderText="Tipo de Vinculacion" />
                <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" />
                <asp:ButtonField DataTextField="Eliminar" HeaderText="Eliminar" Text="Eliminar" ButtonType="Image" HeaderImageUrl="~/Images/borrar.png" ImageUrl="~/Images/borrar.png" />
                <asp:ButtonField DataTextField="Modificar" HeaderText="Modificar" Text="Modificar" ButtonType="Image" HeaderImageUrl="~/Images/editar.gif" ImageUrl="~/Images/editar.gif" />
            </Columns>
        </asp:GridView>
    </div>
    </table>
</asp:Content>
