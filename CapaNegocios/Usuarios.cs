using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;

namespace CapaNegocios
{
    public class Usuarios
    {
        UsuarioDatos usu = new UsuarioDatos();

        public int RegistrarEstudiante(string id, string nombre, string apellidos, string contraseña, int estado)
        {
           
            return usu.RegistraUsuario(id, nombre, apellidos, contraseña, estado);
        }

        public void IniciarSesion(string usuario, string contraseña)
        {
             usu.Iniciosesion(usuario, contraseña);
        }
        public int ModificarUsuario(string id, string nombre, string apellidos)
        {

            return usu.ModificarUsuario(id, nombre, apellidos);
        }

        public void EliminarUsuario(string id)
        {
            usu.eliminarusuario(id);
        }

        public int ModificarContraseña(string id, string contraseña)
        {

            return usu.modificarContraseña(id, contraseña);
        }
        public int ModificarEstado(string id, int estado)
        {

            return usu.modificarEstado(id, estado);
        }
    }
}
