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
    public partial class home : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            try
            {
                connection.Open();
                string qry = "select NewsTitle from RecentNews where id='" + 1 + "'";
                OleDbCommand cmd = new OleDbCommand(qry, connection);
                LabelNotice1.Text = cmd.ExecuteScalar().ToString();
                string qry2 = "select NewsTitle from RecentNews where id='" + 2 + "'";
                OleDbCommand cmd2 = new OleDbCommand(qry2, connection);
                LabelNotice2.Text = cmd2.ExecuteScalar().ToString();
                string qry3 = "select NewsTitle from RecentNews where id='" + 3 + "'";
                OleDbCommand cmd3 = new OleDbCommand(qry3, connection);
                LabelNotice3.Text = cmd.ExecuteScalar().ToString();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }

        }

        protected void LinkButtonNotice1_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry1 = "select NewsFile from RecentNews where id='" + 1 + "'";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                string fileName = cmd1.ExecuteScalar().ToString();
                string fileExtension = ".txt/.jpg/.pdf/.docx/.xls";

                // Set Response.ContentType
                Response.ContentType = GetContentType(fileExtension);

                // Append header
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                // Write the file to the Response
                Response.TransmitFile(Server.MapPath("~/RecentNews/" + fileName));
                Response.End();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }
        private string GetContentType(string fileExtension)
        {
            if (string.IsNullOrEmpty(fileExtension))
                return string.Empty;

            string contentType = string.Empty;
            switch (fileExtension)
            {
                case ".htm":
                case ".html":
                    contentType = "text/HTML";
                    break;

                case ".txt":
                    contentType = "text/plain";
                    break;

                case ".doc":
                case ".rtf":
                case ".docx":
                    contentType = "Application/msword";
                    break;

                case ".xls":
                case ".xlsx":
                    contentType = "Application/x-msexcel";
                    break;

                case ".jpg":
                case ".jpeg":
                    contentType = "image/jpeg";
                    break;

                case ".gif":
                    contentType = "image/GIF";
                    break;

                case ".pdf":
                    contentType = "application/pdf";
                    break;
            }

            return contentType;
        }

        protected void LinkButtonNotice2_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry1 = "select NewsFile from RecentNews where id='" + 2 + "'";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                string fileName = cmd1.ExecuteScalar().ToString();
                string fileExtension = ".txt/.jpg/.pdf/.docx/.xls";

                // Set Response.ContentType
                Response.ContentType = GetContentType(fileExtension);

                // Append header
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                // Write the file to the Response
                Response.TransmitFile(Server.MapPath("~/RecentNews/" + fileName));
                Response.End();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void LinkButtonNotice3_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry1 = "select NewsFile from RecentNews where id='" + 3 + "'";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                string fileName = cmd1.ExecuteScalar().ToString();
                string fileExtension = ".txt/.jpg/.pdf/.docx/.xls";

                // Set Response.ContentType
                Response.ContentType = GetContentType(fileExtension);

                // Append header
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                // Write the file to the Response
                Response.TransmitFile(Server.MapPath("~/RecentNews/" + fileName));
                Response.End();
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