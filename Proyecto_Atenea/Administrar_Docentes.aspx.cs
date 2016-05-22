using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Atenea
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["Docentes"] = new List<Docente>();
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            using (DB_AteneaEntities entidad = new DB_AteneaEntities()) //Usar DB para guardar los registros
            {

                Docente nuevodct = new Docente();

                nuevodct.Ced_Profesor = txtCedulaP.Text;
                nuevodct.Nombre = txtNombreP.Text;
                nuevodct.Apellido = txtApellidosP.Text;
                nuevodct.Correo = txtCorreoP.Text;
                nuevodct.Direccion = txtDireccionP.Text;
                nuevodct.Telefono = txtTelefonoP.Text;
                nuevodct.Especialidad = DropDownListEsp.Text;
                nuevodct.Tipo_Vinculacion = DropDownListP.Text;

                entidad.Docente.Add(nuevodct);

                entidad.SaveChanges();
            }
        }

        protected void GridDocente_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int indiceFila = Convert.ToInt32(e.CommandArgument.ToString());

            if (e.CommandName == "Editar")
            {
                txtCedulaP.Text = GridDocente.Rows[indiceFila].Cells[0].Text;
                txtNombreP.Text = GridDocente.Rows[indiceFila].Cells[1].Text;
                txtApellidosP.Text = GridDocente.Rows[indiceFila].Cells[2].Text;
                txtCorreoP.Text = GridDocente.Rows[indiceFila].Cells[3].Text;
                txtDireccionP.Text = GridDocente.Rows[indiceFila].Cells[4].Text;
                txtTelefonoP.Text = GridDocente.Rows[indiceFila].Cells[5].Text;
                DropDownListP.Text = GridDocente.Rows[indiceFila].Cells[6].Text;
                DropDownListEsp.Text = GridDocente.Rows[indiceFila].Cells[7].Text;

                txtCedulaP.Enabled = false;
            }


            if (e.CommandName == "Eliminar")
            {
                txtCedulaP.Text = GridDocente.Rows[indiceFila].Cells[0].Text;
                txtNombreP.Text = GridDocente.Rows[indiceFila].Cells[1].Text;
                txtApellidosP.Text = GridDocente.Rows[indiceFila].Cells[2].Text;
                txtCorreoP.Text = GridDocente.Rows[indiceFila].Cells[3].Text;
                txtDireccionP.Text = GridDocente.Rows[indiceFila].Cells[4].Text;
                txtTelefonoP.Text = GridDocente.Rows[indiceFila].Cells[5].Text;
                DropDownListP.Text = GridDocente.Rows[indiceFila].Cells[6].Text;
                DropDownListEsp.Text = GridDocente.Rows[indiceFila].Cells[7].Text;

                txtCedulaP.Enabled = false;
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            List<Docente> listadct = new List<Docente>();

            using (DB_AteneaEntities entidad = new DB_AteneaEntities()) //Usar DB para consultar los registros
            {
                string cedula = txtCedulaP.Text;
                Docente dct = entidad.Docente.Single(D => D.Ced_Profesor == cedula);
                dct.Nombre = txtNombreP.Text;
                dct.Apellido = txtApellidosP.Text;
                dct.Correo = txtCorreoP.Text;
                dct.Direccion = txtDireccionP.Text;
                dct.Telefono = txtTelefonoP.Text;
                dct.Tipo_Vinculacion = DropDownListP.Text;
                dct.Especialidad = DropDownListEsp.Text;

                entidad.SaveChanges();

                listadct = (from Docente in entidad.Docente select Docente).ToList();

                GridDocente.DataSource = listadct;
                GridDocente.DataBind();

            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string param_cedulaD = txtCedulaP.Text;

            List<Docente> listadct = new List<Docente>();
            if (Session["Docentes"] != null)
            {
                listadct = ((List<Docente>)Session["Docentes"]);
            }

            int indiceLista =
            listadct.FindIndex(s => s.Ced_Profesor == param_cedulaD);

            listadct.RemoveAt(indiceLista);

            Session["Docentes"] = listadct;// guarde los registros

            GridDocente.DataSource = listadct;
            GridDocente.DataBind();

            txtCedulaP.Enabled = true;
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            List<Docente> listadct = new List<Docente>();

            using (DB_AteneaEntities entidad = new DB_AteneaEntities()) //Usar DB para consultar los registros
            {
                listadct = (from Docente in entidad.Docente select Docente).ToList();

                GridDocente.DataSource = listadct;
                GridDocente.DataBind();
            }

        }
    }
}