<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="TechnicalDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.TechnicalDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 378px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            margin-left: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td id ="UI" class="auto-style1" >User Interface</td>
            <td><asp:TextBox ID ="UITextBox" runat ="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UIRequiredFieldValidator" runat="server" ControlToValidate="UITextBox" ErrorMessage="Enter a UI Technique" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td id ="Programming" class="auto-style1">Programming Language</td>
            <td><asp:TextBox ID="ProgrammingTextBox" runat ="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ProgrammingRequiredFieldValidator" runat="server" ControlToValidate="ProgrammingTextBox" ErrorMessage="Enter a Programming language" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td id ="Database" class="auto-style1">Database</td>
            <td><asp:TextBox ID="DatabasetextBox" runat ="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DatabaseRequiredFieldValidator" runat="server" ControlToValidate="DatabasetextBox" ErrorMessage="Enter a Database Technique" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td id ="EmployeeId" class="auto-style1">Employee Id</td>
            <td><asp:TextBox ID ="EmployeeIdTextBox" runat ="server"></asp:TextBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PioneerTechConnectionString6 %>" SelectCommand="SELECT [EmployeeID] FROM [TechnicalDetail]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td id ="Employee" class="auto-style1">
                <asp:Button ID="TechnicalDetailSaveButton" runat="server" CssClass="auto-style4" OnClick="TechnicalDetailSaveButton_Click" Text="Save" Width="180px" />
            </td>
            <td>
                <asp:Button ID="TechnicalDetailEditButton" runat="server" CssClass="auto-style3" Text="Edit" Width="180px" OnClick="TechnicalDetailEditButton_Click" />
                <asp:DropDownList ID="TechnicalEmployeeIdDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="EmployeeID" DataValueField="EmployeeID" Width="136px">
                </asp:DropDownList>
                <asp:Button ID="TechnicalDetailClearButton" runat="server" CssClass="auto-style4" Text="Clear" Width="181px" OnClick="TechnicalDetailClearButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
