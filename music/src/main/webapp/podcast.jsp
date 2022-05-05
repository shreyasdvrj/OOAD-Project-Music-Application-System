<html>
<style>
@import url('https://fonts.googleapis.com/css?family=Rubik:400,500&display=swap');
 * {
	 box-sizing: border-box;
}
 body {
	 font-family: 'Rubik', sans-serif;
}
 .container {
	 display: flex;
	 height: 100vh;
}
 .left {
	 overflow: hidden;
	 display: flex;
	 flex-wrap: wrap;
	 flex-direction: column;
	 justify-content: center;
	 animation-name: left;
	 animation-duration: 1s;
	 animation-fill-mode: both;
	 animation-delay: 1s;
}
 .right {
	 flex: 1;
	 background-color: black;
	 transition: 1s;
	 background-image: url(https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80);
	 background-size: cover;
	 background-repeat: no-repeat;
	 background-position: center;
}
 .header > h2 {
	 margin: 0;
	 color: #4f46a5;
}
 .header > h4 {
	 margin-top: 10px;
	 font-weight: normal;
	 font-size: 15px;
	 color: rgba(0, 0, 0, .4);
}
 .form {
	 max-width: 80%;
	 display: flex;
	 flex-direction: column;
}
 .form > p {
	 text-align: right;
}
 .form > p > a {
	 color: #000;
	 font-size: 14px;
}
 .form-field {
	 height: 46px;
	 padding: 0 16px;
	 border: 2px solid #ddd;
	 border-radius: 4px;
	 font-family: 'Rubik', sans-serif;
	 outline: 0;
	 transition: 0.2s;
	 margin-top: 20px;
}
 .form-field:focus {
	 border-color: #0f7ef1;
}
 .form > button {
	 padding: 12px 10px;
	 border: 0;
	 background: #3a496a;
	 border-radius: 3px;
	 margin-top: 10px;
	 color: #fff;
	 letter-spacing: 1px;
	 font-family: 'Rubik', sans-serif;
	 cursor: pointer;
}
 .animation {
	 animation-name: move;
	 animation-duration: 0.4s;
	 animation-fill-mode: both;
	 animation-delay: 2s;
}
 .a1 {
	 animation-delay: 2s;
}
 .a2 {
	 animation-delay: 2.1s;
}
 .a3 {
	 animation-delay: 2.2s;
}
 .a4 {
	 animation-delay: 2.3s;
}
 .a5 {
	 animation-delay: 2.4s;
}
 .a6 {
	 animation-delay: 2.5s;
}
 @keyframes move {
	 0% {
		 opacity: 0;
		 visibility: hidden;
		 transform: translateY(-40px);
	}
	 100% {
		 opacity: 1;
		 visibility: visible;
		 transform: translateY(0);
	}
}
 @keyframes left {
	 0% {
		 opacity: 0;
		 width: 0;
	}
	 100% {
		 opacity: 1;
		 padding: 20px 40px;
		 width: 440px;
	}
}
 
</style>


<body>

<div class="container">
  <div class="left">
    <div class="header">
    <h2 class="animation a1">MVC PROJECT</h2><br>
      <h2 class="animation a1">Shadify : Add Podcast</h2><br>
    </div>
    <form class="form" action="submitPodcast" method="post">
      <input type="text" class="form-field animation a3" id="name" name="name" placeholder="Podcast Name" required>
      <input type="date" class="form-field animation a3" id="date" name="date" placeholder="Date (DD/MM/YYYY)" required>
      <input type="text" class="form-field animation a3" id="episodes" name="episodes" placeholder="Number of episodes" required>
      <input type="text" class="form-field animation a4" id="artist" name="artist"placeholder="Artist" required>
      <button class="animation a6" type="submit">Submit</button>
    </form>
  </div>
  <div class="right"></div>
</div>


</body>
</html>