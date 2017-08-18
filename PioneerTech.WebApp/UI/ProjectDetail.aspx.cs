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
    public partial class ProjectDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void ProjectSaveButton_Click(object sender, EventArgs e)
        {
            Pioneertech.Consultancy.model.ProjectDetail projectDetail = new Pioneertech.Consultancy.model.ProjectDetail
            {
                ProjectName = ProjectNameTextBox.Text,
                ClientName = ClientNameTextBox.Text,
                Location = LocationTextBox.Text,
                Roles = RolesTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIdTextBox.Text)

            };
            EmployeeDataAccessLayer projectDAL = new EmployeeDataAccessLayer();
            int numberOfRowEffected = projectDAL.SaveEmployeeProjectData(projectDetail);
            if (numberOfRowEffected > 0)
            {
                string display = "Project Data is Successfully Saved";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
            else
            {
                string display = "Project Data not Saved. Please try again.";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            ProjectNameTextBox.Text = string.Empty;
            ClientNameTextBox.Text = string.Empty;
            LocationTextBox.Text = string.Empty;
            RolesTextBox.Text = string.Empty;
            EmployeeIdTextBox.Text = string.Empty;

        }

        protected void ProjectEditButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void ProjectEditButton_Click1(object sender, EventArgs e)
        {

            Pioneertech.Consultancy.model.ProjectDetail projectDetail = new Pioneertech.Consultancy.model.ProjectDetail
                {
                    ProjectName = ProjectNameTextBox.Text,
                    ClientName = ClientNameTextBox.Text,
                    Location = LocationTextBox.Text,
                    Roles = RolesTextBox.Text,
                    EmployeeId = Convert.ToInt32(ProjectEmployeeIdDropDownList.Text)


                };
                int EmployeeId = int.Parse(ProjectEmployeeIdDropDownList.Text);


                SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                      "Initial Catalog=PioneerTech;" +
                     "Integrated Security=true");
                mssqlconnection.Open();
            string sql = "UPDATE [ProjectDetail] SET[ProjectName] = " +
                        "'" + projectDetail.ProjectName + "',[ClientName] = '" + projectDetail.ClientName + "',[Location] = '" + projectDetail.Location + "',[Roles] =' " + projectDetail.Roles +
                        "'WHERE EmployeeID = " + EmployeeId;
                SqlCommand command = new SqlCommand(sql, mssqlconnection);
                int numberOfRowEffected = command.ExecuteNonQuery();
                mssqlconnection.Close();

                if (numberOfRowEffected > 0)
                {
                    string display = "Employee Project Data is Successfully Edited";
                    ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
                }
                else
                {
                    string display = "Employee Project Data not Edited. Please try again.";
                    ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
                }
            
        }
    }
}