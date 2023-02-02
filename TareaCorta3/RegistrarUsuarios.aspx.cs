using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
    }
}