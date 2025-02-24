<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>-->
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wedding Packages</title>
    
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QW
        TKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/b
    ootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
    body{
    background-color:lightgrey;
    }
    .card-body:hover {
        transform: scale(1.05);
        background-color: #daf4ff;
        box-shadow: 0 0 20px goldenrod;
        transition: all .3s ease-in-out;
    }
        .ani1{
                
                animation-name: top;
                /* animation-direction: linear; */
                animation-duration: 4s;
                animation-iteration-count:15;
                  color:orange;
    
    
            }
            .ani2{
                
                animation-name: left;
    
                
                animation-duration: 4s;
                animation-iteration-count:15;
                   color:orange;
    /*			animation-timing-function: 4s;*/
    
            }
            .planning{
            animation-name: left;
                /* animation-direction: linear; */
                animation-duration: 4s;
                animation-iteration-count:15;
                  color:orange;
            
            }
            
        @keyframes top {
        0% {
            transform: translateY(-100px);
            opacity: 0;
        }
        100% {
            transform: translateY(0);
            opacity: 1;
        }
      }
      @keyframes left {
        0% {
            transform: translateX(-100px);
            opacity: 0;
        }
        100% {
            transform: translateX(0);
            opacity: 1;
        }
    }
    </style>
    
    </head>
    <body>
    <!-- <%@include file="Header.jsp"%> -->
    <br>
        <header class="header">
            <div class="container">
                <h1 class="text-center ani1">SPORTS EVENT</h1>
                <center>
                <p class="text-center"><h3>GET READY FOR THE ULTIMATE SPORTS EXPERIENCE</h3></p>
                </center>
                <p class="text-center">Join us for an unforgettable sports event, featuring top athletes and teams from around the world. Don't miss out on the excitement!</p>
                

                </div>
        </header>
    
        <section class="packages">
            <div class="container">
                <h2 class="text-center ani2">SELECT YOUR EXPERIENCE</h2>
                <br>
                <div class="row">
                    <div class="col-md-4 mb-4 ">
                        <div class="card">
                            <img src="s1.jpeg" class="card-img-top" alt="Package 1" style="width: 348px; height: 300px;">
                            <div class="card-body">
                                <h5 class="card-title">PACKAGE ONE NAME</h5>
                                <p class="card-text">Write about your package here. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <!-- <a href="#" class="btn btn-primary">VIEW PACKAGE DETAILS</a> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4 ">
                        <div class="card">
                            <img src="s5.jpeg" class="card-img-top" alt="Package 2" style="width: 348px; height: 500px;">
                            <div class="card-body">
                                <h5 class="card-title">PACKAGE TWO NAME</h5>
                                <p class="card-text">Write about your package here. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <!-- <a href="#" class="btn btn-primary">VIEW PACKAGE DETAILS</a> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4 ">
                        <div class="card">
                            <img src="s4.jpeg" class="card-img-top" alt="Package 3" style="width: 348px; height: 300px;">
                            <div class="card-body">
                                <h5 class="card-title">PACKAGE THREE NAME</h5>
                                <p class="card-text">Write about your package here. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <!-- <a href="#" class="btn btn-primary">VIEW PACKAGE DETAILS</a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
        <section class="planning-process">
            <div class="container">
                <h2 class="text-center planning">ABOUT OUR PLANNING PROCESS</h2>
                <div class="row">
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <img src="s3.jpeg" class="card-img-top" alt="Package 3" style="width: 310px; height: 300px;">
                                <!-- <h5 class="card-title">CONSULT</h5>
                                <p class="card-text">Write about your process here. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <img src="s2.jpeg" class="card-img-top" alt="Package 3" style="width: 310px; height: 300px;">
                                <!-- <h5 class="card-title">PLANNING</h5>
                                <p class="card-text">Write about your process here. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <img src="s6.jpeg" class="card-img-top" alt="Package 3" style="width: 310px; height: 300px;">
                                <!-- <h5 class="card-title">WEDDING DAY</h5>
                                <p class="card-text">Write about your process here. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
        <section class="call-to-action">
            <div class="container">
                <h2 class="text-center planning">READY TO START PLANNING YOUR SPECIAL DAY?</h2>
                <p class="text-center"><a href="Login.jsp" class="btn btn-primary">BOOK EVENT</a></p>
            </div>
        </section>
    
        <!-- <%@include file="Footer.jsp"%> -->
    </body>
    </html>