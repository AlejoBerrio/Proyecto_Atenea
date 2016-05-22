<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar_Alumnos.aspx.cs" Inherits="Proyecto_Atenea.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>--%>
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
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Nombres</td>
                <td colspan="3">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Apellidos</td>
                <td colspan="3">
                    <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Correo</td>
                <td colspan="3">
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Direccion</td>
                <td colspan="3">
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Telefono</td>
                <td colspan="3">
                    <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Estado</td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownListAlu" runat="server">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Inactivo</asp:ListItem>
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
        <asp:GridView ID="GridAlumno" runat="server" AutoGenerateColumns="False" OnRowCommand="GridAlumno_RowCommand" Width="845px">
            <Columns>
                <asp:BoundField DataField="Cedula" HeaderText="Cedula Alumno" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre Alumno" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellidos Alumno" />
                <asp:BoundField DataField="Correo" HeaderText="Correo Alumno" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion Alumno" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono Alumno" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" />
                <asp:ButtonField HeaderText="Eliminar" Text="Eliminar" ButtonType="Image" HeaderImageUrl="~/Images/borrar.png" ImageUrl="~/Images/borrar.png" CommandName="Eliminar" />
                <asp:ButtonField HeaderText="Modificar" Text="Editar" ButtonType="Image" HeaderImageUrl="~/Images/editar.gif" ImageUrl="~/Images/editar.gif" CommandName="Editar" />
            </Columns>
        </asp:GridView>
    </div>
    </table>
</asp:Content>
