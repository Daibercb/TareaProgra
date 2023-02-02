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
                MessageBox.Show("Inicio de sesion correcto");
            }
            catch (Exception ex)
            {

                MessageBox.Show("Error al iniciar sesion");
            }
        }
    }
}