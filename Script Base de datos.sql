USE [Semana3PV]
GO
/****** Object:  User [Base]    Script Date: 02/02/2023 13:29:14 ******/
CREATE USER [Base] FOR LOGIN [Base] WITH DEFAULT_SCHEMA=[Base]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Base]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Base]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Base]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Base]
GO
/****** Object:  Table [Base].[Contacto]    Script Date: 02/02/2023 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Base].[Contacto](
	[Identificacion] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Telefonos] [varchar](50) NULL,
	[Correos] [varchar](50) NULL,
	[Facebook] [varchar](50) NULL,
	[Instagram] [varchar](50) NULL,
	[Twitter] [varchar](50) NULL,
 CONSTRAINT [PK_Contacto] PRIMARY KEY CLUSTERED 
(
	[Identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Base].[CorreoElectronico]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Base].[CorreoElectronico](
	[IDContacto] [int] NOT NULL,
	[Correoelectronico] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CorreoElectronico] PRIMARY KEY CLUSTERED 
(
	[IDContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Base].[Telefonos]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Base].[Telefonos](
	[IDContacto] [int] NOT NULL,
	[Telefonos] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Telefonos] PRIMARY KEY CLUSTERED 
(
	[IDContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Base].[Usuarios]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Base].[Usuarios](
	[Identificacion] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Base].[Contacto]  WITH NOCHECK ADD  CONSTRAINT [FK_Contacto_Contacto] FOREIGN KEY([Identificacion])
REFERENCES [Base].[Contacto] ([Identificacion])
GO
ALTER TABLE [Base].[Contacto] CHECK CONSTRAINT [FK_Contacto_Contacto]
GO
ALTER TABLE [Base].[CorreoElectronico]  WITH CHECK ADD  CONSTRAINT [FK_CorreoElectronico_Contacto] FOREIGN KEY([IDContacto])
REFERENCES [Base].[Contacto] ([Identificacion])
GO
ALTER TABLE [Base].[CorreoElectronico] CHECK CONSTRAINT [FK_CorreoElectronico_Contacto]
GO
ALTER TABLE [Base].[Telefonos]  WITH CHECK ADD  CONSTRAINT [FK_Telefonos_Contacto] FOREIGN KEY([IDContacto])
REFERENCES [Base].[Contacto] ([Identificacion])
GO
ALTER TABLE [Base].[Telefonos] CHECK CONSTRAINT [FK_Telefonos_Contacto]
GO
/****** Object:  StoredProcedure [Base].[AgregaCorreo]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Base].[AgregaCorreo]
as
begin
update Contacto
set Contacto.Correos=CorreoElectronico.Correoelectronico
from CorreoElectronico
where Contacto.Identificacion=CorreoElectronico.IDContacto
end
GO
/****** Object:  StoredProcedure [Base].[AgregarTelefono]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Base].[AgregarTelefono]
as
begin
update Contacto
set Contacto.Telefonos=Telefonos.Telefonos
from Telefonos
where Contacto.Identificacion=Telefonos.IDContacto
end
GO
/****** Object:  StoredProcedure [Base].[eliminarContacto]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [Base].[eliminarContacto]
    @Id int
 as 
begin
delete from Contacto
where Contacto.Identificacion=@Id
end 
GO
/****** Object:  StoredProcedure [Base].[eliminarCorreo]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [Base].[eliminarCorreo]
    @Id int
 as 
begin
delete from CorreoElectronico
where CorreoElectronico.IDContacto=@Id
end 
GO
/****** Object:  StoredProcedure [Base].[eliminarTelefono]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [Base].[eliminarTelefono]
    @Id int
 as 
begin
delete from Telefonos
where Telefonos.IDContacto=@Id
end
GO
/****** Object:  StoredProcedure [Base].[eliminarUsuario]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [Base].[eliminarUsuario]
    @Id varchar(50)
 as 
begin
delete from Usuarios
where Usuarios.Identificacion=@Id
end
GO
/****** Object:  StoredProcedure [Base].[IngresarCorreo]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Base].[IngresarCorreo] (@id int, @correo varchar(50))
as
insert into CorreoElectronico(IDContacto,Correoelectronico)
values
(@id,@correo)
GO
/****** Object:  StoredProcedure [Base].[InicioSesion]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

CREATE PROCEDURE [Base].[InicioSesion]
@usuario varchar(50) ,
@password varchar(50)

AS

BEGIN

SELECT top 1 COUNT(*) FROM usuarios
WHERE usuarios.Identificacion = @usuario and usuarios.Contraseña = @password

END
GO
/****** Object:  StoredProcedure [Base].[InsertarTelefono]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Base].[InsertarTelefono] (@id int, @numero varchar(50))
as
insert into Telefonos(IDContacto,Telefonos)
values (@id,@numero)
GO
/****** Object:  StoredProcedure [Base].[ModificarContacto]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [Base].[ModificarContacto]
    @Identificacion int,
    @Nombre varchar(50),
    @Apellido varchar(50),
    @Facebook varchar(50),
    @Instagram varchar(50),
    @Twitter varchar(50)
AS 
BEGIN 
UPDATE Contacto
SET  Nombre = @Nombre,
     Apellidos = @Apellido, 
     Facebook = @Facebook,
     Instagram = @Instagram,
     Twitter = @Twitter
WHERE  Identificacion = @Identificacion
END
GO
/****** Object:  StoredProcedure [Base].[ModificarContraseña]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [Base].[ModificarContraseña]
@Id varchar(50),
@Contraseña varchar(50)
AS
BEGIN  UPDATE Usuarios
Set Contraseña=@Contraseña
WHERE Identificacion= @Id
end
GO
/****** Object:  StoredProcedure [Base].[ModificarCorreo]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [Base].[ModificarCorreo]
@Id int,
@Correo varchar(50) AS
BEGIN UPDATE CorreoElectronico
Set Correoelectronico=@Correo
WHERE IDContacto= @Id
end
GO
/****** Object:  StoredProcedure [Base].[ModificarEstado]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [Base].[ModificarEstado]
@Id varchar(50),
@Estado int
AS
BEGIN  UPDATE Usuarios
Set  Estado=@Estado
WHERE Identificacion= @Id
end
GO
/****** Object:  StoredProcedure [Base].[ModificarTele]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [Base].[ModificarTele]
@Id int,
@Telefono varchar(50) AS
BEGIN UPDATE Telefonos
Set Telefonos=@Telefono
WHERE IDContacto= @Id
end
GO
/****** Object:  StoredProcedure [Base].[ModificarUsuarios]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Base].[ModificarUsuarios]
@id varchar(50),
@nombre varchar(50),
@apellidos varchar(50)
as
begin
update Usuarios
set Nombre=@nombre,Apellido=@apellidos
where Identificacion=@id
end
GO
/****** Object:  StoredProcedure [Base].[RegistrarContacto]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Base].[RegistrarContacto] (@id int, @nom varchar(50), @ape varchar(50),
@face varchar(50) null, @insta varchar(50) null,
@twi varchar(50) null)
as
insert into Contacto(Identificacion,Nombre,Apellidos,Facebook,Instagram,Twitter)
values (@id , @nom , @ape, @face, @insta,@twi)
GO
/****** Object:  StoredProcedure [Base].[RegistrarUsuario]    Script Date: 02/02/2023 13:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Base].[RegistrarUsuario] (@Id varchar(50),@nom varchar(50),
@ape varchar(50),@contraseña varchar(50),@Estado int)
as
Insert into Usuarios (Identificacion,Nombre,Apellido,Contraseña,Estado)
values (@Id,@nom,@ape,@contraseña,@Estado)
GO
