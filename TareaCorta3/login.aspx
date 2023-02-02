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
            <asp:TextBox ID="txtNombreUsu" runat="server" style="top: 74px; left: 490px; position: absolute; height: 22px; width: 128px; bottom: 260px"></asp:TextBox>
        </div>
        <p>
            &nbsp;</p>
            <asp:Label ID="lblNombreUs" runat="server" style="top: 78px; left: 307px; position: absolute; height: 19px; width: 106px" Text="Usuario"></asp:Label>
        <asp:TextBox ID="txtContraseñaUsu" runat="server" style="top: 138px; left: 494px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:Label ID="lblContraseñaUsu" runat="server" style="top: 146px; left: 324px; position: absolute; height: 19px; width: 69px" Text="Contraseña"></asp:Label>
        <asp:Button ID="btnRegistrarUsu" runat="server" style="top: 216px; left: 352px; position: absolute; height: 26px; width: 75px" Text="Registrar" OnClick="btnRegistrarUsu_Click" />
        <asp:Button ID="btnIngresarUsu" runat="server" style="top: 215px; left: 547px; position: absolute; height: 26px; width: 72px" Text="Ingresar" OnClick="btnIngresarUsu_Click" />
    </form>
</body>
</html>
