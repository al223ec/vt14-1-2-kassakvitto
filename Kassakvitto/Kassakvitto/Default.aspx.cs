using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kassakvitto.Model;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {
                    Recepit r = new Recepit(Double.Parse(InputTextBox.Text));

                    OutputLiteral.Text =
                        String.Format("{0:c}<br />{1:p0}<br />{2:c}<br />{3:c}<br />",
                        r.Subtotal, r.DiscountRate, r.MoneyOff, r.Total);

                    OutputPanel.Visible = true; //allt har gått bra, visa outputen
                    //String.Format("<ul><li>Totalt: {0:c}</li><li>Rabattsats: {1:p0}</li><li>Rabatt: {2:c}</li><li>Att betala: {3:c}</li></ul>",
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError(String.Empty, ex.Message); //Måste ha en validation summary för att fungera
                    //var validator = new CustomValidator
                    //{
                    //    IsValid = false,
                    //    ErrorMessage = ex.Message
                    //};
                    //Page.Validators.Add(validator);
                }

            }
        }
    }
}