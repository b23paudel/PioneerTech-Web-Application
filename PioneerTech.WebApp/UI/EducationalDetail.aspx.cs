using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PioneerTech.Consultancy.DAL;
using Pioneertech.Consultancy.model;
using System.Data.SqlClient;

namespace PioneerTech.WebApp.UI
{
    public partial class EducationalDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void TechnicalDetailSaveButton_Click(object sender, EventArgs e)
        {
            Pioneertech.Consultancy.model.EducationalDetail educationalDetail = new Pioneertech.Consultancy.model.EducationalDetail
            {
                CourseType = CourseTypeTextBox.Text,
                YearOfPass = Convert.ToDateTime(YearOfPassTextBox.Text),
                Specialization = SpecializationTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIdTextBox.Text)

            };
            EmployeeDataAccessLayer educationalDAL = new EmployeeDataAccessLayer();
            int numberOfRowEffected = educationalDAL.SaveEmployeeEducationalData(educationalDetail);
            if (numberOfRowEffected > 0)
            {
                string display = "Employee Educational Data is Successfully Saved";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
            else
            {
                string display = "Employee Educational Data not Saved. Please try again.";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
        }

        protected void TechnicalDetailClearButton_Click(object sender, EventArgs e)
        {
            CourseTypeTextBox.Text = string.Empty; 
            YearOfPassTextBox.Text = string.Empty;
            SpecializationTextBox.Text = string.Empty;
            EmployeeIdTextBox.Text = string.Empty;
        }

        protected void EducationalDetailEditButton_Click(object sender, EventArgs e)
        {
        }

        protected void EducationalDetailEditButton_Click1(object sender, EventArgs e)
        {
            Pioneertech.Consultancy.model.EducationalDetail educationalDetail = new Pioneertech.Consultancy.model.EducationalDetail
            {
                CourseType = CourseTypeTextBox.Text,
                YearOfPass = Convert.ToDateTime(YearOfPassTextBox.Text),
                Specialization = SpecializationTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIdTextBox.Text)


            };
            int EmployeeId = int.Parse(EducationalDetailEmployeeIdDropDownList.Text);


            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            string sql = "UPDATE [EducationDetail] SET[CourseType] = " +
                        "'" + educationalDetail.CourseType + "',[YearOfPass] = " + educationalDetail.YearOfPass + ",[Specialization] = '" + educationalDetail.Specialization +
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

        protected void TechnicalDetailSaveButton_Click1(object sender, EventArgs e)
        {
            Pioneertech.Consultancy.model.EducationalDetail educationalDetail = new Pioneertech.Consultancy.model.EducationalDetail
            {
                CourseType = CourseTypeTextBox.Text,
                YearOfPass = Convert.ToDateTime(YearOfPassTextBox.Text),
                Specialization = SpecializationTextBox.Text,
                EmployeeId = Convert.ToInt32(EducationalDetailEmployeeIdDropDownList.Text)


            };
            int EmployeeId = int.Parse(EducationalDetailEmployeeIdDropDownList.Text);


            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            string sql = "UPDATE [EducationDetail] SET[CourseType] = " +
                        "'" + educationalDetail.CourseType + "',[YearOfPass] = " + educationalDetail.YearOfPass + ",[Specilization] = '" + educationalDetail.Specialization +
                        "'WHERE EmployeeID = " + EmployeeId;
            SqlCommand command = new SqlCommand(sql, mssqlconnection);
            int numberOfRowEffected = command.ExecuteNonQuery();
            mssqlconnection.Close();

            if (numberOfRowEffected > 0)
            {
                string display = "Employee Educational Data is Successfully Edited";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
            else
            {
                string display = "Employee Educatonal Data not Edited. Please try again.";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
        }
    }
}