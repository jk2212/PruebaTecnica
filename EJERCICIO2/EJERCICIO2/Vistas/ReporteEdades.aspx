<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReporteNacidos.aspx.cs" Inherits="EJERCICIO2.Formulario_web12" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center"></h2>
        <table style="width: 100%">
            <tr>
                <td style="width: 445px; font-size: x-large; text-align: center;">Reporte Edades</td>
                <td>
                    <img alt="" src="../Imagenes/persona-diferentes-edades_23-2148416953.jpg" style="width: 215px; height: 177px; float: left; text-align: center; margin-left: 105px" /></td>
            </tr>
            <tr>
                <td style="width: 445px">
                    <asp:GridView ID="GVEdades" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="440px" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Edad" HeaderText="Edad" ReadOnly="True" SortExpression="Edad" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestaConnectionString1 %>" SelectCommand="SELECT        CAST(DATEDIFF(dd, Personas.FechaNacimiento, GETDATE()) / 365.25 AS int) AS Edad, Personas.Nombre, Personas.Apellido, Paises.Pais
FROM            Personas INNER JOIN
                         Paises ON Personas.Pais = Paises.ID
ORDER BY Edad"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    <p class="text-center">
        
        <br />

    </p>
</asp:Content>
