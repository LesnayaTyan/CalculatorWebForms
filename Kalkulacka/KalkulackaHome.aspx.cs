using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Kalk_2._0.Models.CommonFn;

namespace Kalk_2._0.Kalkulacka
{
    public partial class KalkulackaHome : System.Web.UI.Page
    {
       
        Double resultValue = 0;  //value
        String operationPerfomed = "";  //operation
        bool isOperationPerfomed = false;  //operation_pressed

        Commonfnx fn = new Commonfnx();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCalculatorInfo();
            }
            
        }

        private void GetCalculatorInfo()
        {
            //DataTable dt =fn.Fetch("Select Row_Number() over(Order by(Select 1)) as [Sr.No],CalculatorInfoId, FisrtNumber,SecondNumber,CalculatorResult from CalculatorInfo");
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }


        protected void button_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text == "0") || (isOperationPerfomed))
            {
                TextBox1.Text = string.Empty;
               
            }

            //isOperationPerfomed = false;

            Button button = (Button)sender;
            TextBox1.Text = TextBox1.Text + button.Text;

            // Sql Insect

        }

        protected void operator_Click(object sender, EventArgs e)
        {
            
            string query = "Insert into CalculatorInfo ([PrvniCislo]) values('" + TextBox1.Text.Trim() + "')";
            //fn.Query(query);

            Button button = (Button)sender;
            TextBox1.Text = TextBox1.Text + button.Text;
            operationPerfomed = button.Text;

            //TextBox1.Text = TextBox1.Text + button.Text;

            //resultValue = Double.Parse(TextBox1.Text);

            //labelCurrentOperation.Text = resultValue + " " + operationPerfomed;

            isOperationPerfomed = true;
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "0";
            //resultValue = 0;
        }

        protected void btnEqual_Click(object sender, EventArgs e)
        {
            string query = "Insert into CalculatorInfo ([DruheCislo]) values('" + TextBox1.Text.Trim() + "')";
           // fn.Query(query);

            isOperationPerfomed = false;

            int[] results = Regex.Split(TextBox1.Text, @"-|\+|\*|\/|\.").Select(x => Convert.ToInt32(x)).ToArray();

            string operationPerfomed = Regex.Split(TextBox1.Text, @"[0-9]+") [1];


            switch (operationPerfomed)  //operation
            {
                case "+":
                    TextBox1.Text = (results[0] + results[1]).ToString();
                    break;
                case "-":
                    TextBox1.Text = (results[0] - results[1]).ToString();
                    break;
                case "*":
                    TextBox1.Text = (results[0] * results[1]).ToString();
                    break;
                case "/":
                    TextBox1.Text = (results[0] / results[1]).ToString();
                    break;

                default:
                    break;
            }

                       
                string querys = "Insert into CalculatorInfo ([CalculatorResult]) values('" + TextBox1.Text.Trim() + "')";
                //fn.Query(query);

               // DataTable dt = fn.Fetch("Select * from CalculatorInfo = '"+TextBox1.Text.Trim()+"'");
               // if(dt.Rows.Count == 0)
               //  {
                //string query = "Insert into CalculatorInfo values('" + TextBox1.Text.Trim() + "')";
                //fn.Query(query);
                //TextBox1.Text = string.Empty;
                GetCalculatorInfo();
                  }
            //else
            //{
            //}
        //}

    }
}