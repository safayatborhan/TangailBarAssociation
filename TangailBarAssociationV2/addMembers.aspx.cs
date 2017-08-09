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
    public partial class WebForm3 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        string path = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
        }

        protected void ButtonInsertMemberInformation_Click(object sender, EventArgs e)
        {

            try
            {
                if (FileUploadMemberImage.HasFile)
                {
                    string str = FileUploadMemberImage.FileName;
                    FileUploadMemberImage.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/membersImages/") + str);
                    //path = HttpContext.Current.Server.MapPath("~/uploads/") + str.ToString();
                    path = "~//membersImages//" + str.ToString();
                }
                else
                {
                    path = "~//uploads//" + "Untitled.jpg";
                }
                connection.Open();
                string qry = "insert into MemeberInformation values('" + TextBoxMemberID.Text + "','" + path.ToString() + "','" + TextBoxMemberName.Text + "','" + TextBoxFatherName.Text + "','" + TextBoxDateOfBirth.Text + "','" + TextBoxDesignation.Text + "','" + TextBoxDistrict.Text + "','" + TextBoxPresentAddress.Text + "','" + TextBoxPhoneNumber.Text + "','" + DropDownListStatus.SelectedItem.ToString() + "','" + TextBoxNominee.Text + "','" + TextBoxDateOfMembership.Text + "','" + TextBoxDateOfEnrolment.Text + "')";
                OleDbCommand cmd = new OleDbCommand(qry, connection);
                cmd.ExecuteNonQuery();
                TextBoxMemberID.Text = "";
                TextBoxMemberName.Text = "";
                TextBoxFatherName.Text = "";
                TextBoxDateOfBirth.Text = "";
                TextBoxDesignation.Text = "";
                TextBoxDistrict.Text = "";
                TextBoxPresentAddress.Text = "";
                TextBoxPhoneNumber.Text = "";
                TextBoxNominee.Text = "";
                TextBoxDateOfMembership.Text = "";
                TextBoxDateOfEnrolment.Text = "";
                LabelSaveInformation.Text = "Data saved";
            }
            catch (Exception exp)
            { }
            finally
            {
                connection.Close();
            }
        }
    }
}