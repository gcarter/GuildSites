using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        if (txtPass.Text != txtVPass.Text)
        {
            txtPass.Text = "";
            txtVPass.Text = "";
            checkusername.Text = "Passwords do NOT match";
            checkusername.Visible = true;
        }
        else
        {
            string connectionstring = "Data Source=devrystudentsp10.db.6077598.hostedresource.com;Persist Security Info=True;User ID=DeVryStudentSP10;Password=OidLZqBv4";
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = connectionstring;
            conn.Open();
            System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
            comm.Connection = conn;
            comm.CommandText = "insert into Carter_GA_Logon (userName, password, fName, lName)";
            comm.CommandText += "values (@username, @password, @fname, @lname)";

            comm.Parameters.AddWithValue("@username", txtUsername.Text);
            comm.Parameters.AddWithValue("@password", txtPass.Text);
            comm.Parameters.AddWithValue("@fname", txtFname.Text);
            comm.Parameters.AddWithValue("@lname", txtLname.Text);

            if (checkUserName(txtUsername.Text))
            {
                comm.ExecuteNonQuery();
                checkusername.Text = "Successful Entry!";
                checkusername.Visible = true;
                txtUsername.Text = "";
                txtPass.Text = "";
                txtVPass.Text = "";
                txtFname.Text = "";
                txtLname.Text = "";
            }
            else
            {
                checkusername.Text = "User name is already in use, please select another.";
                checkusername.Visible = true;
                txtUsername.Text = "";
            }

            conn.Close();
            conn.Dispose();

            
            
        }
    }

    public bool checkUserName(String userName)
    {
        string connectionstring = "Data Source=devrystudentsp10.db.6077598.hostedresource.com;Persist Security Info=True;User ID=DeVryStudentSP10;Password=OidLZqBv4";
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        conn.ConnectionString = connectionstring;
        conn.Open();
        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;
        comm.CommandText = "select userName from Carter_GA_Logon where userName = @userName ";
        comm.Parameters.AddWithValue("@username", userName);

        var resp = comm.ExecuteScalar();

        conn.Close();
        conn.Dispose();

        if (resp == null || resp.ToString() != txtUsername.Text)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

}