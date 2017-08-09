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
    public partial class WebForm14 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        string path = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();

            if (!IsPostBack)
            {
                OleDbDataReader myReader;
                string command2 = "select * from CategoryTable";
                OleDbCommand cmd2 = new OleDbCommand(command2, connection);
                myReader = cmd2.ExecuteReader();
                
                while (myReader.Read())
                {
                    string sName = myReader.GetString(0);
                    DropDownListCategory.Items.Add(sName);
                }
            }
            connection.Close();
        }

        protected void ButtonInsertBookInformation_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                if (FileUploadBookImage.HasFile)
                {
                    string str = FileUploadBookImage.FileName;
                    FileUploadBookImage.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/BookImages/") + str);
                    //path = HttpContext.Current.Server.MapPath("~/uploads/") + str.ToString();
                    path = "~//BookImages//" + str.ToString();
                }
                else
                {
                    path = "~//uploads//" + "Untitled.jpg";
                }

                string qry = "insert into BookEntry(category,bookId,bookImage,bookName,authorName,datee) values('" + DropDownListCategory.SelectedItem.ToString() + "','" + TextBoxBookID.Text + "','" + path.ToString() + "','" + TextBoxBookName.Text + "','" + TextBoxAuthorName.Text + "','" + TextBoxDate.Text + "')";
                OleDbCommand cmd = new OleDbCommand(qry, connection);
                cmd.ExecuteNonQuery();
                LabelSaveInformation.Text = "Data stored successfully";

            }
            catch
            { }
            finally
            {
                connection.Close();
                TextBoxBookID.Text = "";
                TextBoxBookName.Text = "";
                TextBoxAuthorName.Text = "";
                TextBoxDate.Text = "";
            }
        }
    }
}