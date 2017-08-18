<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.ProjectDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 295px;
        }
        .auto-style2 {
            width: 704px;
        }
        .auto-style3 {
            margin-left: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td id="ProjectNameLabel" class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Project Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="ProjectNameTextBox" runat="server" Width="378px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ProjectNameRequiredFieldValidator" runat="server" ErrorMessage="Enter a project Name." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td id="ClientName" class="auto-style1">
                <asp:Label ID ="ClientNameLabel" runat ="server" Text ="Client Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID ="ClientNameTextBox" runat ="server" Width="378px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ClientNameRequiredFieldValidator" runat="server" ControlToValidate="ClientNameTextBox" ErrorMessage="Enter a Client Name." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td id="Location" class="auto-style1">
            <asp:Label ID ="LocationLabel" runat ="server" Text ="Location"></asp:Label>
            </td>
            <td class="auto-style2">
             <asp:TextBox ID ="LocationTextBox" runat ="server" Width="378px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="LocationRequiredFieldValidator" runat="server" ControlToValidate="LocationTextBox" ErrorMessage="Please Enter a Location" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td id="Roles" class="auto-style1">
                <asp:Label ID ="RolesLabel" runat ="server" Text ="Roles"></asp:Label>
             </td>
            <td class="auto-style2">
                <asp:TextBox ID ="RolesTextBox" runat ="server" Width="379px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RoleRequiredFieldValidator" runat="server" ErrorMessage="Enter a Role." ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr> 
        <tr>
            <td id ="EmpoyeeID">
                <asp:Label ID ="EmployeeIdLabel" runat ="server" Text ="EmployeeId"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID ="EmployeeIdTextBox" runat="server" Width="379px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id ="EmployeeId">
                <asp:Button ID="ProjectSaveButton" runat="server"  Text="Save" Width="181px" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="ProjectEditButton" runat="server" Text="Edit" Width="181px" OnClick="ProjectEditButton_Click1" />
                <asp:DropDownList ID="ProjectEmployeeIdDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="EmployeeID" DataValueField="EmployeeID">
                </asp:DropDownList>
                <asp:Button ID="ClearButton" runat="server" CssClass="auto-style3" OnClick="ClearButton_Click" Text="Clear" Width="181px" />
            </td>
        </tr>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PioneerTechConnectionString5 %>" SelectCommand="SELECT [EmployeeID] FROM [ProjectDetail]"></asp:SqlDataSource>
    </table>
        
</asp:Content>
