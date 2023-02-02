using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDatos
{

    public class UsuarioDatos
    {
        Entities ta = new Entities();

        public int RegistraUsuario(string id, string nombre, string apellidos, string contraseña,int estado)
        {
            string result = string.Empty;
            byte[] OcultarString = System.Text.Encoding.Unicode.GetBytes(contraseña);
            result = Convert.ToBase64String(OcultarString);
            //return result;
            return ta.RegistrarUsuario(id, nombre, apellidos, result, estado);
           
        }
        public void Iniciosesion(string usuario, string contraseña)
        {
             ta.InicioSesion(usuario,contraseña);

        }
    }
}
