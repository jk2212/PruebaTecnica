<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Paises.aspx.cs" Inherits="EJERCICIO2.Formulario_web1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <br />
    </p>
    <p>
        <br />
        <br />
    </p>
    <h2>Paises</h2>
    <table class="nav-justified">
        <tr>
            <td style="width: 91px">ID*:</td>
            <td>
                <asp:TextBox ID="txtID" runat="server" Width="135px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 91px">Pais*:</td>
            <td>
                <asp:TextBox ID="txtPais" runat="server" Width="191px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblObligatorio" runat="server" Text="Campos Obligatorios *" ForeColor="#999999"></asp:Label><br />
    <asp:Label ID="lblMensaje" runat="server" ForeColor="Blue" Style="font-size: large; font-weight: 700"></asp:Label>
    <br />
    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="btn-primary" OnClick="btnConsultar_Click" />
    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" CssClass="btn-success" OnClick="btnNuevo_Click" />
    <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn-warning" OnClick="btnModificar_Click" />
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn-danger" OnClientClick="return confirm('¿Esta seguro de eliminar el registro?')" OnClick="btnEliminar_Click" />
    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
    <br />
    <p>
        <asp:GridView ID="GVPaises" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="171px" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestaConnectionString1 %>" SelectCommand="SELECT [ID], [Pais] FROM [Paises]"></asp:SqlDataSource>
    </p>
</asp:Content>
