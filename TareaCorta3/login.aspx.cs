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
    public partial class login : System.Web.UI.Page
    {
        Usuarios lo=new Usuarios();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresarUsu_Click(object sender, EventArgs e)
        {
            try
            {
                lo.IniciarSesion(txtNombreUsu.Text, txtContraseñaUsu.Text);
                Server.Transfer("RegistroContacto.aspx");
                MessageBox.Show("Inicio de sesion correcto");
            }
            catch (Exception ex)
            {
                //throw new Exception(ex.Message.ToString());
               MessageBox.Show("Usuario y/o contraseña incorrectos");
            }
        }

        protected void btnRegistrarUsu_Click(object sender, EventArgs e)
        {
            
            Server.Transfer("RegistrarUsuarios.aspx");
        }
    }
}