using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EJERCICIO2
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un ID de pais";
                txtID.Focus();
                return;
            }

            if (!CADEncuesta.CADPaises.ExistePaises(txtID.Text))
            {
                lblMensaje.Text = "Pais no existe";
                txtID.Focus();
                return;
            }

            CADEncuesta.DSEncuesta.PaisesDataTable miPais =
            CADEncuesta.CADPaises.GetPaises(txtID.Text);

            foreach (DataRow row in miPais.Rows)
            {
                txtPais.Text = row["Pais"].ToString();
               

                lblMensaje.Text = "Pais Consultado";

            }
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un ID de pais";
                txtID.Focus();
                return;
            }

            if (CADEncuesta.CADPaises.ExistePaises(txtID.Text))
            {
                lblMensaje.Text = "Pais no existe";
                txtID.Focus();
                return;
            }

            if (txtPais.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un Nombre de pais";
                txtPais.Focus();
                return;
            }

            lblMensaje.Text = CADEncuesta.CADPaises.NuevoPais(txtID.Text,txtPais.Text);

            //Para actualizar el gridview
            GVPaises.DataBind();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un ID de pais";
                txtID.Focus();
                return;
            }

            if (!CADEncuesta.CADPaises.ExistePaises(txtID.Text))
            {
                lblMensaje.Text = "Pais no existe";
                txtID.Focus();
                return;
            }

            if (txtPais.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un Nombre de pais";
                txtPais.Focus();
                return;
            }

            lblMensaje.Text = CADEncuesta.CADPaises.Modificar( txtPais.Text, txtID.Text);

            //Para actualizar el gridview
            GVPaises.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un ID de pais";
                txtID.Focus();
                return;
            }

            if (!CADEncuesta.CADPaises.ExistePaises(txtID.Text))
            {
                lblMensaje.Text = "Pais no existe";
                txtID.Focus();
                return;
            }
            lblMensaje.Text = CADEncuesta.CADPaises.Eliminar(txtID.Text);

            //Para actualizar el gridview
            GVPaises.DataBind();

            txtID.Text = " ";
            txtPais.Text = " ";

            txtID.Focus();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtID.Text = " ";
            txtPais.Text = " ";

            txtID.Focus();

        }
    }
}