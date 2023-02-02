<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroContacto.aspx.cs" Inherits="TareaCorta3.RegistroContacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><title></title></head><body><form id="form1" runat="server"><asp:Label ID="Label1" runat="server" BackColor="#66FFCC" BorderColor="#66FF99" style="top: 16px; left: 373px; position: absolute; height: 19px; width: 129px" Text="Registro de Contacto"></asp:Label><div><asp:TextBox ID="TxtId" runat="server" style="top: 55px; left: 363px; position: absolute; height: 22px; width: 128px"></asp:TextBox></div><asp:Label ID="lblIdentificacion" runat="server" style="top: 63px; left: 261px; position: absolute; height: 19px; width: 34px" Text="Identificacion"></asp:Label><asp:Label ID="lblNombre" runat="server" style="top: 102px; left: 262px; position: absolute; height: 22px; width: 34px" Text="Nombre"></asp:Label><asp:Label ID="lblApellido" runat="server" style="top: 148px; left: 261px; position: absolute; height: 19px; width: 34px" Text="Apellido"></asp:Label>
<asp:TextBox ID="Txtnom" runat="server" style="top: 102px; left: 363px; position: absolute; height: 22px; width: 128px"></asp:TextBox><p><asp:TextBox ID="Txtape" runat="server" style="top: 150px; left: 366px; position: absolute; height: 22px; width: 128px"></asp:TextBox></p><asp:Label ID="Label2" runat="server" style="top: 198px; left: 265px; position: absolute; height: 19px; width: 34px" Text="Facebook"></asp:Label><asp:Label ID="lblInstagram" runat="server" style="top: 236px; left: 265px; position: absolute; height: 19px; width: 34px; bottom: 107px" Text="Instagram"></asp:Label><asp:Label ID="lblTwitter" runat="server" style="top: 282px; left: 264px; position: absolute; height: 19px; width: 34px" Text="Twitter"></asp:Label><p><asp:TextBox ID="txtFaceb" runat="server" style="top: 197px; left: 366px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
</p><asp:TextBox ID="Txtinsta" runat="server" style="top: 234px; left: 367px; position: absolute; height: 22px; width: 128px"></asp:TextBox><asp:TextBox ID="TxtTwi" runat="server" style="top: 276px; left: 368px; position: absolute; height: 22px; width: 128px"></asp:TextBox><p><asp:Button ID="btnSiguiente" runat="server" style="top: 128px; left: 539px; position: absolute; height: 70px; width: 103px" Text="Guardar" OnClick="btnSiguiente_Click" /></p>
        <asp:Button ID="BtnCorreo" runat="server" Text="Agregar Correo" OnClick="BtnCorreo_Click" />
<p>
<asp:Button ID="btnTelefono" runat="server" Text="Agregar Telefono" OnClick="btnTelefono_Click" />
        </p>
<p>
    <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
</p>
<p>
    <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" style="top: 354px; left: 10px; position: absolute; height: 29px; width: 89px" Text="Eliminar" />
</p>
</form>
</body>
</html>
