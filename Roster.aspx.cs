using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Roster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addBtn_Click(object sender, EventArgs e)
    {
        //add characters to the roster database.
        Response.Redirect("AddCharacters.aspx");
    }
    protected void modifyBtn_Click(object sender, EventArgs e)
    {
        //modify characters in the roster database.
        Response.Redirect("ModCharacters.aspx");
    }
    protected void deleteBtn_Click(object sender, EventArgs e)
    {
        //delete characters from the roster database.
        Response.Redirect("DeletingCharacters.aspx");
    }
}