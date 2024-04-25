<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        @import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css");
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        @import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css");
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');

        /* Your existing styles go here */

        * {
            font-family: 'Poppins', sans-serif;
        }

        header {
            width: 100%;
            position: fixed;
            z-index: 1;
            background-color: black;
        }

        nav>div {
            padding: .4rem 0;
        }

        .radius-50 {
            border-radius: 1rem;
        }

        .collapse:not(.show) .nav-link {
            font-size: 1.1rem;
            color: #000 !important;
            padding: 0 1.5rem !important;
        }

        .menu:focus {
            box-shadow: none;
            background-color: black;
        }

        .menu i {
            color: #000;
            font-size: 1.8rem;
            background-color: black;
        }

        .logo img {
            max-height: 70px; 
            max-width: 100px;;
            border-radius: 5px;

            /* Adjust the height as needed */

            
        }

        .logo h1 {
            font-size: 1.8rem !important;
            font-weight: bold;
            display: inline-block;
            margin-left: 10px; /* Adjust the margin as needed */
        }
        #coloredText {
  transition: color 0.0s; /* Optional: Add a smooth transition effect */
}

        .video {
            height: 100vh;
        }

        .video video {
            position: fixed;
            height: 100%;
            width: 100%;
            object-fit: cover;
        }

        .detail {
            position: fixed;
            bottom: 4rem;
            text-align: center;
        }

        .detail,
        .detail a {
            color: #000;
        }

        .detail h2 {
            font-size: 55px;
        }

        .detail a {
            font-size: 20px;
        }

        .detail .arrow {
            font-size: 20px;
            animation: arrow 1s infinite;
            transition: all .3s ease;
        }

        .contact {
            background-color: #ecf200;
            padding: 0.5rem 1.5rem;
            border: none;
            font-weight: 500;
        }

        @keyframes arrow {
            0% {
                transform: translateY(-5px);
            }

            100% {
                transform: translateY(10px);
            }
        }

        .dropbtn {
            padding: none;
            font-size: none;
            border: none;
            cursor: pointer;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .show {
            display: block;
        }
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg bg-white">
            <div class="container-fluid container-lg" id="round-onclick">
                <a class="logo text-decoration-none" href="#">
                    <img src="https://api.logo.com/api/v2/images?logo=logo_427ab67e-99cf-4ecf-9f1c-757de23aed27&u=1706766566333&format=svg&margins=166&width=1000&height=750&fit=contain" alt="Logo Image">
                <h1 id="coloredText">Homely Horbor</h1>
                </a>
                <button class="navbar-toggler menu border-0" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <i class="bi bi-list" id="menu"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="main.jsp">HOME</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="search.html">SEARCH</a>
                        </li>
                        <li class="nav-item">
                            <div>
                                <p onclick="myFunction()" class="dropbtn">LOGIN</p>
                                <div id="myDropdown" class="dropdown-content">
               
                                    <a href="owner.html">LESSOR</a>
                                    <a href="login_cust.html">TENANT</a>
                                    <a href="admin.html">ADMIN</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contactus.html">CONTACT US</a>
                        </li>
                       <li class="nav-item">
                            <a class="nav-link" href="aboutus.jsp">ABOUT US</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
<section>
    <div class="video position-relative">
        <video autoplay muted loop id="myVideo">
            <source
                src="https://video.wixstatic.com/video/c0bbc5_ea3fdc8d953b4dbcab20a021d2ef1389/1080p/mp4/file.mp4"
                type="video/mp4">
        </video>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-3">
                    <div class="d-flex justify-content-center">
                        <div class="detail">
                            <h2 class="mb-3 fw-bold">Happy house hunting...</h2>
                            <hr class="mb-3">
                            <p> Unlock the door to worry-free living with our house rental system  where every detail
                                is handled, and every home is nurtured.</p>
                            <!-- <a href="#" class="text-decoration-none fw-normal">DISCOVER MORE</a> -->
                            <!-- <div class="arrow mt-4"><i class="bi bi-chevron-down"></i></div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>

        <script>
            function myFunction() {
          document.getElementById("myDropdown").classList.toggle("show");
        }
        
        // Close the dropdown menu if the user clicks outside of it
        window.onclick = function(event) {
          if (!event.target.matches('.dropbtn')) {
            var dropdowns = document.getElementsByClassName("dropdown-content");
            var i;
            for (i = 0; i < dropdowns.length; i++) {
              var openDropdown = dropdowns[i];
              if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
              }
            }
          }
        }
        function changeColor() {
        	  var text = document.getElementById("coloredText");
        	  var colors = ["red", "gray", "skyblue", "orange"]; // Add your desired colors here
        	  var randomColor = colors[Math.floor(Math.random() * colors.length)];
        	  text.style.color = randomColor;
        	}

        	// Call the function to change color every 2 seconds (adjust as needed)
        	setInterval(changeColor, 1000);
        </script>
    </body>
</html>


