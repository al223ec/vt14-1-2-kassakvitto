using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                double subtotal;
                if (Double.TryParse(InputTextBox.Text, out subtotal) && subtotal > 0)
                {
                    OutputPanel.Visible = true;
                    Recepit r = new Recepit(subtotal);
                    OutputLiteral.Text =
                        String.Format("<ul><li>Totalt: {0:c}</li><li>Rabattsats: {1:p0}</li><li>Rabatt: {2:c}</li><li>Att betala: {3:c}</li></ul>",
                        r.Subtotal, r.DiscountRate, r.MoneyOff, r.Total);
                }
            }
        }
    }
}