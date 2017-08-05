<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WPowerDashboard.Dashboard" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Hours by Payroll Item</td>
                <td>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                        <series>
                            <asp:Series ChartType="Pie" Name="Series1" XValueMember="ClassEquip" YValueMembers="RegHours">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Hours by Customer</td>
                <td>
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
                        <series>
                            <asp:Series ChartType="Pie" Name="Series1" XValueMember="Customer" YValueMembers="RegHours" YValuesPerPoint="2">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WPCompanyConnectionString %>" SelectCommand="SELECT [RegHours], [ClassEquip] FROM [TimesheetEntryGrid]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WPCompanyConnectionString %>" SelectCommand="SELECT [RegHours], [Customer] FROM [TimesheetEntryGrid]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
