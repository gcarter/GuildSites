using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModCharacters : System.Web.UI.Page
{        
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void updateBtn_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["RosterDB"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        if (txtAchPnts.Text == null)
            txtAchPnts.Text = " ";
        if (txtCharName.Text == null)
            txtCharName.Text = " ";
        if (txtCharOwner.Text == null)
            txtCharOwner.Text = " ";
        
        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;
        comm.CommandText = "select charName from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        txtCharName.Text = comm.ExecuteScalar().ToString();
        comm.CommandText = "select charLevel from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        DropDownListLevel.SelectedValue = comm.ExecuteScalar().ToString();
        comm.CommandText = "select charClass from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        DropDownListClass.SelectedValue = comm.ExecuteScalar().ToString();
        comm.CommandText = "select charRace from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        DropDownListRaces.SelectedValue = comm.ExecuteScalar().ToString();
        comm.CommandText = "select charAchPnts from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        txtAchPnts.Text = comm.ExecuteScalar().ToString();
        comm.CommandText = "select charProf1 from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        DropDownListProfession1.SelectedValue = comm.ExecuteScalar().ToString();
        comm.CommandText = "select Prof1Skill from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        DropDownListProfession1Skill.SelectedValue = comm.ExecuteScalar().ToString();
        comm.CommandText = "select charProf2 from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        DropDownListProfession2.SelectedValue = comm.ExecuteScalar().ToString();
        comm.CommandText = "select Prof2Skill from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        DropDownListProfession2Skill.SelectedValue = comm.ExecuteScalar().ToString();
        comm.CommandText = "select charOwner from Carter_GA_RosterInformation where charName = '" + charNameList.SelectedValue + "'";
        txtCharOwner.Text = comm.ExecuteScalar().ToString();

        conn.Close();
        conn.Dispose();

    }
        
    protected void submitChangesBtn_Click(object sender, EventArgs e)
    {

        //need to update the database with the new changes.
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["RosterDB"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;


        comm.CommandText = "update Carter_GA_RosterInformation SET charName = @charName where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@charName", txtCharName.Text);
        comm.ExecuteNonQuery();
        comm.CommandText = "update Carter_GA_RosterInformation SET charLevel = @charLevel where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@charLevel", DropDownListLevel.SelectedValue);
        comm.ExecuteNonQuery();
        comm.CommandText = "update Carter_GA_RosterInformation SET charClass = @charClass where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@charClass", DropDownListClass.SelectedValue);
        comm.ExecuteNonQuery();
        comm.CommandText = "update Carter_GA_RosterInformation SET charRace = @charRace where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@charRace", DropDownListRaces.SelectedValue);
        comm.ExecuteNonQuery();
        comm.CommandText = "update Carter_GA_RosterInformation SET charAchPnts = @charAchPnts where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@charAchPnts", txtAchPnts.Text);
        comm.ExecuteNonQuery();
        comm.CommandText = "update Carter_GA_RosterInformation SET charProf1 = @charProf1 where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@charProf1", DropDownListProfession1.SelectedValue);
        comm.ExecuteNonQuery();
        comm.CommandText = "update Carter_GA_RosterInformation SET Prof1Skill = @Prof1Skill where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@Prof1Skill", DropDownListProfession1Skill.SelectedValue);
        comm.ExecuteNonQuery();
        comm.CommandText = "update Carter_GA_RosterInformation SET charProf2 = @charProf2 where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@charProf2", DropDownListProfession2.SelectedValue);
        comm.ExecuteNonQuery();
        comm.CommandText = "update Carter_GA_RosterInformation SET Prof2Skill = @Prof2Skill where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@Prof2Skill", DropDownListProfession2Skill.SelectedValue);
        comm.ExecuteNonQuery();
        comm.CommandText = "update Carter_GA_RosterInformation SET charOwner = @charOwner where charName = '" + charNameList.SelectedValue + "'";
        comm.Parameters.AddWithValue("@charOwner", txtCharOwner.Text);
        comm.ExecuteNonQuery();
        
        txtCharName.Text = "";
        DropDownListLevel.SelectedIndex = 0;
        DropDownListClass.SelectedIndex = 0;
        DropDownListRaces.SelectedIndex = 0;
        txtAchPnts.Text = "";
        DropDownListProfession1.SelectedIndex = 0;
        DropDownListProfession1Skill.SelectedIndex = 0;
        DropDownListProfession2.SelectedIndex = 0;
        DropDownListProfession2Skill.SelectedIndex = 0;
        txtCharOwner.Text = "";

        conn.Close();
        conn.Dispose();

        Response.Redirect("Roster.aspx");
    }
}