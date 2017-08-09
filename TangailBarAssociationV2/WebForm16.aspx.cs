using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TangailBarAssociationV2
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {





            ObjectDataSource2.InsertParameters["donarName"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxDonarName")).Text;
            ObjectDataSource2.InsertParameters["donarBook"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxDonarBook")).Text;
            ObjectDataSource2.InsertParameters["noOfBook"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxNoOfBook")).Text;
            ObjectDataSource2.InsertParameters["donateDate"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxDonateDate")).Text;
            ObjectDataSource2.Insert();
        }
    }
}