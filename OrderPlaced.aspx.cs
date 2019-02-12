using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderPlaced : System.Web.UI.Page
{
  protected override void OnInit(EventArgs e)
  {
    //(Master as LandShop).EnforceSSL = true;
    base.OnInit(e);
  }

  protected void Page_Load(object sender, EventArgs e)
  {
    // Set the title of the page
    this.Title = LandShopConfiguration.SiteName +
                " : Order Placed";
  }
}
