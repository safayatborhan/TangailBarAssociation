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
    public partial class WebForm6 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string count = "select count (*) from loginTable where username = '" + TextBoxUsername.Text + "'";
                OleDbCommand cmd = new OleDbCommand(count, connection);
                int i = int.Parse(cmd.ExecuteScalar().ToString());
                if (i == 1)
                {
                    string search_pass = "select password from loginTable where username = '" + TextBoxUsername.Text + "'";
                    OleDbCommand cmd1 = new OleDbCommand(search_pass, connection);
                    string password = cmd1.ExecuteScalar().ToString().Replace(" ", "");
                    if (password == TextBoxPassword.Text)
                    {
                        Response.Redirect("~/WelcomeAdmin.aspx");
                    }
                    else
                    {
                        Label11.Text = "Password is not correct";
                    }
                }
                else
                {
                    Label11.Text = "Username is not correct";
                }
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