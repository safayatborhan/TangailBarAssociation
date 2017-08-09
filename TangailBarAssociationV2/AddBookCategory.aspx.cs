using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TangailBarAssociationV2
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void InsertButton_Click(object sender, EventArgs e)
        {



            
            //ObjectDataSource1.InsertParameters["category"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxCategory")).Text;
            ObjectDataSource1.InsertParameters["category"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxBookCategory")).Text;
            
            ObjectDataSource1.Insert();
        }
    }
}