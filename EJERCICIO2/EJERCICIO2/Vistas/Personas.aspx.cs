using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EJERCICIO2
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "") 
            {
                lblMensaje.Text = "Debe ingresar un ID de persona";
                txtID.Focus();
                return;
            } 

            if (!CADEncuesta.CADPersonas.ExistePersona(txtID.Text))
            {
                lblMensaje.Text = "Persona no existe";
                txtID.Focus();
                return;
            }

            CADEncuesta.DSEncuesta.PersonasDataTable miPersona =
            CADEncuesta.CADPersonas.GetPersonas(txtID.Text);

            foreach(DataRow row in  miPersona.Rows)
            {
                txtNombre.Text = row["Nombre"].ToString();
                txtApellido.Text = row["Apellido"].ToString();
                calFechaNacimiento.SelectedDate = Convert.ToDateTime(row["FechaNacimiento"]);
                 ddlPais.SelectedItem.Value = Convert.ToString( row["Pais"]);

                lblMensaje.Text = "Cliente Consultado";

            }


        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un ID de persona";
                txtID.Focus();
                return;
            }

            if (CADEncuesta.CADPersonas.ExistePersona(txtID.Text))
            {
                lblMensaje.Text = "Persona ya existe";
                txtID.Focus();
                return;
            }

            if (txtNombre.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un Nombre de persona";
                txtNombre.Focus();
                return;
            }

            if (txtApellido.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un Apellido de persona";
                txtApellido.Focus();
                return;
            }
                        
          

            lblMensaje.Text = CADEncuesta.CADPersonas.NuevaPersona(txtID.Text, txtNombre.Text,
                txtApellido.Text, calFechaNacimiento.SelectedDate, 
                calFechaFallecimiento.SelectedDate, Convert.ToString(ddlPais.SelectedValue));

            //Para actualizar el gridview
            GVPersonas.DataBind();

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtID.Text = " ";
            txtNombre.Text = " ";
            txtApellido.Text = " ";

            txtID.Focus();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un ID de persona";
                txtID.Focus();
                return;
            }

            if (!CADEncuesta.CADPersonas.ExistePersona(txtID.Text))
            {
                lblMensaje.Text = "Persona no existe";
                txtID.Focus();
                return;
            }

            if (txtNombre.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un Nombre de persona";
                txtNombre.Focus();
                return;
            }

            if (txtApellido.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un Apellido de persona";
                txtApellido.Focus();
                return;
            }



            lblMensaje.Text = CADEncuesta.CADPersonas.Modificar( txtNombre.Text,
                txtApellido.Text, calFechaNacimiento.SelectedDate,
                calFechaFallecimiento.SelectedDate, Convert.ToString(ddlPais.SelectedValue), txtID.Text);

            //Para actualizar el gridview
            GVPersonas.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un ID de persona";
                txtID.Focus();
                return;
            }

            if (!CADEncuesta.CADPersonas.ExistePersona(txtID.Text))
            {
                lblMensaje.Text = "Persona no existe";
                txtID.Focus();
                return;
            }

            lblMensaje.Text = CADEncuesta.CADPersonas.Eliminar ( txtID.Text);

            txtID.Text = " ";
            txtNombre.Text = " ";
            txtApellido.Text = " ";

            txtID.Focus();

            //Para actualizar el gridview
            GVPersonas.DataBind();

        }
    }
}