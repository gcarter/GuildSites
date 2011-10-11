using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int month = DateTime.Now.Date.Month;
        convertMonth(month);

        DropDownListYear.Items.Add("Year");
        for (int i = DateTime.Now.Date.Year - 25; i < DateTime.Now.Date.Year + 25; i++)
        {
            DropDownListYear.Items.Add(i.ToString());
        }
        createEventsGrid(sender, e);

    }

    
            
    protected void SelectionChanged_Click(object sender, EventArgs e)
    {
        int month = 0;
        int day = 0;
        int year = 0;

        month = newCalendar.SelectedDate.Month;
        day = newCalendar.SelectedDate.Day;
        year = newCalendar.SelectedDate.Year;

        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["CalendarData"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;


        comm.CommandText = "UPDATE Carter_GA_CalendarData SET day = @day, month = @month, year = @year where userID = @userID ";
        
        comm.Parameters.AddWithValue("@day", day);
        comm.Parameters.AddWithValue("@month", month);
        comm.Parameters.AddWithValue("@year", year);
        comm.Parameters.AddWithValue("@userID", "none");

        comm.ExecuteNonQuery();

        conn.Close();
        conn.Dispose();
        
        Response.Redirect("AddEventToCalendar.aspx");
    }
     

    private void convertMonth(int month)
    {
        if (month == 1)
        {
            lblmonth.Text = "January";
        }
        if (month == 2)
        {
            lblmonth.Text = "February";
        }
        if (month == 3)
        {
            lblmonth.Text = "March";
        }
        if (month == 4)
        {
            lblmonth.Text = "April";
        }
        if (month == 5)
        {
            lblmonth.Text = "May";
        }
        if (month == 6)
        {
            lblmonth.Text = "June";
        }
        if (month == 7)
        {
            lblmonth.Text = "July";
        }
        if (month == 8)
        {
            lblmonth.Text = "August";
        }
        if (month == 9)
        {
            lblmonth.Text = "September";
        }
        if (month == 10)
        {
            lblmonth.Text = "October";
        }
        if (month == 11)
        {
            lblmonth.Text = "November";
        }
        if (month == 12)
        {
            lblmonth.Text = "December";
        }

    }

    protected void GoBtn_Click(object sender, EventArgs e)
    {
        if (DropDownListMonth.SelectedItem.Text != "Month")
        {
            if (DropDownListYear.SelectedItem.Text != "Year")
            {
                String theDate = (DropDownListMonth.SelectedValue + "/" + 1 + "/" + DropDownListYear.SelectedValue).ToString();
                DateTime dt;
                dt = System.Convert.ToDateTime(theDate);
                newCalendar.TodaysDate = dt;
                lblmonth.Text = DropDownListMonth.SelectedItem.Text;
                lblyear.Text = DropDownListYear.SelectedItem.Text;
            }
        }
        
    }
    protected void CurrentDate_Click(object sender, EventArgs e)
    {
        newCalendar.TodaysDate = DateTime.Now.Date;
        int tempMonth = DateTime.Now.Date.Month;
        int tempYear = DateTime.Now.Date.Year;

        convertMonth(tempMonth);
        lblyear.Text = tempYear.ToString();
    }

    protected void createEventsGrid(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["CalendarData"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;


        comm.CommandText = "Select [event_title], [event_information], [start_time], [end_time] from Carter_GA_CalendarData where ([month] = @month) ORDER BY [day], [start_time] ";
        comm.Parameters.AddWithValue("@month", backwardsConvertMonth());

        var dt = comm.ExecuteReader();

        conn.Close();
        conn.Dispose();
    }

    protected int backwardsConvertMonth()
    {
        int month = 0;

        if (lblmonth.Text == "January")
        {
            month = 1;
        }
        else if (lblmonth.Text == "February")
        {
            month = 2;
        }
        else if (lblmonth.Text == "March")
        {
            month = 3;
        }
        else if (lblmonth.Text == "April")
        {
            month = 4;
        }
        else if (lblmonth.Text == "May")
        {
            month = 5;
        }
        else if (lblmonth.Text == "June")
        {
            month = 6;
        }
        else if (lblmonth.Text == "July")
        {
            month = 7;
        }
        else if (lblmonth.Text == "August")
        {
            month = 8;
        }
        else if (lblmonth.Text == "September")
        {
            month = 9;
        }
        else if (lblmonth.Text == "October")
        {
            month = 10;
        }
        else if (lblmonth.Text == "November")
        {
            month = 11;
        }
        else if (lblmonth.Text == "December")
        {
            month = 12;
        }

        return month;
    }
}