<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReporteNacidos.aspx.cs" Inherits="EJERCICIO2.Formulario_web12" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center"></h2>
        <table style="width: 100%">
            <tr>
                <td style="width: 445px; font-size: x-large; text-align: center;">Reporte Fallecidos</td>
                <td>
                    <img alt="" src="../Imagenes/unnamed.png" style="width: 200px; height: 200px" /></td>
            </tr>
            <tr>
                <td style="width: 445px">
                    <asp:GridView ID="GVFallecidos" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="440px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="FechaFallecimiento" HeaderText="Fecha Fallecimiento" ReadOnly="True" SortExpression="FechaFallecimiento" />
                            <asp:BoundField DataField="cantidad" HeaderText="Cantidad" ReadOnly="True" SortExpression="cantidad" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestaConnectionString1 %>" SelectCommand="SELECT        YEAR(FechaFallecimiento) AS FechaFallecimiento, COUNT(ID) AS cantidad
FROM            Personas
GROUP BY YEAR(FechaFallecimiento)
HAVING        (NOT (YEAR(FechaFallecimiento) IS NULL))"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    <p class="text-center">
       
        <br />

    </p>
</asp:Content>
