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
    public partial class CambioContraseña : System.Web.UI.Page
    {
        Usuarios usu =new Usuarios();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btrCambiarC_Click(object sender, EventArgs e)
        {
            try
            {
                usu.ModificarContraseña(txtUsuario.Text, txtNContraseña.Text);
                MessageBox.Show("Datos Modificados con exito");
            }
            catch (Exception)
            {

                MessageBox.Show("Error al modificar");
            }
        }

        protected void btnCambiarEstado_Click(object sender, EventArgs e)
        {
            try
            {
                usu.ModificarEstado(txtUsuario.Text, Convert.ToInt32(txtEstado.Text));
                MessageBox.Show("Datos Modificados con exito");
            }
            catch (Exception)
            {

                MessageBox.Show("Error al modificar");
            }
        }
    }
}