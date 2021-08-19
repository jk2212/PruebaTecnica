<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Personas.aspx.cs" Inherits="EJERCICIO2.Formulario_web11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <br />
    </p>
    <p>
        <br />
        <br />
    </p>
    <h2>Personas</h2>
    <table class="nav-justified">
        <tr>
            <td style="width: 152px">ID Persona*:</td>
            <td>
                <asp:TextBox ID="txtID" runat="server" Width="185px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 152px">Nombre*:</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" Width="496px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 152px">Apellido*:</td>
            <td>
                <asp:TextBox ID="txtApellido" runat="server" Width="497px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 152px">Fecha Nacimiento*:</td>
            <td>
                <asp:Calendar ID="calFechaNacimiento" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="200px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="width: 152px">Fecha Fallecimiento:</td>
            <td>
                <asp:Calendar ID="calFechaFallecimiento" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="200px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="width: 152px">Pais*:</td>
            <td>
                <asp:DropDownList ID="ddlPais" runat="server" DataSourceID="SqlDataSource2" DataTextField="Pais" DataValueField="ID" Width="198px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestaConnectionString1 %>" SelectCommand="SELECT [ID], [Pais] FROM [Paises]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblObligatorio" runat="server" Text="Campos Obligatorios *" ForeColor="#999999"></asp:Label><br />
    <asp:Label ID="lblMensaje" runat="server" ForeColor="Blue" Style="font-size: large; font-weight: 700"></asp:Label><br />
    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="btn-primary" OnClick="btnConsultar_Click" />
    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" CssClass="btn-success" OnClick="btnNuevo_Click" />
    <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn-warning" OnClick="btnModificar_Click" />
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn-danger" OnClientClick="return confirm('¿Esta seguro de eliminar el registro?')" OnClick="btnEliminar_Click" />
    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" /><br />
    <br />
    <asp:GridView ID="GVPersonas" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="676px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
            <asp:BoundField DataField="FechaFallecimiento" HeaderText="FechaFallecimiento" SortExpression="FechaFallecimiento" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestaConnectionString1 %>" SelectCommand="SELECT          Personas.ID, Personas.Nombre, Personas.Apellido, Personas.FechaNacimiento, Personas.FechaFallecimiento, Paises.Pais
FROM              Personas INNER JOIN
                            Paises ON Personas.Pais = Paises.ID"></asp:SqlDataSource>
    <br />


</asp:Content>
