using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;

namespace CapaNegocios
{
    public class Contacto
    {
        ContactoDatos con=new ContactoDatos();

       public int IngresoContacto(int id, string nom, string ape, string face, string insta, string tw)
        {

            return con.RegistrarContacto(id,nom,ape,face,insta, tw);
        }
        public int Telefono(int id, string Telefono)
        {
            return con.Telefono(id,Telefono);
        }
        public void agregartel()
        {
            con.AgregaTel();
        }
        public int Correo(int id, string correo)
        {
            return con.Correo(id, correo);
        }

        public void agregacorreo()
        {
            con.AgregaCorreo();
        }

        public int ModificarContacto(int id, string nom, string ape, string face, string insta, string tw)
        {
            return con.modificarContacto(id, nom, ape, face, insta, tw);
        }

        public int ModificarCorreo(int id, string correo)
        {
            return con.ModificarCorreo(id, correo);
        }

        public int ModificarTelefono(int id, string Telefono)
        {
            return con.ModificarTel(id, Telefono);
        }

        public void EliminarContacto(int id)
        {
            con.EliminarContacto(id);
        }

        public void EliminarCorreo(int id)
        {
            con.EliminarCorreo(id);
        }

        public void EliminarTel(int id)
        {
            con.EliminarTel(id);
        }
    }
}
