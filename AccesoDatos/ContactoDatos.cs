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



    }
}
