﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos.master" AutoEventWireup="true" CodeFile="frmpplEdit.aspx.cs" Inherits="PPL_frmpplEdit" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function Refrescar() {
            __doPostBack('btnrefrescar_Click', '');
        }
    </script>
    <div style="width: 100%; color: #20365F; font-family: Aparajita; font-size: 25px; font-weight: bold; text-transform: uppercase; text-align: center; text-decoration: underline;">
        <asp:Label ID="lbltitulo" runat="server"></asp:Label>
    </div>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <hr />
    <div>

        <table style="width: 100%; color:black">
            <tr>
                <td></td>
                <td style="width:100%">

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>

                            <table style="width: 100%; color:black">
                                <tr>
                                    <td rowspan="13">
                                        <asp:Image ID="imgfoto" runat="server" Height="261px" Width="254px" ImageUrl="~/Images/sinfoto.jpg" />
                                    </td>
                                    <td style="text-align: left; width: 21px;">
                                        &nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label17" runat="server" Text="Código:" Visible="False"></asp:Label>
                                    </td>
                                    <td style="text-align: left">

                                        <asp:TextBox ID="txtcodigo" runat="server" MaxLength="16" Visible="False" Width="264px"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="txtcodigo_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtcodigo">
                                        </asp:FilteredTextBoxExtender>
                                    </td>
                                    <td style="text-align: left">

                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">&nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label1" runat="server" Text="Tipo Documento:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:DropDownList ID="ddltipodoc" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddltipodoc_SelectedIndexChanged" Width="267px">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddltipodoc" ErrorMessage="Campo Requerido!." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">
                                        &nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label2" runat="server" Text="*No. Documento:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtndocu" runat="server" MaxLength="16" Width="264px"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="txtndocu_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtndocu">
                                        </asp:FilteredTextBoxExtender>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtndocu" ErrorMessage="Campo Requerido!." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">
                                        &nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label5" runat="server" Text="*Primer Nombre:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtnombre1" runat="server" CssClass="upperCase" MaxLength="30" Width="264px"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnombre1" ErrorMessage="Campo Requerido!." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">
                                        &nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label6" runat="server" Text="Segundo Nombre:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtnombre2" runat="server" CssClass="upperCase" MaxLength="30" Width="264px"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        &nbsp;</td>
                                    
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">
                                        &nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label3" runat="server" Text="*Apellido Paterno:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtapellido1" runat="server" CssClass="upperCase" MaxLength="30" Width="264px"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtapellido1" ErrorMessage="Campo Requerido!." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">
                                        &nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label4" runat="server" Text="Apellido Materno:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtapellido2" runat="server" CssClass="upperCase" MaxLength="30" Width="264px"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        &nbsp;</td>
                                    
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">&nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label12" runat="server" Text="Etapa:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:DropDownList ID="ddletapa" runat="server" AutoPostBack="True" Width="267px">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="text-align: left">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">&nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label13" runat="server" Text="Pabellón:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:DropDownList ID="ddlpabellon" runat="server" AutoPostBack="True" Width="267px">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="text-align: left">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">&nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label14" runat="server" Text="Ala:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:DropDownList ID="ddlala" runat="server" AutoPostBack="True" Width="267px">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="text-align: left">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">&nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label16" runat="server" Text="Piso:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:DropDownList ID="ddlpiso" runat="server" AutoPostBack="True" Width="267px">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="text-align: left">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">&nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label15" runat="server" Text="Celda:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtcelda" runat="server" MaxLength="16" Width="264px"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcelda" ErrorMessage="Campo Requerido!." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 21px;">
                                        &nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label10" runat="server" Text="Observación:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtobserva" runat="server" CssClass="upperCase" TextMode="MultiLine" Width="264px"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">&nbsp;</td>
                                    
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td style="text-align: left; width: 21px;">
                                        &nbsp;</td>
                                    <td style="text-align: left; width: 145px;">
                                        <asp:Label ID="Label11" runat="server" Text="Estado:"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:CheckBox ID="chkestado" runat="server" Text="Activo" AutoPostBack="True" OnCheckedChanged="chkestado_CheckedChanged" />
                                    </td>
                                    
                                </tr>
                            </table>

                        </ContentTemplate>
                    </asp:UpdatePanel>

                </td>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width:100%">

                    <asp:Label ID="lblmsj1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>

                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div id="menuaccions" style="border-style: ridge double double ridge; width: 100%; background-color: #FFFFFF; border-top-width: 4px; border-top-color: #FF0000; border-left-color: #FF0000;">
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 42%">
                                    <asp:ImageButton ID="btngrabar" runat="server" Height="60px" ImageUrl="~/Botones/Grabar.png" OnClick="btngrabar_Click" />
                                </td>
                                <td style="width: 332px">
                                    <asp:ImageButton ID="btncamara" runat="server" Height="60px" ImageUrl="~/Botones/camara.png" CausesValidation="False" OnClick="btncamara_Click" />
                                </td>
                                <td style="width: 8%">
                                    &nbsp;</td>
                                <td style="width: 25%">
                                    <asp:ImageButton ID="btnsalir" runat="server" Height="60px" ImageUrl="~/Botones/Salir.png" CausesValidation="False" OnClick="btnsalir_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>

    </div>
    <script type="text/javascript">
        function Validar_Cedula() {
            var ddltipodoc = document.getElementById("<%=ddltipodoc.ClientID%>").value;
            var cedula = document.getElementById("<%=txtndocu.ClientID%>").value;
            var digito_region = cedula.substring(0, 2);
            if (ddltipodoc == "C") {
                arreglo = cedula.split("");
                num = cedula.length;
                if (digito_region >= 1 && digito_region <= 24) {
                    if (num == 10) {
                        //validar cedula
                        digito = (arreglo[9] * 1);
                        total = 0;
                        for (i = 0; i < (num - 1) ; i++) {
                            if ((i % 2) != 0) {
                                total = total + (arreglo[i] * 1);
                            } else {
                                mult = arreglo[i] * 2;
                                if (mult > 9) {
                                    total = total + (mult - 9);
                                } else {
                                    total = total + mult;
                                }
                            }
                        }
                        decena = total / 10;
                        decena = Math.floor(decena);
                        decena = (decena + 1) * 10;
                        final = (decena - total);
                        if (final == 10) {
                            final = 0;
                        }
                        if (digito == final) {
                            return true;
                        } else {
                            alert("Cédula Incorrecta");
                            document.getElementById("<%=txtndocu.ClientID%>").value = "";
                            return false;
                        }
                    }
                    else {
                        alert("Cédula Incorrecta");
                        document.getElementById("<%=txtndocu.ClientID%>").value = "";
                        document.getElementById("<%=txtndocu.ClientID%>").focus;
                    }
                }
                else {
                    document.getElementById("<%=txtndocu.ClientID%>").value = "";
                    document.getElementById("<%=txtndocu.ClientID%>").focus;
                    alert("Cédula Incorrecta");
                }
            }

        }

    </script>
</asp:Content>

