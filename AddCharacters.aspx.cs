using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCharacters : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //does nothing but display a list of character names already in the database.
    }
    protected void addCharBtn_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["RosterDB"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();

        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;

        comm.CommandText = "insert into Carter_GA_RosterInformation (charName, charLevel, charClass, charRace, charAchPnts, charProf1, Prof1Skill, charProf2, Prof2Skill, charOwner)";
        comm.CommandText += "values (@charName, @charLevel, @charClass, @charRace, @charAchPnts, @charProf1, @Prof1Skill, @charProf2, @Prof2Skill, @charOwner)";

        comm.Parameters.AddWithValue("@charName", txtCharName.Text);
        comm.Parameters.AddWithValue("@charLevel", DropDownListLevel.SelectedValue);
        comm.Parameters.AddWithValue("@charClass", DropDownListClass.SelectedValue);
        comm.Parameters.AddWithValue("@charRace", DropDownListRaces.SelectedValue);
        comm.Parameters.AddWithValue("@charAchPnts", txtAchPnts.Text);
        comm.Parameters.AddWithValue("@charProf1", DropDownListProfession1.SelectedValue);
        comm.Parameters.AddWithValue("@Prof1Skill", DropDownListProfession1Skill.SelectedValue);
        comm.Parameters.AddWithValue("@charProf2", DropDownListProfession2.SelectedValue);
        comm.Parameters.AddWithValue("@Prof2Skill", DropDownListProfession2Skill.SelectedValue);
        comm.Parameters.AddWithValue("@charOwner", txtCharOwner.Text);

        comm.ExecuteNonQuery();

        comm.CommandText = "Select charName from Carter_GA_RosterInformation where charName = @charName ";

        conn.Close();
        conn.Dispose();

        Response.Redirect("Roster.aspx");
    }
}