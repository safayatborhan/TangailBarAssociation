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
    public partial class WebForm7 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
        }

        protected void ButtonMarquee_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry = "update MarqueeNews set RecentNews = ('" + TextBoxMarquee.Text + "')";
                OleDbCommand cmd = new OleDbCommand(qry, connection);
                cmd.ExecuteNonQuery();
                LabelInformation.Text = "Data stored";
                TextBoxMarquee.Text = "";
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