using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Atenea
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["Alumnos"] = new List<Alumno>();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            List<Alumno> listaAlc = new List<Alumno>();

            Alumno nuevoAlumno = new Alumno();

            nuevoAlumno.Cedula = txtCedula.Text;
            nuevoAlumno.Nombre = txtNombre.Text;
            nuevoAlumno.Apellido = txtApellidos.Text;
            nuevoAlumno.Correo = txtCorreo.Text;
            nuevoAlumno.Direccion = txtDireccion.Text;
            nuevoAlumno.Telefono = txtTelefono.Text;
            nuevoAlumno.Estado = DropDownListAlu.Text;

            if (Session["Alumnos"] != null)
            {
                listaAlc = ((List<Alumno>)Session["Alumnos"]);
            }

            listaAlc.Add(nuevoAlumno);
            Session["Alumnos"] = listaAlc;

            GridAlumno.DataSource = listaAlc;
            GridAlumno.DataBind();

        }

        protected void GridAlumno_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int indiceFila = Convert.ToInt32(e.CommandArgument.ToString());

            if (e.CommandName == "Editar")
            {
                txtCedula.Text = GridAlumno.Rows[indiceFila].Cells[0].Text;
                txtNombre.Text = GridAlumno.Rows[indiceFila].Cells[1].Text;
                txtApellidos.Text = GridAlumno.Rows[indiceFila].Cells[2].Text;
                txtCorreo.Text = GridAlumno.Rows[indiceFila].Cells[3].Text;
                txtDireccion.Text = GridAlumno.Rows[indiceFila].Cells[4].Text;
                txtTelefono.Text = GridAlumno.Rows[indiceFila].Cells[5].Text;
                DropDownListAlu.Text = GridAlumno.Rows[indiceFila].Cells[6].Text;

                txtCedula.Enabled = false;
            }


            if (e.CommandName == "Eliminar")
            {
                txtCedula.Text = GridAlumno.Rows[indiceFila].Cells[0].Text;
                txtNombre.Text = GridAlumno.Rows[indiceFila].Cells[1].Text;
                txtApellidos.Text = GridAlumno.Rows[indiceFila].Cells[2].Text;
                txtCorreo.Text = GridAlumno.Rows[indiceFila].Cells[3].Text;
                txtDireccion.Text = GridAlumno.Rows[indiceFila].Cells[4].Text;
                txtTelefono.Text = GridAlumno.Rows[indiceFila].Cells[5].Text;
                DropDownListAlu.Text = GridAlumno.Rows[indiceFila].Cells[6].Text;

                txtCedula.Enabled = false;
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            string param_cedula = txtCedula.Text;

            List<Alumno> listaAlc = new List<Alumno>();
            if (Session["Alumnos"] != null)
            {
                listaAlc = ((List<Alumno>)Session["Alumnos"]);
            }

            int indiceLista =
            listaAlc.FindIndex(s => s.Cedula == param_cedula);

            listaAlc[indiceLista].Nombre = txtNombre.Text;
            listaAlc[indiceLista].Apellido = txtApellidos.Text;
            listaAlc[indiceLista].Correo = txtCorreo.Text;
            listaAlc[indiceLista].Direccion = txtDireccion.Text;
            listaAlc[indiceLista].Telefono = txtTelefono.Text;
            listaAlc[indiceLista].Estado = DropDownListAlu.Text;

            Session["Alumnos"] = listaAlc;// guarde los registros

            GridAlumno.DataSource = listaAlc;
            GridAlumno.DataBind();

            txtCedula.Enabled = true;

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string param_cedula = txtCedula.Text;

            List<Alumno> listaAlc = new List<Alumno>();
            if (Session["alumnos"] != null)
            {
                listaAlc = ((List<Alumno>)Session["Alumnos"]);
            }

            int indiceLista =
            listaAlc.FindIndex(s => s.Cedula == param_cedula);

            listaAlc.RemoveAt(indiceLista);

            Session["Alumnos"] = listaAlc;// guarde los registros

            GridAlumno.DataSource = listaAlc;
            GridAlumno.DataBind();

            txtCedula.Enabled = true;
        }
    }
}

