using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace TangailBarAssociationV2
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            
            //if (!IsPostBack)
            //{
            //    OleDbDataReader myReader;
            //    string command2 = "select * from CategoryTable";
            //    OleDbCommand cmd2 = new OleDbCommand(command2, connection);
            //    myReader = cmd2.ExecuteReader();
            //    DropDownList dd1 = ((DropDownList)GridView1.FooterRow.FindControl("DropDownList1")) as DropDownList;
            //    while (myReader.Read())
            //    {
            //        string sName = myReader.GetString(0);
            //        dd1.Items.Add(sName);
            //    }
            //}
            connection.Close();
        }
        protected void InsertButton_Click(object sender, EventArgs e)
        {

            

            ObjectDataSource1.InsertParameters["category"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownList1")).SelectedItem.ToString();
            //ObjectDataSource1.InsertParameters["category"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxCategory")).Text;
            ObjectDataSource1.InsertParameters["bookId"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxBookId")).Text;
            ObjectDataSource1.InsertParameters["bookName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxBookName")).Text;
            ObjectDataSource1.InsertParameters["authorName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxAuthorName")).Text;
            ObjectDataSource1.InsertParameters["datee"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxDate")).Text;
            ObjectDataSource1.Insert();
        }
        protected void InsertButton2_Click(object sender, EventArgs e)
        {





            ObjectDataSource2.InsertParameters["donarName"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxDonarName")).Text;
            ObjectDataSource2.InsertParameters["donarBook"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxDonarBook")).Text;
            ObjectDataSource2.InsertParameters["noOfBook"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxNoOfBook")).Text;
            ObjectDataSource2.InsertParameters["donateDate"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxDonateDate")).Text;
            ObjectDataSource2.Insert();
        }
    }
}