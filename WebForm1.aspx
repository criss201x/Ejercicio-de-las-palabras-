<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Ejercicio.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 535px">
    <form id="form1" runat="server">
        <asp:Label ID="lbl1" runat="server" style="position: relative" Text="parcial 1 "></asp:Label>
        <p style="height: 53px">
            <asp:Label ID="lbl2" runat="server" style="position: relative" Text="Escriba una oracion:   "></asp:Label>
            <asp:TextBox ID="txtfrase" runat="server" style="position: relative; top: 4px; left: 0px; height: 18px; width: 512px; margin-top: 0px"></asp:TextBox>
            <asp:Button ID="boton" runat="server" Height="19px" OnClick="boton_Click" style="margin-left: 12px" Text="VER" Width="81px" />
        </p>
        <p style="height: 43px">
            <asp:Label ID="lbl3" runat="server" style="position: absolute; z-index: 1; left: 10px; top: 100px; height: 63px; width: 267px" Text="Palabras ordenadas alfabeticamente de la oracion que empiezan con A o que contienen la letra O"></asp:Label>
            <asp:Label ID="lbl4" runat="server" style="position: absolute; z-index: 1; left: 401px; top: 100px; height: 63px; width: 233px" Text="Palabras de la lista anterior (invertidas) donde la antepenultima letra no sea una L"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:ListBox ID="palabrasA" runat="server" AutoPostBack="True" OnSelectedIndexChanged="palabrasA_SelectedIndexChanged" SelectionMode="Multiple" style="position: relative; top: 0px; left: 9px; height: 152px; width: 136px"></asp:ListBox>
        <asp:ListBox ID="palabrasB" runat="server" AutoPostBack="True" Height="153px" OnSelectedIndexChanged="palabrasB_SelectedIndexChanged" SelectionMode="Multiple" style="position: relative; top: 0px; left: 256px" Width="140px"></asp:ListBox>
    </form>
</body>
</html>
