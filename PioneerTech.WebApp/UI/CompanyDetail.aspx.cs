using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PioneerTech.Consultancy.DAL;

namespace PioneerTech.WebApp.UI
{
    public partial class CompanyDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Pioneertech.Consultancy.model.CompanyDetail companyDetail = new Pioneertech.Consultancy.model.CompanyDetail
            {
                EmployerName = EmployerNameTextBox.Text,
                ContactNumber = Convert.ToInt64(EmployerContactNumberTextBox.Text),
                Location = CompanyLocationTextBox.Text,
                Website = CompanyWebsiteTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIDTextBox.Text)

            };
            EmployeeDataAccessLayer companyDAL = new EmployeeDataAccessLayer();
            int numberOfRowEffected = companyDAL.SaveEmployeeCompanyData(companyDetail);
            if (numberOfRowEffected > 0)
            {
                string display = "Employee Company Data is Successfully Saved";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
            else
            {
                string display = "Employee Company Data not Saved. Please try again.";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
        }

        protected void CompanyClearButton_Click(object sender, EventArgs e)
        {
            EmployerNameTextBox.Text = string.Empty;
            EmployerContactNumberTextBox.Text = string.Empty;
            CompanyLocationTextBox.Text = string.Empty;
            CompanyWebsiteTextBox.Text = string.Empty;
            EmployeeIDTextBox.Text = string.Empty;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Pioneertech.Consultancy.model.CompanyDetail companyDetail = new Pioneertech.Consultancy.model.CompanyDetail
            {
                EmployerName = EmployerNameTextBox.Text,
                ContactNumber = Convert.ToInt32(EmployerContactNumberTextBox.Text),
                Location = CompanyLocationTextBox.Text,
                Website = CompanyWebsiteTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIDTextBox.Text)


            };
            EmployeeDataAccessLayer companyDAL = new EmployeeDataAccessLayer();
            int numberOfRowEffected = companyDAL.EditEmployeeCompanyData(companyDetail);
            if (numberOfRowEffected > 0)
            {
                string display = "Employee Company Data is Successfully Edited";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
            else
            {
                string display = "Employee Company Data not updated . Please try again.";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }

        }

        protected void EmployeeIDTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}