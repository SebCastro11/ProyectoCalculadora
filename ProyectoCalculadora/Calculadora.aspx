<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Calcu.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #000080;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 137px;
        }
        .auto-style4 {
            width: 138px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1resultado" runat="server" Height="51px" Width="598px" OnTextChanged="TextBox1resultado_TextChanged"></asp:TextBox>                      
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                      <asp:Button ID="btnraizcuadrada" runat="server" Text="x^(1/2)" OnClick="btnraizcuadrada_Click" Font-Size="Larger" Height="80px" Width="141px" />
                    </td>
                    <td class="auto-style3">
                       <asp:Button ID="btnborrartodo" runat="server" Text="C" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnborrartodo_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnborrar" runat="server" Text="⌫" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnborrar_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnn" runat="server" Text="n!" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btndivision" runat="server" Text="÷" Font-Size="Larger" Height="80px" Width="141px" OnClick="btndivision_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Button ID="btnequiselevado" runat="server" Text="x^y" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnequiselevado_Click" />
                    </td>
                    <td class="auto-style3">
                    <asp:Button ID="btnsiete" runat="server" Text="7" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnsiete_Click" BackColor="White" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnocho" runat="server" Text="8" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnocho_Click" BackColor="White" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnnueve" runat="server" Text="9" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnnueve_Click" BackColor="White" />
                    </td>
                    <td>
                        <asp:Button ID="btnmultiplicacion" runat="server" Text="×" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnmultiplicacion_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btndiezequis" runat="server" Text="10^x" Font-Size="Larger" Height="80px" Width="141px" OnClick="btndiezequis_Click"/>
                    </td>
                    <td class="auto-style3">
                      <asp:Button ID="btncuatro" runat="server" Text="4" Font-Size="Larger" Height="80px" Width="141px" OnClick="btncuatro_Click" BackColor="White" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btncinco" runat="server" Text="5" Font-Size="Larger" Height="80px" Width="141px" OnClick="btncinco_Click" BackColor="White" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnseis" runat="server" Text="6" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnseis_Click" BackColor="White" />
                    </td>
                    <td>
                        <asp:Button ID="btnresta" runat="server" Text="-" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnresta_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnlog" runat="server" Text="log" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnlog_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnuno" runat="server" Text="1" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnuno_Click" BackColor="White" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btndos" runat="server" Text="2" Font-Size="Larger" Height="80px" Width="141px" OnClick="btndos_Click" BackColor="White" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btntres" runat="server" Text="3" Font-Size="Larger" Height="80px" Width="141px" OnClick="btntres_Click" BackColor="White" />
                    </td>
                    <td>
                        <asp:Button ID="btnsuma" runat="server" Text="+" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnsuma_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnequisala2" runat="server" Text="x^2" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnequisala2_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnmasmenos" runat="server" Text="+/-" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnmasmenos_Click" BackColor="White" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btncero" runat="server" Text="0" Font-Size="Larger" Height="80px" Width="141px" OnClick="btncero_Click" BackColor="White" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btncoma" runat="server" Text="," Font-Size="Larger" Height="80px" Width="141px" OnClick="btncoma_Click" BackColor="White" />
                    </td>
                    <td>
                       <asp:Button ID="btnigual" runat="server" Text="=" Font-Size="Larger" Height="80px" Width="141px" OnClick="btnigual_Click" BackColor="#3366FF" ForeColor="White" />
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>