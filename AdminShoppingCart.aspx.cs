using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    // counts old shopping carts
    protected void countButton_Click(object sender, EventArgs e)
    {
      byte days = byte.Parse(daysList.SelectedItem.Value);
      int oldItems = ShoppingCartAccess.CountOldCarts(days);
      if (oldItems == -1)
        countLabel.Text = "Не може да се преброят старите колички!";
      else if (oldItems == 0)
        countLabel.Text = "Няма стари колички.";
      else
        countLabel.Text = "Има " + oldItems.ToString() +
                          " стари колички.";
    }


    // deletes old shopping carts
    protected void deleteButton_Click(object sender, EventArgs e)
    {
      byte days = byte.Parse(daysList.SelectedItem.Value);
      ShoppingCartAccess.DeleteOldCarts(days);
      countLabel.Text = "Старите колички бяха премахнати от базата данни";
    }

}
