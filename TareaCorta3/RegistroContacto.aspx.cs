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
                con.IngresoContacto(Convert.ToInt32(TxtId.Text),Txtnom.Text,Txtape.Text,Txtface.Text,Txtinsta.Text,TxtTwi.Text);
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
    }
}