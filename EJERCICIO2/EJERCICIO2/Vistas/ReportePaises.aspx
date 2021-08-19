<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportePaises.aspx.cs" Inherits="EJERCICIO2.Formulario_web13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <br />
    </p>
    <p>
        <br />
        <br />
    </p>
    <table style="width: 100%">
        <tr>
            <td style="font-size: x-large; text-align: center;" class="auto-style1">Reporte Paises</td>
            <td>
                <img alt="" src="../Imagenes/descarga.jpg" style="width: 370px; height: 136px" /></td>
        </tr>
        <tr>
            <td style="font-size: medium; text-align: center;">Paises: </td>
            <td>
                <asp:TextBox ID="txtPais" runat="server" Width="197px"></asp:TextBox>
                <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="btn-primary" OnClick="btnConsultar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:GridView ID="GVRPaises" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="771px" AllowPaging="True" DataKeyNames="ID" Height="16px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha Nacimiento" SortExpression="FechaNacimiento" />
                        <asp:BoundField DataField="FechaFallecimiento" HeaderText="Fecha Fallecimiento" SortExpression="FechaFallecimiento" />
                        <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestaConnectionString1 %>" SelectCommand="SELECT Personas.ID, Personas.Nombre, Personas.Apellido, Personas.FechaNacimiento, Personas.FechaFallecimiento, Paises.Pais FROM Personas INNER JOIN Paises ON Personas.Pais = Paises.ID WHERE (Personas.FechaFallecimiento IS NOT NULL) AND (Paises.Pais = @pais)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtPais" Name="pais" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
              
        </tr>
 
    </table>
    <asp:Label ID="lblMensaje" runat="server" ForeColor="Blue" Style="font-size: large; font-weight: 700"></asp:Label>
</asp:Content>
