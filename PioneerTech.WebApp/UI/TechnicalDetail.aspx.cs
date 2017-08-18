using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pioneertech.Consultancy.model;
using PioneerTech.Consultancy.DAL;
using System.Data.SqlClient;

namespace PioneerTech.WebApp.UI
{
    public partial class TechnicalDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void TechnicalDetailSaveButton_Click(object sender, EventArgs e)
        {
            Pioneertech.Consultancy.model.TechnicalDetail technicalDetail = new Pioneertech.Consultancy.model.TechnicalDetail
            {
                UI = UITextBox.Text,
                ProgarmmingLanguage = ProgrammingTextBox.Text,
                Database = DatabasetextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIdTextBox.Text)

            };
            EmployeeDataAccessLayer technicalDetailDAL = new EmployeeDataAccessLayer();
            int numberOfRowEffected = technicalDetailDAL.SaveEmployeeTechnicalData(technicalDetail);
            if (numberOfRowEffected > 0)
            {
                string display = "Employee Technical Data is Successfully Saved";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
            else
            {
                string display = "Employee Technical Data not Saved. Please try again.";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
        }

        protected void TechnicalDetailEditButton_Click(object sender, EventArgs e)
        {
            Pioneertech.Consultancy.model.TechnicalDetail technicalDetail = new Pioneertech.Consultancy.model.TechnicalDetail
            {
                UI = UITextBox.Text,
                ProgarmmingLanguage = ProgrammingTextBox.Text,
                Database = DatabasetextBox.Text,
                EmployeeId = Convert.ToInt32(TechnicalEmployeeIdDropDownList.Text)


            };
            int EmployeeId = int.Parse(TechnicalEmployeeIdDropDownList.Text);


            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            string sql = "UPDATE [TechnicalDetail] SET[UI] = " +
                        "'" + technicalDetail.UI + "',[ProgrammingLanguage] = '" + technicalDetail.ProgarmmingLanguage + "',[Database] = '" + technicalDetail.Database + 
                        "'WHERE EmployeeID = " + EmployeeId;
            SqlCommand command = new SqlCommand(sql, mssqlconnection);
            int numberOfRowEffected = command.ExecuteNonQuery();
            mssqlconnection.Close();

            if (numberOfRowEffected > 0)
            {
                string display = "Employee Technical Data is Successfully Edited";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
            else
            {
                string display = "Employee Technical Data not Edited. Please try again.";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            } 
        }

        protected void TechnicalDetailClearButton_Click(object sender, EventArgs e)
        {
            UITextBox.Text = string.Empty;
            ProgrammingTextBox.Text = string.Empty;
            DatabasetextBox.Text = string.Empty;
            EmployeeIdTextBox.Text = string.Empty;
        }
    }
}