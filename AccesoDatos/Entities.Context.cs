﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AccesoDatos
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Contacto> Contacto { get; set; }
        public virtual DbSet<CorreoElectronico> CorreoElectronico { get; set; }
        public virtual DbSet<Telefonos> Telefonos { get; set; }
        public virtual DbSet<Usuarios> Usuarios { get; set; }
    
        public virtual int AgregaCorreo()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("AgregaCorreo");
        }
    
        public virtual int AgregarTelefono()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("AgregarTelefono");
        }
    
        public virtual int IngresarCorreo(Nullable<int> id, string correo)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var correoParameter = correo != null ?
                new ObjectParameter("correo", correo) :
                new ObjectParameter("correo", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("IngresarCorreo", idParameter, correoParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> InicioSesion(string usuario, string password)
        {
            var usuarioParameter = usuario != null ?
                new ObjectParameter("usuario", usuario) :
                new ObjectParameter("usuario", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("InicioSesion", usuarioParameter, passwordParameter);
        }
    
        public virtual int InsertarTelefono(Nullable<int> id, string numero)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var numeroParameter = numero != null ?
                new ObjectParameter("numero", numero) :
                new ObjectParameter("numero", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertarTelefono", idParameter, numeroParameter);
        }
    
        public virtual int RegistrarContacto(Nullable<int> id, string nom, string ape, string face, string insta, string twi)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var nomParameter = nom != null ?
                new ObjectParameter("nom", nom) :
                new ObjectParameter("nom", typeof(string));
    
            var apeParameter = ape != null ?
                new ObjectParameter("ape", ape) :
                new ObjectParameter("ape", typeof(string));
    
            var faceParameter = face != null ?
                new ObjectParameter("face", face) :
                new ObjectParameter("face", typeof(string));
    
            var instaParameter = insta != null ?
                new ObjectParameter("insta", insta) :
                new ObjectParameter("insta", typeof(string));
    
            var twiParameter = twi != null ?
                new ObjectParameter("twi", twi) :
                new ObjectParameter("twi", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("RegistrarContacto", idParameter, nomParameter, apeParameter, faceParameter, instaParameter, twiParameter);
        }
    
        public virtual int RegistrarUsuario(string id, string nom, string ape, string contraseña, Nullable<int> estado)
        {
            var idParameter = id != null ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(string));
    
            var nomParameter = nom != null ?
                new ObjectParameter("nom", nom) :
                new ObjectParameter("nom", typeof(string));
    
            var apeParameter = ape != null ?
                new ObjectParameter("ape", ape) :
                new ObjectParameter("ape", typeof(string));
    
            var contraseñaParameter = contraseña != null ?
                new ObjectParameter("contraseña", contraseña) :
                new ObjectParameter("contraseña", typeof(string));
    
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("RegistrarUsuario", idParameter, nomParameter, apeParameter, contraseñaParameter, estadoParameter);
        }
    
        public virtual int eliminarContacto(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("eliminarContacto", idParameter);
        }
    
        public virtual int eliminarCorreo(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("eliminarCorreo", idParameter);
        }
    
        public virtual int eliminarTelefono(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("eliminarTelefono", idParameter);
        }
    
        public virtual int eliminarUsuario(string id)
        {
            var idParameter = id != null ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("eliminarUsuario", idParameter);
        }
    
        public virtual int ModificarContacto(Nullable<int> identificacion, string nombre, string apellido, string facebook, string instagram, string twitter)
        {
            var identificacionParameter = identificacion.HasValue ?
                new ObjectParameter("Identificacion", identificacion) :
                new ObjectParameter("Identificacion", typeof(int));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var apellidoParameter = apellido != null ?
                new ObjectParameter("Apellido", apellido) :
                new ObjectParameter("Apellido", typeof(string));
    
            var facebookParameter = facebook != null ?
                new ObjectParameter("Facebook", facebook) :
                new ObjectParameter("Facebook", typeof(string));
    
            var instagramParameter = instagram != null ?
                new ObjectParameter("Instagram", instagram) :
                new ObjectParameter("Instagram", typeof(string));
    
            var twitterParameter = twitter != null ?
                new ObjectParameter("Twitter", twitter) :
                new ObjectParameter("Twitter", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ModificarContacto", identificacionParameter, nombreParameter, apellidoParameter, facebookParameter, instagramParameter, twitterParameter);
        }
    
        public virtual int ModificarCorreo(Nullable<int> id, string correo)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            var correoParameter = correo != null ?
                new ObjectParameter("Correo", correo) :
                new ObjectParameter("Correo", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ModificarCorreo", idParameter, correoParameter);
        }
    
        public virtual int ModificarTele(Nullable<int> id, string telefono)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            var telefonoParameter = telefono != null ?
                new ObjectParameter("Telefono", telefono) :
                new ObjectParameter("Telefono", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ModificarTele", idParameter, telefonoParameter);
        }
    
        public virtual int ModificarUsuarios(string id, string nombre, string apellidos)
        {
            var idParameter = id != null ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            var apellidosParameter = apellidos != null ?
                new ObjectParameter("apellidos", apellidos) :
                new ObjectParameter("apellidos", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ModificarUsuarios", idParameter, nombreParameter, apellidosParameter);
        }
    
        public virtual int ModificarContraseña(string id, string contraseña)
        {
            var idParameter = id != null ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(string));
    
            var contraseñaParameter = contraseña != null ?
                new ObjectParameter("Contraseña", contraseña) :
                new ObjectParameter("Contraseña", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ModificarContraseña", idParameter, contraseñaParameter);
        }
    
        public virtual int ModificarEstado(string id, Nullable<int> estado)
        {
            var idParameter = id != null ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(string));
    
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ModificarEstado", idParameter, estadoParameter);
        }
    }
}
