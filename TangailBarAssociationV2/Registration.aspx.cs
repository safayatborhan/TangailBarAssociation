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
    public partial class WebForm10 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
        }

        protected void ButtonInsert_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry = "insert into loginTable values('" + TextBoxUsername.Text + "','" + TextBoxPassword.Text + "')"; ;
                OleDbCommand cmd = new OleDbCommand(qry, connection);
                cmd.ExecuteNonQuery();
                TextBoxUsername.Text = "";
                TextBoxPassword.Text = "";
                LabelInfo.Text = "Username and Password saved";
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }
    }
}