using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    private int dayOfTheYear;
    private int year;
    private int month;
    private int days;
    //private int dotw;

    protected void Page_Load(object sender, EventArgs e)
    {
        //see notes in the notebook.
        dayOfTheYear = DateTime.Now.Date.DayOfYear;
        getDateInfo();
    }

    private void getDateInfo()
    {
        getCurrentYear();
        getCurrentMonth();
        getCurrentMonthDate();
        
    }

    private void getCurrentMonthDate()
    {
        String date = DateTime.Now.Date.Day.ToString();
        String dotw = DateTime.Now.Date.DayOfWeek.ToString();
        
    }

    private void getCurrentYear()
    {
        year = DateTime.Now.Date.Year;
        YearLabel.Text = year.ToString();
    }
    private void getCurrentMonth()
    {
        month = DateTime.Now.Date.Month;
        getDaysOfMonth();
        setMonth();
    }
    private void getDaysOfMonth()
    {
        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
        {
            days = 31;
        }
        else if (month == 4 || month == 6 || month == 9 || month == 11)
        {
            days = 30;
        }
        else if (month == 2)
        {
            int tempYear = DateTime.Now.Date.Year;

            if (tempYear % 400 == 0)
                days = 29;
            else if (tempYear % 100 == 0)
                days = 28;
            else if (tempYear % 4 == 0)
                days = 29;
            else
                days = 28;

        }
    }

    public void setMonth()
    {
        if (month == 1)
        {
            MonthLabel.Text = "January";
        }else if (month == 2)
        {
            MonthLabel.Text = "February";
        }else if (month == 3)
        {
            MonthLabel.Text = "March";
        }else if (month == 4)
        {
            MonthLabel.Text = "April";
        }else if (month == 5)
        {
            MonthLabel.Text = "May";
        }else if (month == 6)
        {
            MonthLabel.Text = "June";
        }else if (month == 7)
        {
            MonthLabel.Text = "July";
        }else if (month == 8)
        {
            MonthLabel.Text = "August";
        }else if (month == 9)
        {
            MonthLabel.Text = "September";
        }else if (month == 10)
        {
            MonthLabel.Text = "October";
        }else if (month == 11)
        {
            MonthLabel.Text = "November";
        }
        else if (month == 12)
        {
            MonthLabel.Text = "December";
        }
        else
        {
            MonthLabel.Text = "Unknown Month";
        }
        
    }

    //private void calcDayOfYear()
    //{
    //    int jan = 31;
    //    int feb = 0;
    //    int mar = 31;
    //    int apr = 30;
    //    int may = 31;
    //    int jun = 30;
    //    int jul = 31;
    //    int aug = 31;
    //    int sep = 30;
    //    int oct = 31;
    //    int nov = 30;
    //    int dec = 31;
        
    //    int date = DateTime.Now.Date.DayOfYear;

    //    if (year % 400 == 0)
    //        feb = 29;
    //    else if (year % 100 == 0)
    //        feb = 28;
    //    else if (year % 4 == 0)
    //        feb = 29;
    //    else
    //        feb = 28;
        
    //}
}