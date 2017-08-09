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
    public partial class WebForm2 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            try
            {
                connection.Open();
                string qry = "select memberImage,memberID,memberName,memberDesignation from MemeberInformation ORDER BY memberID";
                OleDbDataAdapter da = new OleDbDataAdapter(qry, connection);
                DataSet ds = new DataSet();                
                da.Fill(ds);
                DataList1.DataSource = ds.Tables[0].DefaultView;
                DataList1.DataBind();    
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void LinkButtonDetail_Click(object sender, EventArgs e)
        {
            
            
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
        
    }
}