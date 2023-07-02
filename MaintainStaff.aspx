<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaintainStaff.aspx.cs" Inherits="EmployeeManagement.MaintainStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 440px;
        }
        .auto-style3 {
            width: 222px;
        }
        .auto-style4 {
            width: 440px;
            height: 1px;
        }
        .auto-style5 {
            width: 222px;
            height: 1px;
        }
        .auto-style6 {
            height: 1px;
        }
        .auto-style7 {
            width: 174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p style="font-size: x-large">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; MAINTAIN STAFF MEMBERS </p>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Employee ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Font-Size="Medium" ForeColor="#990000"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" BackColor="#990000" BorderColor="#CC3300" ForeColor="White" Text="GET" Width="69px" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Manager ID</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Font-Size="Medium" ForeColor="#990000"></asp:TextBox>
                &nbsp;(haven&#39;t manager then type 0)</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Name </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Font-Size="Medium" ForeColor="#990000"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Date Of Joined</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" ForeColor="#990000">
                        <TodayDayStyle BackColor="#FFFF66" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#990000" BorderColor="#CC3300" ForeColor="White" OnClick="Button1_Click" Text="ADD" Width="69px" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#990000" BorderColor="#CC3300" ForeColor="White" OnClick="Button2_Click" Text="UPDATE" Width="82px" />
&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#990000" BorderColor="#CC3300" ForeColor="White" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure to delete?')" Text="DELETE" Width="77px" />
&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="#990000" BorderColor="#CC3300" ForeColor="White" Text="SEARCH" Width="84px" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1056px">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
