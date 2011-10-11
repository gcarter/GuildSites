using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddEventToCalendar : System.Web.UI.Page
{
    private int day;
    private int month;
    private int year;

    protected void Page_Load(object sender, EventArgs e)
    {
        displayDate();
        for (int i = 1; i < 13; i++)
        {
            sHour.Items.Add(i.ToString());
        }
        for (int i = 1; i < 13; i++)
        {
            eHour.Items.Add(i.ToString());
        }
        for (int i = 0; i < 61; i++)
        {
            if (i.ToString().ToCharArray().Length == 1)
            {
                String p = "0" + i;
                sMinutes.Items.Add(p);
            }
            else
            {
                sMinutes.Items.Add(i.ToString());
            }            
        }
        for (int i = 0; i < 61; i++)
        {
            if (i.ToString().ToCharArray().Length == 1)
            {
                String p = "0" + i;
                eMinutes.Items.Add(p);
            }
            else
            {
                eMinutes.Items.Add(i.ToString());
            }
        }
        
        
    }
        
    protected void displayDate()
    {
        day = getDay();
        month = getMonth();
        year = getYear();

        Date.Text = month.ToString() + "/" + day.ToString() + "/" + year.ToString();
    }

    protected int getDay()
    {
        day = 0;

        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["CalendarData"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;


        comm.CommandText = "select day from Carter_GA_CalendarData where userID = @userID ";
        comm.Parameters.AddWithValue("@userID", "none");
        String rand = comm.ExecuteScalar().ToString();

        day = Convert.ToInt32(rand);

        conn.Close();
        conn.Dispose();

        return day;
    }

    protected int getMonth()
    {
        month = 0;

        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["CalendarData"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;


        comm.CommandText = "select month from Carter_GA_CalendarData where userID = @userID ";
        comm.Parameters.AddWithValue("@userID", "none");
        String rand = comm.ExecuteScalar().ToString();

        month = Convert.ToInt32(rand);

        conn.Close();
        conn.Dispose();

        return month;
    }

    protected int getYear()
    {
        year = 0;

        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["CalendarData"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;


        comm.CommandText = "select year from Carter_GA_CalendarData where userID = @userID ";
        comm.Parameters.AddWithValue("@userID", "none");
        String rand = comm.ExecuteScalar().ToString();

        year = Convert.ToInt32(rand);

        conn.Close();
        conn.Dispose();

        return year;
    }

    protected void saveInfo_Click(object sender, EventArgs e)
    {
        String starttime = sHour.SelectedValue + ":" + sMinutes.SelectedValue + Sampm.SelectedValue;
        String endtime = eHour.SelectedValue + ":" + eMinutes.SelectedValue + Eampm.SelectedValue;
        int unique = getUniqueValueFromDatabase();


        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["CalendarData"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;

        comm.CommandText = "INSERT into Carter_GA_CalendarData (userID, day, month, year, event_title, event_information, uniqueID, start_time, end_time) ";
        comm.CommandText += "values (@userID, @day, @month, @year, @event_title, @event_information, @uniqueID, @start_time, @end_time) ";
        comm.Parameters.AddWithValue("@userID", System.Web.HttpContext.Current.User.Identity.Name);
        comm.Parameters.AddWithValue("@day", day);
        comm.Parameters.AddWithValue("@month", month);
        comm.Parameters.AddWithValue("@year", year);
        comm.Parameters.AddWithValue("@event_title", EventTitle.Text);
        comm.Parameters.AddWithValue("@event_information", EventInformation.Text);
        comm.Parameters.AddWithValue("@uniqueID", unique);
        comm.Parameters.AddWithValue("@start_time", starttime);
        comm.Parameters.AddWithValue("@end_time", endtime);

        comm.ExecuteNonQuery();

        conn.Close();
        conn.Dispose();

        Response.Redirect("Calendar.aspx");
    }

    
    private int getUniqueValueFromDatabase()
    {
        int unique = 0;
        
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["CalendarData"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;

        
        comm.CommandText = "Select MAX(uniqueID) from Carter_GA_CalendarData";
        var max = comm.ExecuteScalar();

        int v = Convert.ToInt32(max);

        unique = v + 1;

        return unique;
    }
    protected void cancelBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Calendar.aspx");
    }
}