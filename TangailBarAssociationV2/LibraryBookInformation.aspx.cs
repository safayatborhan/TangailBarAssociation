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
    public partial class LibraryBookInformation : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            try
            {
                connection.Open();
                string qry = "select bookImage,bookId,bookName,authorName from BookEntry";
                OleDbDataAdapter da = new OleDbDataAdapter(qry, connection);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds.Tables[0].DefaultView;
                DataList1.DataBind();

                //dropdownlist category
                if (!IsPostBack)
                {
                    OleDbDataReader myReader;
                    string command2 = "select * from CategoryTable";
                    OleDbCommand cmd2 = new OleDbCommand(command2, connection);
                    myReader = cmd2.ExecuteReader();

                    while (myReader.Read())
                    {
                        string sName = myReader.GetString(0);
                        DropDownList1.Items.Add(sName);
                    }
                }
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                //Response.Redirect("WebForm1.aspx?Id=" + e.CommandArgument.ToString());
                //Response.Write(e.CommandArgument.ToString());
                Class1.memberID = e.CommandArgument.ToString();
                Response.Redirect("~/MemberFullInformation.aspx");
            }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                if (TextBoxSearchID.Text != "")
                {
                    string qry = "select bookImage,bookId,bookName,authorName from BookEntry where bookId='" + TextBoxSearchID.Text + "'";
                    OleDbDataAdapter da = new OleDbDataAdapter(qry, connection);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    DataList1.DataSource = ds.Tables[0].DefaultView;
                    DataList1.DataBind();
                }

                if (TextBoxSearchName.Text != "")
                {
                    string qry = "select bookImage,bookId,bookName,authorName from BookEntry where bookName='" + TextBoxSearchName.Text + "'";
                    OleDbDataAdapter da = new OleDbDataAdapter(qry, connection);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    DataList1.DataSource = ds.Tables[0].DefaultView;
                    DataList1.DataBind();
                }

                if (TextBoxSearchAuthorName.Text != "")
                {
                    string qry = "select bookImage,bookId,bookName,authorName from BookEntry where authorName='" + TextBoxSearchAuthorName.Text + "'";
                    OleDbDataAdapter da = new OleDbDataAdapter(qry, connection);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    DataList1.DataSource = ds.Tables[0].DefaultView;
                    DataList1.DataBind();
                }

                if (TextBoxSearchID.Text == "" && TextBoxSearchName.Text == "" && TextBoxSearchAuthorName.Text == "")
                {
                    string qry = "select bookImage,bookId,bookName,authorName from BookEntry where category='" + DropDownList1.SelectedItem.ToString() + "'";
                    OleDbDataAdapter da = new OleDbDataAdapter(qry, connection);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    DataList1.DataSource = ds.Tables[0].DefaultView;
                    DataList1.DataBind();
                }
                

            }
            catch
            { }
            finally
            {
                connection.Close();
                TextBoxSearchID.Text = "";
                TextBoxSearchName.Text = "" ;
                TextBoxSearchAuthorName.Text = "";
            }
        }
    }
}