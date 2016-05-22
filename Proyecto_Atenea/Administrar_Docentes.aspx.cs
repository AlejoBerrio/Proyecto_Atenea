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

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            List<Docente> listadct = new List<Docente>();

            Docente nuevoDocente = new Docente();

            nuevoDocente.Ced_Profesor = txtCedulaP.Text;
            nuevoDocente.Nombre = txtNombreP.Text;
            nuevoDocente.Apellido = txtApellidosP.Text;
            nuevoDocente.Correo = txtCorreoP.Text;
            nuevoDocente.Direccion = txtDireccionP.Text;
            nuevoDocente.Telefono = txtTelefonoP.Text;
            nuevoDocente.Tipo_Vinculacion = DropDownListP.Text;
            nuevoDocente.Especialidad = DropDownListEsp.Text;

            if (Session["Docentes"] != null)
            {
                listadct = ((List<Docente>)Session["Docentes"]);
            }

            listadct.Add(nuevoDocente);
            Session["Docentes"] = listadct;

            GridDocente.DataSource = listadct;
            GridDocente.DataBind();

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
            {
                string param_cedulaD = txtCedulaP.Text;

                List<Docente> listadct = new List<Docente>();
                if (Session["Docentes"] != null)
                {
                    listadct = ((List<Docente>)Session["Docentes"]);
                }

                int indiceLista =
                listadct.FindIndex(s => s.Ced_Profesor == param_cedulaD);

                listadct[indiceLista].Nombre = txtNombreP.Text;
                listadct[indiceLista].Apellido = txtApellidosP.Text;
                listadct[indiceLista].Correo = txtCorreoP.Text;
                listadct[indiceLista].Direccion = txtDireccionP.Text;
                listadct[indiceLista].Telefono = txtTelefonoP.Text;
                listadct[indiceLista].Tipo_Vinculacion = DropDownListP.Text;
                listadct[indiceLista].Especialidad = DropDownListEsp.Text;

                Session["Alumnos"] = listadct;// guarde los registros

                GridDocente.DataSource = listadct;
                GridDocente.DataBind();

                txtCedulaP.Enabled = true;

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
    }
}