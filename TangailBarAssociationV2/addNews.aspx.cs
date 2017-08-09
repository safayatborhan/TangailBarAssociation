using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;

namespace TangailBarAssociationV2
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
        }

        protected void ButtonNotice1_Click(object sender, EventArgs e)
        {
            string str = "";
            try
            {
                connection.Open();
                if (FileUploadNotice1.HasFile)
                {
                    str = FileUploadNotice1.FileName;
                    FileUploadNotice1.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/RecentNews/") + str);
                }
                string qry1 = "update RecentNews set NewsTitle='" + TextBoxNotice1Title.Text + "' where id='" + 1 + "'";
                string qry2 = "update RecentNews set NewsFile='" + str.ToString() + "' where id='" + 1 + "'";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                cmd1.ExecuteNonQuery();
                OleDbCommand cmd2 = new OleDbCommand(qry2, connection);
                cmd2.ExecuteNonQuery();
                LabelNoticeInformation1.Text = "Date stored";
                TextBoxNotice1Title.Text = "";
            }
            catch
            {
            }
            finally
            {
                connection.Close();
            }
        }

        protected void ButtonNotice2_Click(object sender, EventArgs e)
        {
            string str = "";
            try
            {
                connection.Open();
                if (FileUploadNotice2.HasFile)
                {
                    str = FileUploadNotice2.FileName;
                    FileUploadNotice2.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/RecentNews/") + str);
                }
                string qry1 = "update RecentNews set NewsTitle='" + TextBoxNotice2.Text + "' where id='" + 2 + "'";
                string qry2 = "update RecentNews set NewsFile='" + str.ToString() + "' where id='" + 2 + "'";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                cmd1.ExecuteNonQuery();
                OleDbCommand cmd2 = new OleDbCommand(qry2, connection);
                cmd2.ExecuteNonQuery();
                LabelNoticeInformation2.Text = "Date stored";
                TextBoxNotice2.Text = "";
            }
            catch
            {
            }
            finally
            {
                connection.Close();
            }
        }

        protected void ButtonNotice3_Click(object sender, EventArgs e)
        {
            string str = "";
            try
            {
                connection.Open();
                if (FileUploadNotice3.HasFile)
                {
                    str = FileUploadNotice3.FileName;
                    FileUploadNotice3.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/RecentNews/") + str);
                }
                string qry1 = "update RecentNews set NewsTitle='" + TextBoxNotice3.Text + "' where id='" + 3 + "'";
                string qry2 = "update RecentNews set NewsFile='" + str.ToString() + "' where id='" + 3 + "'";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                cmd1.ExecuteNonQuery();
                OleDbCommand cmd2 = new OleDbCommand(qry2, connection);
                cmd2.ExecuteNonQuery();
                LabelNoticeInformation3.Text = "Date stored";
                TextBoxNotice3.Text = "";
            }
            catch
            {
            }
            finally
            {
                connection.Close();
            }
        }
    }
}