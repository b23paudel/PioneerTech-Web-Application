using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pioneertech.Consultancy.model;
using PioneerTech.Consultancy.DAL;

namespace PioneerTech.WebApp.UI
{
    public partial class EmployeeDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Pioneertech.Consultancy.model.EmployeeDetail employeeDetail = new Pioneertech.Consultancy.model.EmployeeDetail
            {
                FirstName = FirstNameTextBox.Text,
                LastName = LastNameTextBox.Text,
                EmailId = EmailIdTextBox.Text,
                PhoneNumber = Convert.ToInt64(PhoneNumberTextBox.Text),
                AlternatePhoneNumber = Convert.ToInt64(AlternatePhoneNumberTextBox.Text),
                Address1 = Address1TextBox.Text,
                Address2 = Address2TextBox.Text,
                HomeCountry = HomeCountryTextBox.Text,
                CurrentCountry = CurrentCountryTextBox.Text,
                ZipCode = Convert.ToInt32(ZipCodeTextBox.Text)
            };


            EmployeeDataAccessLayer employeeDAL = new EmployeeDataAccessLayer();
            int numberOfRowEffected = employeeDAL.SaveEmployeeData(employeeDetail);
            if (numberOfRowEffected > 0)
            {
                string display = "Employee Data is Successfully Saved";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
            else
            {
                string display = "Employee Data not Saved. Please try again.";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }

        }

        protected void EmployeeClearButton_Click(object sender, EventArgs e)
        {
            FirstNameTextBox.Text = string.Empty;
            LastNameTextBox.Text = string.Empty;
            EmailIdTextBox.Text = string.Empty;
            PhoneNumberTextBox.Text = string.Empty;
            AlternatePhoneNumberTextBox.Text = string.Empty;
            Address1TextBox.Text = string.Empty;
            Address2TextBox.Text = string.Empty;
            HomeCountryTextBox.Text = string.Empty;
            CurrentCountryTextBox.Text = string.Empty;
            ZipCodeTextBox.Text = string.Empty;
        }
    }
}
