using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class solo : System.Web.UI.Page
{
    string temp1="";
    string temp2 = "";
    string temp3 = "";
    Image img1 = new Image();
    Image img2 = new Image();
    Image img3 = new Image(); 
    string temp4= "";
    string temp5= "";
    string temp6= "";

    protected void Page_Load(object sender, EventArgs e)
    {
        //CONNECT TO DB
        string connStr = "workstation id=movieprediction.mssql.somee.com;packet size=4096;user id=chinmay1596_SQLLogin_2;pwd=5tt9dpqxjc;data source=movieprediction.mssql.somee.com;persist security info=False;initial catalog=movieprediction";
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        //CREATE A COMMAND
        SqlCommand cmd1 = new SqlCommand("SELECT avg(imdb_score) AS ACTOR_SCORE from movie_metadata1 where actor_1_name='Alden Ehrenreich' or actor_2_name='Alden Ehrenreich' or actor_3_name='Alden Ehrenreich'");
        cmd1.CommandType = System.Data.CommandType.Text;
        cmd1.Connection = conn;

        //string temp1 = "";

        SqlCommand cmd2 = new SqlCommand("SELECT avg(imdb_score) AS DIRECTOR_SCORE from movie_metadata1 where director_name='Ron Howard'");
        cmd2.CommandType = System.Data.CommandType.Text;
        cmd2.Connection = conn;

        //string temp2 = "";

        SqlCommand cmd3 = new SqlCommand("SELECT avg(imdb_score) AS AVG_SCORE from movie_metadata1 where actor_1_name='Alden Ehrenreich' or actor_2_name='Alden Ehrenreich' or actor_3_name='Alden Ehrenreich' or director_name='Ron Howard'");
        cmd3.CommandType = System.Data.CommandType.Text;
        cmd3.Connection = conn;

       //string temp3 = "";

        //READ FROM DB 
        SqlDataReader reader1 = cmd1.ExecuteReader();
         while(reader1.Read())
        {
            temp1 += reader1["ACTOR_SCORE"].ToString();
        }
        reader1.Close();

        SqlDataReader reader2 = cmd2.ExecuteReader();
         while(reader2.Read())
        {
            temp2 += reader2["DIRECTOR_SCORE"].ToString();
        }
        reader2.Close();

        SqlDataReader reader3 = cmd3.ExecuteReader();
         while(reader3.Read())
        {
            temp3 += reader3["AVG_SCORE"].ToString();
        }
        reader3.Close();

        conn.Close();

        temp4 = "Actor Basis";
        temp5 = "Director Basis";
        temp6 = "Overall";
       
        //Styling Actor Rating
        img1.Style.Add("width" ,"200px");
        img1.Style.Add("height" ,"200px");
        img1.Style.Add("position" ,"relative");
        img1.Style.Add("top" ,"200px");
        img1.Style.Add("left" ,"-125px");
        img1.Style.Add("z-index" ,"-1");
       
        //Styling Actor Rating
        actor_rating.Style.Add("color", "white");
        actor_rating.Style.Add("position", "relative");
        actor_rating.Style.Add("top", "210px");
        actor_rating.Style.Add("left", "45px");
        actor_rating.Style.Add("z-index", "1");
        actor_rating.Style.Add("font-size", "35px");
   

        //Styling Director Rating
        img2.Style.Add("width" ,"200px");
        img2.Style.Add("height" ,"200px");
        img2.Style.Add("position" ,"relative");
        img2.Style.Add("top" ,"200px");
        img2.Style.Add("left" ,"-130px");
        img2.Style.Add("z-index" ,"-1");

        //Styling Director Rating
        director_rating.Style.Add("color", "white");
        director_rating.Style.Add("position", "relative");
        director_rating.Style.Add("top", "205px");
        director_rating.Style.Add("left", "45px");
        director_rating.Style.Add("z-index", "1");
        director_rating.Style.Add("font-size", "35px");


        //Styling Overall Rating
        img3.Style.Add("width" ,"350px");
        img3.Style.Add("height" ,"350px");
        img3.Style.Add("position" ,"relative");
        img3.Style.Add("top" ,"300px");
        img3.Style.Add("left" ,"70px");
        img3.Style.Add("z-index" ,"-1");

        //Styling Overall Rating
        avg_rating.Style.Add("color", "white");
        avg_rating.Style.Add("position", "relative");
        avg_rating.Style.Add("top", "300px");
        avg_rating.Style.Add("left", "350px");
        avg_rating.Style.Add("z-index", "1");
        avg_rating.Style.Add("font-size", "50px");


        //Styling Actor
        actor.Style.Add("color", "white");
        actor.Style.Add("position", "relative");
        actor.Style.Add("top", "80px");
        actor.Style.Add("left", "200px");
        actor.Style.Add("z-index", "1");
        actor.Style.Add("font-size", "35px");

        //Styling Director
        director.Style.Add("color", "white");
        director.Style.Add("position", "relative");
        director.Style.Add("top", "80px");
        director.Style.Add("left", "220px");
        director.Style.Add("z-index", "1");
        director.Style.Add("font-size", "35px");
       
        //Styling Overall
        overall.Style.Add("color", "white");
        overall.Style.Add("position", "relative");
        overall.Style.Add("top", "100px");
        overall.Style.Add("left", "500px");
        overall.Style.Add("z-index", "1");
        overall.Style.Add("font-size", "40px");
   
    }

     protected void btnSubmit_Click(object sender , EventArgs e)
     {
        //Displaying AVG Rating
        actor_rating.Text = temp1; 
        director_rating.Text = temp2;
        avg_rating.Text = temp3;
        actor.Text = temp4;
        director.Text = temp5;
        overall.Text = temp6;

        //Adding rating image
        img1.ImageUrl = "http://icon-park.com/imagefiles/seal_circle_light_blue.png";
        actor_ratingimg.Controls.Add(img1); 
 
        img2.ImageUrl = "http://icon-park.com/imagefiles/seal_circle_light_blue.png";
        director_ratingimg.Controls.Add(img2); 

        img3.ImageUrl = "http://icon-park.com/imagefiles/seal_circle_light_blue.png";
        avg_ratingimg.Controls.Add(img3);


     }


     protected void btnHome_Click(object sender , EventArgs e)
     {
      Response.Redirect("Default.aspx");
     }
     
}