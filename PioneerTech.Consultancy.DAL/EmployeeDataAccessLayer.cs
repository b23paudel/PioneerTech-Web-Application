using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pioneertech.Consultancy.model;

namespace PioneerTech.Consultancy.DAL
{
    public class EmployeeDataAccessLayer
    {
        //public EmployeeDataAccessLayer()
        //{
        //    SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
        //        "Initial Catalog=PioneerTech;" +
        //        "Integrated Security=true");
        //    mssqlconnection.Open();
        //}
        public int SaveEmployeeData(EmployeeDetail employeeDetail)
        {
            //SqlConnection mssqlconnection;
            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            SqlCommand command = new SqlCommand("INSERT INTO EmployeeDetail VALUES(" +
                       "'" + employeeDetail.FirstName + "','" + employeeDetail.LastName + "','" + employeeDetail.EmailId + "'," +
                       employeeDetail.PhoneNumber + "," + employeeDetail.AlternatePhoneNumber + ",'" + employeeDetail.Address1 + "','" + employeeDetail.Address2 +
                       "','" + employeeDetail.HomeCountry + "','" + employeeDetail.CurrentCountry + "'," + employeeDetail.ZipCode + ")", mssqlconnection);
            int row = command.ExecuteNonQuery();
            mssqlconnection.Close();
            return row;
        }
        public int SaveEmployeeProjectData(ProjectDetail projectDetail)
        {
            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            SqlCommand command = new SqlCommand("INSERT INTO ProjectDetail VALUES(" +
                           "'" + projectDetail.ProjectName + "','" + projectDetail.ClientName + "','" + projectDetail.Location + "','" +
                          projectDetail.Roles + "'," + projectDetail.EmployeeId + ")", mssqlconnection);
            int row = command.ExecuteNonQuery();
            mssqlconnection.Close();
            return row;
        }
        public int SaveEmployeeCompanyData(CompanyDetail companyDetail)
        {
            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            SqlCommand command = new SqlCommand("INSERT INTO CompanyDetail VALUES(" +
                           "'" + companyDetail.EmployerName + "'," + companyDetail.ContactNumber + ",'" + companyDetail.Location + "','" +
                          companyDetail.Website + "'," + companyDetail.EmployeeId + ")", mssqlconnection);
            int row = command.ExecuteNonQuery();
            mssqlconnection.Close();
            return row;
        }
        public int EditEmployeeCompanyData(CompanyDetail companyDetail)
        {
            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            string sql = $"UPDATE [CompanyDetail] SET[EmployerName] =  '{companyDetail.EmployerName}',[ContactNumber] = {companyDetail.ContactNumber},[Location] = '{companyDetail.Location}',[Website] =' {companyDetail.Website}' WHERE EmployeeID= {companyDetail.EmployeeId}";
            SqlCommand command = new SqlCommand(sql, mssqlconnection);
            int row = command.ExecuteNonQuery();
            mssqlconnection.Close();
            return row;
        }
        /*
        public int EditEmployeeData(EmployeeDetail employeeDetail)
        {
            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            string sql = $"UPDATE [EmployeeDetail] SET[FirstName] =  '{employeeDetail.FirstName}'," +
                $"[LastName] = '{employeeDetail.LastName}'," +
                $"[Email] = '{employeeDetail.EmailId}'," +
                $"[ContactNumber] = {employeeDetail.PhoneNumber}," +
                $"[AlternateContactNumber] = {employeeDetail.AlternatePhoneNumber}," +
                $"[Address] =' {employeeDetail.Address1}'," +
                $"[AlternateAddress] =' {employeeDetail.Address2}'," +
                $"[HomeCountry] =' {employeeDetail.HomeCountry}'," +
                $"[CurrentCountry] =' {employeeDetail.CurrentCountry}'," +
                $"[ZipCode] = {employeeDetail.ZipCode} " +
                $"WHERE EmployeeID= {employeeDetail.EmployeeId}";
            SqlCommand command = new SqlCommand(sql, mssqlconnection);
            int row = command.ExecuteNonQuery();
            mssqlconnection.Close();
            return row;
        }*/
        public int SaveEmployeeTechnicalData(TechnicalDetail technicalDetail)
        {
            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            SqlCommand command = new SqlCommand("INSERT INTO TechnicalDetail VALUES(" +
                           "'" + technicalDetail.UI + "','" + technicalDetail.ProgarmmingLanguage + "','" + technicalDetail.Database +"'," + technicalDetail.EmployeeId + ")", mssqlconnection);
            int row = command.ExecuteNonQuery();
            mssqlconnection.Close();
            return row;

        }
        public int SaveEmployeeEducationalData(EducationalDetail educationalDetail)
        {
            SqlConnection mssqlconnection = new SqlConnection("Data Source=DESKTOP-I3T5H70;" +
                  "Initial Catalog=PioneerTech;" +
                 "Integrated Security=true");
            mssqlconnection.Open();
            SqlCommand command = new SqlCommand("INSERT INTO EducationDetail VALUES(" +
                           "'" + educationalDetail.CourseType + "'," + educationalDetail.YearOfPass + ",'" + educationalDetail.Specialization + "'," + educationalDetail.EmployeeId + ")", mssqlconnection);
            int row = command.ExecuteNonQuery();
            mssqlconnection.Close();
            return row;

        }
    }
}
