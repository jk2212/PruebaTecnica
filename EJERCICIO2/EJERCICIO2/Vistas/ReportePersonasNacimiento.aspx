
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportePersonasNacimiento.aspx.cs"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />

        <table style="width: 100%">
        <tr>
            <td style="font-size: x-large; text-align: center;" class="auto-style1">Reporte Personas por Fecha Nacimiento</td>
            <td>
                <img alt="" class="auto-style2" src="../Imagenes/a-person-in-different-ages-vector.jpg" style="width: 292px; height: 210px" /></td>
        </tr>
        <tr>
            <td style="font-size: medium;" class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:GridView ID="GVEdades" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="492px" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha Nacimiento" SortExpression="FechaNacimiento" />
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
               
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestaConnectionString1 %>" SelectCommand="SELECT        Paises.Pais, Personas.Nombre, Personas.Apellido, Personas.FechaNacimiento
FROM            Paises INNER JOIN
                         Personas ON Personas.Pais = Paises.ID
ORDER BY Personas.FechaNacimiento"></asp:SqlDataSource>
               
                </td>
            </tr>
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Blue" Style="font-size: large; font-weight: 700"></asp:Label>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestaConnectionString1 %>" SelectCommand="SELECT Personas.ID, Personas.Nombre, Personas.Apellido, Personas.FechaNacimiento, Personas.FechaFallecimiento, Paises.Pais FROM Personas INNER JOIN Paises ON Personas.Pais = Paises.ID WHERE (Personas.FechaFallecimiento IS NOT NULL) AND (Paises.Pais = @pais)">
                    <SelectParameters>
                        <asp:FormParameter FormField="txtPais" Name="pais" />
                    </SelectParameters>
                </asp:SqlDataSource>
    </table>
       
  
    </asp:Content>

