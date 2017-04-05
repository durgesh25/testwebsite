<?php
session_start();
 if(isset($_SESSION['name']))
 {
 	?>
<center>
<h2>WELCOME <?php echo $_SESSION['name'];?> </h2>
 	<form id="myform1" >
Name:<input type="text" name="name" ><br>
Occupation:<input type="text" name="occupation" ><br>
age:<input type="text" name="age" id="age" ><br>
phone no:<input type="text" name="phone" id="phone" ><br>
<input type="submit" id="btn" value="submit"></form><br>
<a href="logout.php">Logout</a>
<div id="record"></div>
</form>
</center>

<?php
 }
 else
 {
 	header('location:index.php');
 }

?>

<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
       <script>
         $(function() {
            $( "#age" ).datepicker();
            $( "#age" ).datepicker("show");
         });
      </script>
      <script>
$(document ).ready(function() {
	 $('#btn').on('click', function(e) {
        e.preventDefault();
        
         var tdata= $("#myform1").serializeArray();
          $.ajax({
        type: "POST",
        url: "insert.php",
        data: tdata, // <--- THIS IS THE CHANGE
        dataType: "html",
        success: function(data){
             $('#record').html(data);
        },
        error: function() { alert("Error posting feed."); }
   });

        
     /* your code here */
});
   
   });
</script>