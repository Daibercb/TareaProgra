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
                if (txtID.Text.Contains("") || txtNombre.Text.Contains("") || txtApellido.Text.Contains("") || txtContraseña.Text.Contains("") || txtEstado.Text.Contains(""))
                {
                    MessageBox.Show("No se permiten espacios en blanco, por favor ingrese los datos solicitados");
                }
                else
                {
                    usu.RegistrarEstudiante(txtID.Text, txtNombre.Text, txtApellido.Text, txtContraseña.Text, Convert.ToInt32(txtEstado.Text));
                    MessageBox.Show("Se registro con exito");

                }
                
            }
            catch (Exception ex)
            {
                MessageBox.Show("Problemas al registrar Datos");
               // ClientScript.RegisterClientScriptBlock(this.GetType(), "messagebox", "swal('¡Error al registrar los datos!','error')", true);
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtID.Text.Contains(""))
                {
                    MessageBox.Show("No se permiten espacios en blanco, por favor ingrese los datos solicitados");
                }
                else
                {
                    usu.ModificarUsuario(txtID.Text, txtNombre.Text, txtApellido.Text);
                    MessageBox.Show("Se ha Modificado con exito");
                }
              
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