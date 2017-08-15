<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="EmployeeDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.EmployeeDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 350px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id ="EmployeeDetail" >
        <tr id ="Firstname">
            <td id ="FirstNameLabel" class="auto-style2">FirstName</td>
            <td ><asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr id ="Lastname">
            <td id ="LastNameLabel" class="auto-style2">LastName</td>
            <td><asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr id ="EmailId">
            <td id ="EmailIdLabel" class="auto-style2">Email Id</td>
            <td><asp:TextBox ID="EmailIdTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr id ="PhoneNumber">
            <td id ="PhoneNumberLabel" class="auto-style2">PhoneNumber</td>
            <td><asp:TextBox ID="PhoneNumberTextBox" runat="server" ></asp:TextBox></td>
        </tr>
        <tr id ="AlternatePhoneNumber">
            <td id ="AlternatePhoneNumberLabel" class="auto-style2">Alternate PhoneNumber</td>
            <td ><asp:TextBox ID="AlternatePhoneNumberTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr id ="Address1">
            <td id ="Address1Label" class="auto-style2">Address1</td>
            <td><asp:TextBox ID="Address1TextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr id ="Address2">
            <td id ="Address2Label" class="auto-style2">Address2</td>
            <td ><asp:TextBox ID="Address2TextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr id ="HomeCountry">
            <td id ="HomeCountryLabel" class="auto-style2">Home Country</td>
            <td><asp:TextBox ID="HomeCountryTextBox" runat="server"></asp:TextBox></td>
        </tr><tr id ="CurrentCountry">
            <td id ="CurrentCountryLabel" class="auto-style2">Current Country</td>
            <td><asp:TextBox ID="CurrentCountryTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr id ="ZipCode">
            <td id ="ZipCodeLabel" class="auto-style2">ZipCode</td>
            <td ><asp:TextBox ID="ZipCodeTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Button ID="SaveButton" runat="server" Text="Save" Width="300px" OnClick="SaveButton_Click" /></td>
            <td><asp:Button ID="EditButton" runat="server" Text="Edit" Width="300px" CssClass="auto-style3" /></td>
            <td><asp:Button ID="EmployeeClearButton" runat="server" Text="Clear" Width="300px" OnClick="EmployeeClearButton_Click" /></td>
        </tr>
    </table>
</asp:Content>
