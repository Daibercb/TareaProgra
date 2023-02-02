<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CorreoElectronico.aspx.cs" Inherits="TareaCorta3.CorreoElectronico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" style="top: 24px; left: 188px; position: absolute; height: 19px; width: 581px; margin-bottom: 0px" Text="¡POR FAVOR, INDIQUE LA IDENTFICACION Y EL CORREO CORRESPONDIENTE!"></asp:Label>
        </div>
        <asp:Label ID="lblIdentificacionCorr" runat="server" style="top: 68px; left: 292px; position: absolute; height: 19px; width: 109px" Text="Identificacion"></asp:Label>
        <p>
            <asp:Label ID="lblCorreoCorr" runat="server" style="top: 120px; left: 276px; position: absolute; height: 19px; width: 121px" Text="Correo Electronico"></asp:Label>
        </p>
        <asp:TextBox ID="txtIdentificacionCorreo" runat="server" style="top: 70px; left: 415px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:TextBox ID="txtCorrreo" runat="server" style="top: 112px; left: 419px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:Button ID="btnModificar" runat="server" style="top: 211px; left: 337px; position: absolute; height: 26px; width: 56px" Text="Modificar" />
        <asp:Button ID="btnSiguiente2" runat="server" style="top: 210px; left: 503px; position: absolute; height: 29px; width: 60px; right: 459px" Text="Siguiente" OnClick="btnSiguiente2_Click" />
    </form>
</body>
</html>
