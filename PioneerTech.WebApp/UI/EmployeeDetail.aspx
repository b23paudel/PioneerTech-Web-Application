<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="EmployeeDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.EmployeeDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 350px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    .auto-style4 {
            width: 1203px;
        }
        .auto-style5 {
            margin-left: 428px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id ="EmployeeDetail" >
        <tr id ="Firstname">
            <td id ="FirstNameLabel" class="auto-style2">FirstName</td>
            <td class="auto-style4" >
                <asp:TextBox ID="FirstNameTextBox" runat="server" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FirstNameRequiredFieldValidator" runat="server" ErrorMessage="Please Enter First Number" ControlToValidate ="FirstNameTextBox" ForeColor ="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr id ="Lastname">
            <td id ="LastNameLabel" class="auto-style2">LastName</td>
            <td class="auto-style4"><asp:TextBox ID="LastNameTextBox" runat="server" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameRequiredFieldValidator" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Please Enter Last Name." ForeColor ="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr id ="EmailId">
            <td id ="EmailIdLabel" class="auto-style2">Email Id</td>
            <td class="auto-style4"><asp:TextBox ID="EmailIdTextBox" runat="server" Width="298px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="EmailIdTextBox" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr id ="PhoneNumber">
            <td id ="PhoneNumberLabel" class="auto-style2">PhoneNumber</td>
            <td class="auto-style4"><asp:TextBox ID="PhoneNumberTextBox" runat="server" Width="297px" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="PhoneNymberRegularExpressionValidator" runat="server" ControlToValidate="PhoneNumberTextBox" ErrorMessage="Please enter Valid Phone Number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr id ="AlternatePhoneNumber">
            <td id ="AlternatePhoneNumberLabel" class="auto-style2">Alternate PhoneNumber</td>
            <td class="auto-style4" ><asp:TextBox ID="AlternatePhoneNumberTextBox" runat="server" Width="298px"></asp:TextBox></td>
        </tr>
        <tr id ="Address1">
            <td id ="Address1Label" class="auto-style2">Address1</td>
            <td class="auto-style4"><asp:TextBox ID="Address1TextBox" runat="server" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Address1RequiredFieldValidator" runat="server" ControlToValidate="Address1TextBox" ErrorMessage="Please Enter Your Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr id ="Address2">
            <td id ="Address2Label" class="auto-style2">Address2</td>
            <td class="auto-style4" ><asp:TextBox ID="Address2TextBox" runat="server" Width="298px"></asp:TextBox></td>
        </tr>
        <tr id ="HomeCountry">
            <td id ="HomeCountryLabel" class="auto-style2">Home Country</td>
            <td class="auto-style4"><asp:TextBox ID="HomeCountryTextBox" runat="server" Width="298px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="HomeRequiredFieldValidator" runat="server" ControlToValidate="HomeCountryTextBox" ErrorMessage="Please Enter Home Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr><tr id ="CurrentCountry">
            <td id ="CurrentCountryLabel" class="auto-style2">Current Country</td>
            <td class="auto-style4"><asp:TextBox ID="CurrentCountryTextBox" runat="server" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CurrentCountryRequiredFieldValidator" runat="server" ControlToValidate="CurrentCountryTextBox" ErrorMessage="Please Enter Current Country" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr id ="ZipCode">
            <td id ="ZipCodeLabel" class="auto-style2">ZipCode</td>
            <td class="auto-style4" ><asp:TextBox ID="ZipCodeTextBox" runat="server" Width="298px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ZipCodeRequiredFieldValidator" runat="server" ControlToValidate="ZipCodeTextBox" ErrorMessage="Please Enter Zip Code" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Button ID="SaveButton" runat="server" Text="Save" Width="300px" OnClick="SaveButton_Click" /></td>
            <td class="auto-style4"><asp:Button ID="EditButton" runat="server" Text="Edit" Width="124px" CssClass="auto-style3" />
                <asp:DropDownList ID="EmployeeIdDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="EmployeeID" DataValueField="EmployeeID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PioneerTechConnectionString4 %>" SelectCommand="SELECT [EmployeeID] FROM [EmployeeDetail]"></asp:SqlDataSource>
                <asp:Button ID="EmployeeClearButton" runat="server" Text="Clear" Width="155px" OnClick="EmployeeClearButton_Click" CssClass="auto-style5" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
