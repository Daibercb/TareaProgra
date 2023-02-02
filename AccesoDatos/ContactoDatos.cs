using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDatos
{

    public class ContactoDatos
    {
        Entities con = new Entities();

        public int RegistrarContacto(int id, string nom, string ape, string face,string insta, string tw)
        {
            return con.RegistrarContacto(id, nom, ape, face, insta, tw);
        }

        public int Telefono(int id, string Telefono)
        {
            
            return con.InsertarTelefono(id, Telefono);
        }
        public void AgregaTel()
        {
            con.AgregarTelefono();
        }
        public int Correo(int id, string Correo)
        {
            
            return con.IngresarCorreo(id, Correo);
        }
        public void AgregaCorreo()
        {
            con.AgregaCorreo();
        }


    }
}
