using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using CapaNegocios;
namespace TareaCorta3
{
    public partial class RegistrarUsuarios : System.Web.UI.Page
    {
        Usuarios usu = new Usuarios();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                usu.RegistrarEstudiante(txtID.Text, txtNombre.Text, txtApellido.Text, txtContraseña.Text,Convert.ToInt32( txtEstado.Text));
                ClientScript.RegisterClientScriptBlock(this.GetType(), "messagebox", "swal('¡Los datos fueron validados correctamente!','Registrado','success')", true);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
               // ClientScript.RegisterClientScriptBlock(this.GetType(), "messagebox", "swal('¡Error al registrar los datos!','error')", true);
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                usu.ModificarUsuario(txtID.Text, txtNombre.Text, txtApellido.Text);
                MessageBox.Show("Se ha Modificado con exito");
            }
            catch (Exception)
            {

                MessageBox.Show("Error al modificar Datos");
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                usu.EliminarUsuario(txtID.Text);

                MessageBox.Show("Datos Eliminados con exito");
            }
            catch (Exception)
            {

                MessageBox.Show("Error al eliminar los datos");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("CambioContraseña.aspx");
        }
    }
}