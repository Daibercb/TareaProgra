<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarUsuarios.aspx.cs" Inherits="TareaCorta3.RegistrarUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" BackColor="#FFCCFF" style="top: 30px; left: 365px; position: absolute; height: 19px; width: 180px" Text="Registro de Nuevos Usuarios"></asp:Label>
        </div>
        <asp:Label ID="lblContraseña" runat="server" style="top: 212px; left: 268px; position: absolute; height: 21px; width: 79px" Text="Contraseña"></asp:Label>
        <asp:Label ID="lblNombre" runat="server" style="top: 130px; left: 270px; position: absolute; height: 21px; width: 68px" Text="Nombre"></asp:Label>
        <asp:Label ID="lblIdentificacion" runat="server" style="top: 93px; left: 266px; position: absolute; height: 24px; width: 80px" Text="Identificacion"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="txtApellido" runat="server" style="top: 163px; left: 403px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
            <asp:TextBox ID="txtNombre" runat="server" style="top: 126px; left: 403px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
            <asp:TextBox ID="txtID" runat="server" style="top: 85px; left: 402px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        </p>
        <asp:TextBox ID="txtContraseña" runat="server" style="top: 206px; left: 405px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <p>
            &nbsp;</p>
        <asp:Label ID="lblApellido" runat="server" style="top: 169px; left: 270px; position: absolute; height: 19px; width: 54px; bottom: 174px" Text="Apellido"></asp:Label>
        <p>
        <asp:TextBox ID="txtEstado" runat="server" style="top: 247px; left: 405px; height: 25px; width: 168px; position: absolute;"></asp:TextBox>
        </p>
        <asp:Label ID="Label2" runat="server" style="top: 252px; left: 288px; position: absolute; height: 19px; width: 42px; right: 1077px;" Text="Estado"></asp:Label>
        <asp:Button ID="btnCambiarContraseña" runat="server" OnClick="Button1_Click" Text="Cambiar Contraseña-Estado" style="top: 291px; left: 548px; position: absolute; height: 23px; width: 204px" />
        <p>
            &nbsp;</p>
        <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar " style="top: 289px; left: 362px; position: absolute; height: 26px; width: 84px" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" style="top: 289px; left: 461px; position: absolute; height: 26px; width: 69px" />
            <asp:Button ID="btnRegistrar" runat="server" style="top: 287px; left: 264px; position: absolute; height: 28px; width: 82px" Text="Registrarse" OnClick="btnRegistrar_Click" />
    </form>
</body>
</html>
