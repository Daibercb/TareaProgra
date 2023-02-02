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
    public partial class RegistroContacto : System.Web.UI.Page
    {
        Contacto con = new Contacto();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            try
            {
                con.IngresoContacto(Convert.ToInt32(TxtId.Text),Txtnom.Text,Txtape.Text,txtFaceb.Text,Txtinsta.Text,TxtTwi.Text);
                MessageBox.Show("Datos Ingresados Correctamente");
            }
            catch (Exception ex)
            {
                throw  new Exception (ex.InnerException.ToString());
                
            }
        }

        protected void BtnCorreo_Click(object sender, EventArgs e)
        {
            Server.Transfer("CorreoElectronico.aspx");
        }

        protected void btnTelefono_Click(object sender, EventArgs e)
        {
            Server.Transfer("Telefono.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                con.EliminarTel(Convert.ToInt32( TxtId.Text));
                con.EliminarCorreo(Convert.ToInt32(TxtId.Text));
                con.EliminarContacto(Convert.ToInt32(TxtId.Text));

                MessageBox.Show("Datos Eliminados con exito");
            }
            catch (Exception)
            {

                MessageBox.Show("Error al eliminar los datos");
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                con.ModificarContacto(Convert.ToInt32(TxtId.Text), Txtnom.Text, Txtape.Text, txtFaceb.Text, Txtinsta.Text, TxtTwi.Text);
                MessageBox.Show("Se ha Modificado con exito");
            }
            catch (Exception)
            {

                MessageBox.Show("Error al modificar Datos");
            }
        }

    }
}