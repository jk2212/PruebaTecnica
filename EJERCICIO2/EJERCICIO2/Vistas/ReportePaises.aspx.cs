using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EJERCICIO2
{
    public partial class Formulario_web13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            if (txtPais.Text == "")
            {
                lblMensaje.Text = "Debe ingresar un ID de pais";
                txtPais.Focus();
                return;
            }

            if (!CADEncuesta.CADPaises.ExisteRPaises(txtPais.Text))
            {
                lblMensaje.Text = "Pais no existe";
                txtPais.Focus();
                return;
            }

            CADEncuesta.DSEncuesta.PaisesDataTable miPais =
            CADEncuesta.CADPaises.GetReporte(txtPais.Text);

            foreach (DataRow row in miPais.Rows)
            {
                txtPais.Text = row["Pais"].ToString();


                lblMensaje.Text = "Pais Consultado";


                //Para actualizar el gridview
                GVRPaises.DataBind();

                txtPais.Text = " ";

            }
        }
    }
}