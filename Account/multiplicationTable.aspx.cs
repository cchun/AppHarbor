using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YuGucihun
{
    public partial class multiplicationTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i < 10; ++i)
            {
                TableRow Row = new TableRow();
                for (int j = 1; j <= i; ++j)
                {
                    TableCell cell = new TableCell();
                    cell.Text = i.ToString() + " * " + j.ToString() + " = " + (i * j).ToString();
                    Row.Cells.Add(cell);
                }
                mulTable.Rows.Add(Row);
            }
        }
    }
}