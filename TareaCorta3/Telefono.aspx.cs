using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using CapaNegocios;

namespace TareaCorta3
{
    public partial class Telefono : System.Web.UI.Page
    {
        Contacto con = new Contacto();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            try
            {
                con.Telefono(Convert.ToInt32(txtIdentificacionTelefono.Text), txtTelefono.Text);
                con.agregartel();
                MessageBox.Show("Correcto");
            }
            catch (Exception ex)
            {

                throw new Exception(ex.InnerException.ToString());
            }
        }

        protected void btnModificarTelenfono_Click(object sender, EventArgs e)
        {
            try
            {
                con.ModificarTelefono(Convert.ToInt32(txtIdentificacionTelefono.Text), txtTelefono.Text);
                con.agregartel();
                MessageBox.Show("Se modificó con exito");
            }
            catch (Exception)
            {

                MessageBox.Show("Error al modificar");
            }
        }

      
    }
}