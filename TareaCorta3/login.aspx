<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TareaCorta3.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" BackColor="#66FFCC" BorderColor="#6600FF" style="top: 25px; left: 410px; position: absolute; height: 24px; width: 142px" Text="LOGIN USUARIOS"></asp:Label>
            <asp:TextBox ID="txtNombreUsu" runat="server" style="top: 74px; left: 490px; position: absolute; height: 22px; width: 128px; bottom: 260px" OnLoad="txtNombreUsu_Load"></asp:TextBox>
        </div>
        <p>
            &nbsp;</p>
            <asp:Label ID="lblNombreUs" runat="server" style="top: 87px; left: 325px; position: absolute; height: 19px; width: 106px" Text="Usuario"></asp:Label>
        <asp:TextBox ID="txtContraseñaUsu" runat="server" style="top: 126px; left: 493px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:Label ID="lblContraseñaUsu" runat="server" style="top: 129px; left: 322px; position: absolute; height: 19px; width: 69px" Text="Contraseña"></asp:Label>
        <asp:Button ID="btnRegistrarUsu" runat="server" style="top: 199px; left: 362px; position: absolute; width: 75px" Text="Registrar" OnClick="btnRegistrarUsu_Click" />
        <asp:Button ID="btnIngresarUsu" runat="server" style="top: 193px; left: 536px; position: absolute; height: 26px; width: 72px" Text="Ingresar" OnClick="btnIngresarUsu_Click" />
    </form>
</body>
</html>
