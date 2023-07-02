using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagement
{
    public partial class MaintainStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4KACBMG\\SQLEXPRESS;Initial Catalog=EmployeeManagement;User ID=sa;Password=Neshan@4964");
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("INSERT INTO employees_Sujitha VALUES('" + int.Parse(TextBox1.Text) + "','" + int.Parse(TextBox2.Text) + "','" + TextBox3.Text + "','" + Calendar1.SelectedDate + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Employee Added Successfully');", true);
            LoadRecord();
        }

        protected void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM employees_Sujitha", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("UPDATE employees_Sujitha SET ManagerID = '" + int.Parse(TextBox2.Text) + "', Name = '" + TextBox3.Text + "', DateOfJoined = '" + Calendar1.SelectedDate + "' WHERE EmployeeID = '" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("DELETE FROM employees_Sujitha WHERE EmployeeID = '" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM employees_Sujitha WHERE EmployeeID = '" + int.Parse(TextBox1.Text) + "' ", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("SELECT * FROM employees_Sujitha WHERE EmployeeID = '" + int.Parse(TextBox1.Text) + "' ", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                TextBox2.Text = r.GetValue(1).ToString();
                TextBox3.Text = r.GetValue(2).ToString();
                Calendar1.SelectedDate = r.GetDateTime(3);
            }
        }
    }
}