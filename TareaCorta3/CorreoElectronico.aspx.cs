using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using CapaNegocios;
namespace TareaCorta3
{
    public partial class CorreoElectronico : System.Web.UI.Page
    {
        Contacto con = new Contacto();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSiguiente2_Click(object sender, EventArgs e)
        {
            try
            {
                con.Correo(Convert.ToInt32( txtIdentificacionCorreo.Text), txtCorrreo.Text);
                con.agregacorreo();
                MessageBox.Show("Correcto");
            }
            catch (Exception ex)
            {

                throw new Exception(ex.InnerException.ToString());
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                con.ModificarCorreo(Convert.ToInt32(txtIdentificacionCorreo.Text), txtCorrreo.Text);
                con.agregacorreo();
                MessageBox.Show("Se modificó con exito");
            }
            catch (Exception)
            {

                MessageBox.Show("Error al modificar");
            }
        }
    }
}