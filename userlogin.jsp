<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
  background-image: url("y.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
}
form {border: 3px solid #f1f1f1;}
form{
	background-image: url("i.png");
	background-color: white;
      width:500px;
      padding:10px;
      margin:auto;
      font-size:20px;
} 

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 30%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

</style>
</head>
<body>
<h2 style="color: white";>Login Form</h2>
<form action="usercheck.jsp" method="post">
  <div class="imgcontainer">
    <img src="user.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>User-Id</b></label>
    <input type="text" placeholder="Enter User-Id" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit" value="2" name="c11">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="reset" class="cancelbtn">Cancel</button>
    
  </div>
</form>
<form action="usersignin.jsp" method="post">
  <button type="submit" value="sign" name="111">Not a user? sign-up</button>

</body>
</html>
