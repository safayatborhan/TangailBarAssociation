using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TangailBarAssociationV2
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        string path = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
        }

        protected void ButtonInsertImageInformation_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUploadMemberImage.HasFile)
                {
                    string str = FileUploadMemberImage.FileName;
                    FileUploadMemberImage.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/Gallery/") + str);
                    //path = HttpContext.Current.Server.MapPath("~/uploads/") + str.ToString();
                    path = "~//Gallery//" + str.ToString();
                }
                else
                {
                    path = "~//Uploads//" + "Untitled.jpg";
                }

                connection.Open();
                string query = "insert into ImageGallery values ('" + TextBoxImageID.Text + "','" + path + "','" + TextBoxImageDescription.Text + "')";
                OleDbCommand cmd = new OleDbCommand(query, connection);
                cmd.ExecuteNonQuery();
                LabelSaveInformation.Text = "Image saved successfully";
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