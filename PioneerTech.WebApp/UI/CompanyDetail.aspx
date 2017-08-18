<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="CompanyDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.CompanyDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 352px;
        }
        .auto-style3 {
            margin-left: 168px;
        }
        .auto-style4 {
            margin-left: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        
        <tr>
            <td id="EmployerName" class="auto-style2">
                <asp:Label ID ="EmployerNameeLabel" runat ="server" Text="Employer Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="EmployerNameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmployerNameRequiredFieldValidator" runat="server" ControlToValidate="EmployerNameTextBox" ErrorMessage="Please Enter Employer Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td id="EmployerContactNumberLabel" class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="EmployerContactNumberTextBox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="PhoneNumberRegularExpressionValidator" runat="server" ControlToValidate="EmployerContactNumberTextBox" ErrorMessage="Please Enter a valid Phone Number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td id="EmployerLocationLabel" class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="CompanyLocationTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LocationRequiredFieldValidator" runat="server" ControlToValidate="CompanyLocationTextBox" ErrorMessage="Please Enter Location!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td id="EmployerWebsiteLabel" class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Website"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="CompanyWebsiteTextBox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="WebsiteRegularExpressionValidator" runat="server" ControlToValidate="CompanyWebsiteTextBox" ErrorMessage="Please Enter Valid Website." ForeColor="Red" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td id="EmployerIdLabel" class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Employee ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="EmployeeIDTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Text="Save" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click1" />
                <asp:Button ID="CompanyClearButton" runat="server" CssClass="auto-style3" Text="Clear" OnClick="CompanyClearButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
