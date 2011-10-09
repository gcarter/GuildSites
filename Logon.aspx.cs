using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Logon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void RegistrationBtn_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text == "" || txtPassword.Text == "")
        {
            lblError.Text = "Please enter a Username and a Password";
            lblError.Visible = true;
        }
        else
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
            var conString = System.Configuration.ConfigurationManager.ConnectionStrings["UserDBLogon"];
            conn.ConnectionString = conString.ConnectionString;

            conn.Open();

            System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
            comm.Connection = conn;
            comm.CommandText = "select userName from Carter_GA_Logon where userName=@userName and password=@pass";
            comm.Parameters.AddWithValue("@userName", txtUsername.Text);
            comm.Parameters.AddWithValue("@pass", txtPassword.Text);

            System.Data.SqlClient.SqlDataReader DR;
            DR = comm.ExecuteReader();

            if (DR.HasRows)
            {
                System.Web.Security.FormsAuthentication.SetAuthCookie(txtUsername.Text, false);
                Response.Redirect("Default.aspx");
                lblError.Visible = false;
            }
            else
            {
                lblError.Text = "The User name and/or Password you entered was incorrect.";
                lblError.Visible = true;
            }

            conn.Close();
            conn.Dispose();
        }
    }

}