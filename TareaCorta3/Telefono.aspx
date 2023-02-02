<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Telefono.aspx.cs" Inherits="TareaCorta3.Telefono" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <body>
    <form id="form2" runat="server">
        <div>
            <asp:Label ID="label1" runat="server" style="top: 24px; left: 188px; position: absolute; height: 19px; width: 610px; margin-bottom: 0px" Text="¡POR FAVOR, INDIQUE LA IDENTFICACION Y EL TELEFONO CORRESPONDIENTE!"></asp:Label>
        </div>
        <asp:Label ID="lblIdentificacionCorr" runat="server" style="top: 68px; left: 292px; position: absolute; height: 19px; width: 109px" Text="Identificacion"></asp:Label>
        <p>
            <asp:Label ID="lblCorreoCorr" runat="server" style="top: 119px; left: 293px; position: absolute; height: 19px; width: 90px" Text="Telefono"></asp:Label>
        </p>
        <asp:TextBox ID="txtIdentificacionTelefono" runat="server" style="top: 70px; left: 415px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:TextBox ID="txtTelefono" runat="server" style="top: 112px; left: 419px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:Button ID="btnModificarTelenfono" runat="server" style="top: 211px; left: 315px; position: absolute; height: 26px; width: 78px" Text="Modificar" OnClick="btnModificarTelenfono_Click" />
        <asp:Button ID="btnFinalizar" runat="server" style="top: 210px; left: 503px; position: absolute; height: 29px; width: 80px; right: 792px" Text="Finalizar" OnClick="btnFinalizar_Click" />
        <p>
            &nbsp;</p>
    </form>
    
</body>
</html>
