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
    }
}
