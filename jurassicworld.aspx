<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jurassicworld.aspx.cs" Inherits="jurassicworld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jurassic World: Fallen Kingdom</title>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
    <link href="vendor/bootstrap/css/style.css" rel="stylesheet">    

<link href="vendor/bootstrap/css/bootstrap-social.css" rel="stylesheet">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="vendor/bootstrap/css/font-awesome.css" rel="stylesheet">


</head>

<body style="background:black;">
   
<br>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <img src="img/m12-1.jpeg" height="475" width="320"
            alt="" class="img-rounded img-responsive" />
        </div>
          <div class="col-md-8"><div class="row">
          <h4 style="color:white;font-family:'Arial Black';">Jurassic World: Fallen Kingdom</h4><form id="form1" runat="server"><asp:Button ID="btnHome" onclick="btnHome_Click" runat="server" style="position:absolute;top:0px;right:-60px;" class="btn btn-primary" Text="HOME"/></div>
          <iframe width="800" height="450" src="https://www.youtube.com/embed/vn9mMeWcgoM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
        </div>
 
        <div class="row">
        <div class="col-sm-4 col-md-4">
           <p style="color:white;font-size:15;"><b>Release Date:</b> 7 June 2018</p>
           <p style="color:white;font-size:15;"><b>Director:</b> J. A. Bayona</p>
           <p style="color:white;font-size:15;"><b>Starring:</b> Chris Patt</p>
           <p style="color:white;font-size:15;"><b>Genre:</b> Action, Adventure, Sci-Fi   </p>

<a class="btn btn-block btn-social btn-facebook" style="background:#3B5998;color:white;" href="https://www.facebook.com/JurassicWorld2UK/">
    <span class="fa fa-facebook"></span> Like on Facebook
  </a>
<a class="btn btn-block btn-social btn-twitter" style="background:#3498DB;color:white;" href="https://twitter.com/brycenator100?lang=en">
    <span class="fa fa-twitter"></span> Follow on Twitter
  </a>
<a class="btn btn-block btn-social " target = "_blank" style="background:#edf3b3;color:black;" href="https://tools.wmflabs.org/pageviews/?project=en.wikipedia.org&platform=all-access&agent=user&range=last-month&pages=Jurassic_World:_Fallen_Kingdom">
    <span class="fa fa-wikipedia-w"></span> View Wikipedia Statistics
  </a><br>
        </div>
        <div class="col-xs-12 col-sm-8">
        <ul class="list-group">
          <li class="list-group-item"  style="background:black;color:white;"><h4> <b>PREMISE </b> </h4>
            <p>
              Four years after the Jurassic World theme park was closed down, Owen and Claire return to Isla Nubar to save the dinosaurs when they learn that a once dormant volcano on the island is active and is threatening to extinguish all life there. Along the way, Owen sets out to find Blue, his lead raptor, and discovers a conspiracy that could disrupt the natural order of the entire planet. Life has found a way, again.
            </p>
          </li>
          </ul>
        </div>
    </div>
  
    
    <div class="row">
        <div class="col-md-4 text-center">
                 <asp:Button ID="btnSubmit2" runat="server" OnClientClick="window.open('http://movie.localtunnel.me/movies/jurassicworld/twitter.php');return false;" class="btn-lg btn-primary " style="position:relative;top:75px;left:100px;" Text="Social Review"/>
           </div>
        <div class="col-md-4 text-right">
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" class="btn-lg btn-primary " style="position:relative;top:75px;left:200px;" Text="Classical Review"/>
            </div>
     </div>

      
      <asp:Label ID ="actor" runat="server"></asp:Label>
      <asp:Label ID ="actor_rating" runat="server"></asp:Label>
      <asp:Label ID ="actor_ratingimg" runat="server"></asp:Label>
      <asp:Label ID ="director" runat="server"></asp:Label>
      <asp:Label ID ="director_rating" runat="server"></asp:Label>
      <asp:Label ID ="director_ratingimg" runat="server"></asp:Label>
      <asp:Label ID ="overall" runat="server"></asp:Label>
      <asp:Label ID ="avg_rating" runat="server"></asp:Label>
      <asp:Label ID ="avg_ratingimg" runat="server"></asp:Label>
      
      
      
   </form>
</div>
       <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
