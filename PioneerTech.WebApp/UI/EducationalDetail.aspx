<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="EducationalDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.EducationalDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 640px;
    }
    .auto-style2 {
        margin-left: 95px;
            margin-bottom: 0px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
        <tr>
            <td id ="CourseType">Course Type</td>
            <td class="auto-style1">
                <asp:Textbox id="CourseTypeTextBox" runat="server"></asp:Textbox>
                <asp:RequiredFieldValidator ID="CourseTypeRequiredFieldValidator" runat="server" ControlToValidate="CourseTypeTextBox" ErrorMessage="Enter a Course Type" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td id="YearOfPass">Year of Pass</td>
            <td >
                <asp:TextBox ID="YearOfPassTextBox" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="YearOfPassRequiredFieldValidator" runat="server" ControlToValidate="YearOfPassTextBox" ErrorMessage="Enter a Year of Pass." ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td id ="Specialization">Specialization</td>
            <td class="auto-style1">
                <asp:TextBox ID="SpecializationTextBox" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="SpecializationRequiredFieldValidator" runat="server" ControlToValidate="SpecializationTextBox" ErrorMessage="Enter a Specialization" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td id ="EmployeeId">Employee ID</td>
            <td class="auto-style1">
                <asp:TextBox ID="EmployeeIdTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="TechnicalDetailSaveButton" runat="server" Text="Save" OnClick="TechnicalDetailSaveButton_Click1"  />
            </td>
            <td class="auto-style1">
                <asp:Button ID="EducationalDetailEditButton" runat="server" Text="Edit" Width="116px" OnClick="EducationalDetailEditButton_Click1"/>
                <asp:DropDownList ID="EducationalDetailEmployeeIdDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="EmployeeID" DataValueField="EmployeeID" Width="128px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PioneerTechConnectionString9 %>" SelectCommand="SELECT [EmployeeID] FROM [EducationDetail]"></asp:SqlDataSource>
                <asp:Button ID="TechnicalDetailClearButton" runat="server" CssClass="auto-style2" Text="Clear" OnClick="TechnicalDetailClearButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
