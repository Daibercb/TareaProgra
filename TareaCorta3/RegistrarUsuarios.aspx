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
            <asp:Button ID="btnRegistrar" runat="server" style="top: 261px; left: 547px; position: absolute; height: 49px; width: 111px" Text="Registrarse" OnClick="btnRegistrar_Click" />
        </p>
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
            &nbsp;</p>
        <asp:Label ID="Label2" runat="server" style="top: 252px; left: 288px; position: absolute; height: 19px; width: 42px; right: 1077px;" Text="Estado"></asp:Label>
        <asp:TextBox ID="txtEstado" runat="server" style="top: 277px; left: 10px; height: 25px; width: 168px"></asp:TextBox>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
