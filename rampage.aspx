<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rampage.aspx.cs" Inherits="rampage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rampage</title>

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
            <img src="img/m3-1.jpg" height="475" width="320"
            alt="" class="img-rounded img-responsive" />
        </div>
          <div class="col-md-8"><div class="row">
          <h4 style="color:white;font-family:'Arial Black';">Rampage</h4><form id="form1" runat="server"><asp:Button ID="btnHome" onclick="btnHome_Click" runat="server" style="position:absolute;top:0px;right:-60px;" class="btn btn-primary" Text="HOME"/></div>
          <iframe width="800" height="450" src="https://www.youtube.com/embed/coOKvrsmQiI" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
        </div>
        <div class="row">
        <div class="col-sm-4 col-md-4">
           <p style="color:white;font-size:15;"><b>Release Date:</b> 11 April 2018</p>
           <p style="color:white;font-size:15;"><b>Director:</b> Brad Peyton</p>
           <p style="color:white;font-size:15;"><b>Starring:</b> Dwayne Johnson</p>
           <p style="color:white;font-size:15;"><b>Genre:</b> Action, Adventure, Sci-Fi   </p>

<a class="btn btn-block btn-social btn-facebook" target = "_blank" style="background:#3B5998;color:white;" href="https://www.facebook.com/RampageTheMovie/">
    <span class="fa fa-facebook"></span> Like on Facebook
  </a>
<a class="btn btn-block btn-social btn-twitter" target = "_blank" style="background:#3498DB;color:white;" href="https://twitter.com/rampagethemovie?lang=en">
    <span class="fa fa-twitter"></span> Follow on Twitter
  </a>
<a class="btn btn-block btn-social " target = "_blank" style="background:#edf3b3;color:black;" href="https://tools.wmflabs.org/pageviews/?project=en.wikipedia.org&platform=all-access&agent=user&range=last-month&pages=Rampage_(2018_film)">
    <span class="fa fa-wikipedia-w"></span> View Wikipedia Statistics
  </a><br>
        </div>
        <div class="col-xs-12 col-sm-8">
        <ul class="list-group">
          <li class="list-group-item"  style="background:black;color:white;"><h4> <b>PREMISE </b> </h4>
            <p>
              Primatologist Davis Okoye, a man who keeps people at a distance, shares an unshakable and unbreakable bond with George, the extraordinarily intelligent, albino gorilla who has been in his care most of its life. But a mysterious genetic experiment mutates this once gentle ape into a raging creature of enormous size. To make matters worse, it’s soon discovered that a wolf (Ralph) and crocodile (Lizzie) have undergone similar changes. As these newly created apex predators battle each other for supremacy and tear across North America, destroying everything in their path, Okoye teams with discredited genetic engineer Dr. Kate Caldwell to secure an antidote. The two fight their way through the ever-changing battlefield, not only to halt a global catastrophe, but also to save the fearsome beast that was once Okoye's friend.</p>
          </li>
          </ul>
        </div>
    </div>
  
    
    <div class="row">
        <div class="col-md-4 text-center">
                 <asp:Button ID="btnSubmit2" runat="server" OnClientClick="window.open('http://movie.localtunnel.me/movies/rampage/twitter.php');return false;" class="btn-lg btn-primary " style="position:relative;top:75px;left:100px;" Text="Social Review"/>
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
