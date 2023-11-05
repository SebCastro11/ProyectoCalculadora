using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calcu
{
    public partial class Inicio : System.Web.UI.Page
    {

        static double num1, num2, rslt;

        static string opr, txt;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1resultado_TextChanged(object sender, EventArgs e)
        {


        }

        protected void btnsiete_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btnsiete.Text;
        }

        protected void btncuatro_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btncuatro.Text;

        }

        protected void btnuno_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btnuno.Text;

        }

        protected void btnmasmenos_Click(object sender, EventArgs e)
        {
            num1 = double.Parse(TextBox1resultado.Text);
            rslt = num1 * -1;
            TextBox1resultado.Text = rslt.ToString();

        }

        protected void btnborrartodo_Click(object sender, EventArgs e)
        {
            num1 = 0;
            num2 = 0;
            rslt = 0;

            TextBox1resultado.Text = "";
        }

        protected void btnocho_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btnocho.Text;
        }

        protected void btncinco_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btncinco.Text;
        }

        protected void btndos_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btndos.Text;
        }

        protected void btncero_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btncero.Text;
        }

        protected void btnn_Click(object sender, EventArgs e)
        {

            num1 = double.Parse(TextBox1resultado.Text);
            rslt = 1;

            for (int i = 1; i <= num1; i++)
            {

                rslt *= i;

            }

            TextBox1resultado.Text = rslt.ToString();

        }

        protected void btnnueve_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btnnueve.Text;
        }

        protected void btnseis_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btnseis.Text;
        }

        protected void btntres_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btntres.Text;
        }

        protected void btnraizcuadrada_Click(object sender, EventArgs e)
        {
            num1 = double.Parse(TextBox1resultado.Text);
            rslt = Math.Sqrt(num1);
            TextBox1resultado.Text = rslt.ToString();

        }

        protected void btnequiselevado_Click(object sender, EventArgs e)
        {

            num1 = double.Parse(TextBox1resultado.Text);
            TextBox1resultado.Text = "";
            opr = "x^y";

        }

        protected void btncoma_Click(object sender, EventArgs e)
        {
            TextBox1resultado.Text += "" + btncoma.Text;
        }

        protected void btndivision_Click(object sender, EventArgs e)
        {
            num1 = double.Parse(TextBox1resultado.Text);
            TextBox1resultado.Text = "";
            opr = "÷";

        }

        protected void btnmultiplicacion_Click(object sender, EventArgs e)
        {
            num1 = double.Parse(TextBox1resultado.Text);
            TextBox1resultado.Text = "";
            opr = "×";

        }

        protected void btndiezequis_Click(object sender, EventArgs e)
        {

            num1 = double.Parse(TextBox1resultado.Text);
            rslt = Math.Pow(10, num1);
            TextBox1resultado.Text = rslt.ToString();

        }

        protected void btnlog_Click(object sender, EventArgs e)
        {

            num1 = double.Parse(TextBox1resultado.Text);
            rslt = Math.Log10(num1);
            TextBox1resultado.Text = rslt.ToString();

        }

        protected void btnequisala2_Click(object sender, EventArgs e)
        {

            num1 = double.Parse(TextBox1resultado.Text);
            rslt = Math.Pow(num1, 2);
            TextBox1resultado.Text = rslt.ToString();

        }

        protected void btnborrar_Click(object sender, EventArgs e)
        {

            string remove = TextBox1resultado.Text.Remove(TextBox1resultado.Text.Length - 1, 1);

            TextBox1resultado.Text = remove;

        }

        protected void btnresta_Click(object sender, EventArgs e)
        {

            num1 = double.Parse(TextBox1resultado.Text);
            TextBox1resultado.Text = "";
            opr = btnresta.Text;

        }

        protected void btnsuma_Click(object sender, EventArgs e)
        {

            num1 = double.Parse(TextBox1resultado.Text);
            TextBox1resultado.Text = "";
            opr = btnsuma.Text;

        }

        protected void btnigual_Click(object sender, EventArgs e)
        {

            num2 = double.Parse(TextBox1resultado.Text);

            switch (opr)
            {
                case "+":

                    rslt = num1 + num2;

                    break;

                case "-":

                    rslt = num1 - num2;

                    break;

                case "×":

                    rslt = num1 * num2;

                    break;

                case "÷":

                    if (num2 != 0)
                    {

                        rslt = num1 / num2;

                    }

                    else if (num2 == 0)

                    {

                        TextBox1resultado.Text = "Division invalida. No se puede dividir entre 0";

                    }

                    break;

                case "x^y":

                    rslt = Math.Pow(num1, num2);

                    break;

            }


            TextBox1resultado.Text = rslt.ToString();


        }



    }
}