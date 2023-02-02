<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambioContraseña.aspx.cs" Inherits="TareaCorta3.CambioContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body><form id="form1" runat="server"><div></div><asp:Label ID="Label1" runat="server" BackColor="#66CCFF" style="top: 21px; left: 319px; position: absolute; height: 19px; width: 262px" Text="Cambar estado y/o Contrasela del usuario"></asp:Label><asp:TextBox ID="txtUsuario" runat="server" style="top: 103px; left: 437px; position: absolute; height: 22px; width: 128px"></asp:TextBox><p><asp:Label ID="Label3" runat="server" BackColor="#FFCC99" style="top: 57px; left: 364px; position: absolute; height: 19px; width: 132px" Text="Modificar Contraseña"></asp:Label></p><asp:Label ID="lblUsuari" runat="server" style="top: 106px; left: 352px; position: absolute; height: 19px; width: 34px" Text="Usuario"></asp:Label><asp:Label ID="lblNuevaContraseña" runat="server" style="top: 148px; left: 284px; position: absolute; height: 19px; width: 125px" Text="Nueva Contraseña"></asp:Label><asp:TextBox ID="txtNContraseña" runat="server" style="top: 143px; left: 438px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
    <asp:Button ID="btrCambiarC" runat="server" style="top: 103px; left: 622px; position: absolute; height: 63px; width: 160px" Text="Cambiar Contraseña" OnClick="btrCambiarC_Click" /><asp:Label ID="Label5" runat="server" BackColor="#FFCC99" style="top: 204px; left: 381px; position: absolute; height: 19px; width: 117px" Text="Cambiar de Estado"></asp:Label><p><asp:Button ID="btnCambiarEstado" runat="server" style="top: 286px; left: 382px; position: absolute; height: 52px; width: 124px" Text="Cambiar" OnClick="btnCambiarEstado_Click" /></p><asp:TextBox ID="txtEstado" runat="server" style="top: 238px; left: 376px; position: absolute; height: 22px; width: 128px"></asp:TextBox></form></body>
</html>
