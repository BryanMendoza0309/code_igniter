<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

        <title>Hello, world!</title>
        <style>
            body {
              background: url(https://www.brainpickings.org/wp-content/themes/brainpickings/images/bckgd_body.png);
            }
            h1{
              text-align:center;
              margin-bottom:50px;
              margin-top:50px;
            }
            .blog-card-blog {
              margin-top: 30px;
            }
            .blog-card {
              display: inline-block;
              position: relative;
              width: 100%;
              margin-bottom: 30px;
              border-radius: 6px;
              color: rgba(0, 0, 0, 0.87);
              background: #fff;
              box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
            }
            .blog-card .blog-card-image {
              height: 60%;
              position: relative;
              overflow: hidden;
              margin-left: 15px;
              margin-right: 15px;
              margin-top: -30px;
              border-radius: 6px;
              box-shadow: 0 16px 38px -12px rgba(0, 0, 0, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
            }
            .blog-card .blog-card-image img {
              width: 100%;
              height: 100%;
              border-radius: 6px;
              pointer-events: none;
            }
            .blog-card .blog-table {
              padding: 15px 30px;
            }
            .blog-table {
              margin-bottom: 0px;
            }
            .blog-category {
              position: relative;
              line-height: 0;
              margin: 15px 0;
            }
            .blog-text-success {
              color: #28a745!important;
            }
            .blog-card-blog .blog-card-caption {
              margin-top: 5px;
            }
            .blog-card-caption {
              font-weight: 700;
              font-family: "Roboto Slab", "Times New Roman", serif;
            }
            .fa {
              display: inline-block;
              font: normal normal normal 14px/1 FontAwesome;
              font-size: inherit;
              text-rendering: auto;
              -webkit-font-smoothing: antialiased;
              -moz-osx-font-smoothing: grayscale;
            }
            .blog-card-caption, .blog-card-caption a {
              color: #333;
              text-decoration: none;
            }

            p {
              color: #3C4857;
            }

            p {
              margin-top: 0;
              margin-bottom: 1rem;
            }
            .blog-card .ftr {
              margin-top: 15px;
            }
            .blog-card .ftr .author {
              color: #888;
            }

            .blog-card .ftr div {
              display: inline-block;
            }
            .blog-card .author .avatar {
              width: 36px;
              height: 36px;
              overflow: hidden;
              border-radius: 50%;
              margin-right: 5px;
            }
            .blog-card .ftr .stats {
              position: relative;
              top: 1px;
              font-size: 14px;
            }
            .blog-card .ftr .stats {
              float: right;
              line-height: 30px;
            }
            
            
            
            .center-both {
                display: flex;
                align-items: center;
                justify-content: center;
                min-height: 20vh;
            }
            
            
            .page {
               height:100vh;
            }
            #header-box {
              width:100%;
              height:130px;
              float:left;
              background:#ffffff;
            }
            #nav-box {
              /*float: left;*/
                    /*margin-bottom: 20px;*/
                    position: relative;
                    width: 100%;
                    /*height: 40px;*/
                    z-index: 2000;
              /*background:#000000;*/
            }
            /*#nav-box a {
              font:14px/40px Arial;
              float:left;
              width:100px;
              text-align:center;
              color:#ffffff;

            }*/
            .fixed {position:fixed !important;}
            img {width:100%;}
            /*body {font-family: 'Roboto';font-size: 14px; letter-spacing: .5px;}*/
            .bg-blue-grey {background-color:#253b4d;}
            .bg-grey {background-color:#ededed;}
            .text-grey {color:#b7b7b7;}
            .footer a:link, a:visited {color: #b7b7b7;}
            .footer a:hover, a:active {text-decoration: none;color:#fff;}
            h1 {font-weight:bold;}
            h2 {font-weight:bold;}
            .fa-6x {font-size:158px !important;}
            .bg-family2 {
              background: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)), url("https://images.pexels.com/photos/673649/pexels-photo-673649.jpeg?w=940&h=650&auto=compress&cs=tinysrgb");
              background-repeat: no-repeat;
              background-size: cover;
              background-position: center center;
              color: #fff;
              padding-top: 110px;
              padding-bottom:110px;
            }
            .bg-family {
              /*background: linear-gradient(rgba(0,0,0,.3), rgba(0,0,0,.7)), url("https://images.pexels.com/photos/256381/pexels-photo-256381.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");*/
              background: linear-gradient(rgba(255, 255, 255, 0.3), rgba(0, 0, 0, 0.7)), url("https://www.cne.gob.ec/wp-content/uploads/2022/07/background-Cnegris.jpg");

              background-repeat: no-repeat;
              background-size: cover;
              background-position: center center;
              color: #fff;
              padding-top: 30px;
              padding-bottom:30px;
            }
            .bg-light {
              background-color: #153E5C!important;
            }
            .border {
              border: #153E5C!important;
            }
        </style>
    </head>
    <body>
        <div class="page">
            <div id="header-box">
                <div class="container center-both">
                    <img class="img-fluid" src="https://www.cne.gob.ec/wp-content/uploads/2023/02/CNElogoveb-1-e1708103327478.png" alt="Logo" style="width:166px;">
                </div>
            </div>
            <nav id="nav-box" class="navbar navbar-expand-sm bg-light navbar-light border fixed-top">
                <div class="container">
                    <div class="row w-100 justify-content-center align-items-center">
                        <a href="vista">
                            <h1 style="font-family: 'Arial', Sans-serif; font-weight: bold!important; color:#ffffff;" class="m-0">CNE</h1>
                        </a>
                    </div>
                </div> 
            </nav>
            <section class="bg-family py-2" id="banner">
                <div class="container py-5 my-5">
                    <div class="row  text-center">
                        <div class="col-md-8 offset-md-2 text-white">
                            <h1> Key things to keep in mind before buying a car insurance policy</h1>
                            <p style="color:white !important; font-style: italic;">Order food from the Family story. Ghar jaisa swad</p>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-6 offset-md-3"></div>
                    </div>
                </div>
            </section>
            <section class="py-5" id="aboutus">
                <div class="container py-5">
                    <div class="row">
                        <?php foreach($personas as $key => $p) : ?>
                            <div class="col-md-4">
                                <div class="blog-card blog-card-blog">
                                    <div class="blog-card-image">
                                        <a href="#"> <img class="img" src="https://econsultoria.net/wp-content/uploads/2021/08/que-es_portafolio.png"> </a>
                                        <div class="ripple-cont"></div>
                                    </div>
                                    <div class="blog-table">
                                        <!--<h6 class="blog-category blog-text-success"><i class="far fa-newspaper"></i> News</h6>-->
                                        <h4 class="blog-card-caption">
                                            <a href="form/<?php echo $p->id; ?>/<?php echo generar_token($p->id); ?>"><?php echo $p->id.".-"; ?> Lorem Ipsum is simply dummy text of the printing and</a>
                                        </h4>
                                        <!--<p class="blog-card-description">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>-->
                                        <div class="ftr">
                                            <div class="author">
                                                <a href="form/<?php echo $p->id; ?>/<?php echo generar_token($p->id); ?>"> <img src="https://media.licdn.com/dms/image/C5612AQFqAiEvyP5sMQ/article-cover_image-shrink_600_2000/0/1520248896936?e=2147483647&v=beta&t=xhceNaDz3y_eD_GRjSeX4W5cpi6yS_ckdYgLiNMQUd0" alt="..." class="avatar img-raised"> <span>Postular</span> </a>
                                            </div>
                                            <!--<div class="stats"> <i class="far fa-clock"></i> 10 min </div>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </section>
            <?php
                // Definición de la función generar_token en la vista
                function generar_token($id) {
                    // Puedes implementar tu propia lógica de generación del token aquí
                    // Por ejemplo, usando la función hash con algún secreto único
                    $secret = 'tu_secreto_unico';
                    echo hash('sha256', $id . $secret);
                }
            ?>

            <section class="cta bg-blue-grey text-white py-4 border-bottom border-secondary">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6><b>Want more?</b> Exclusive deals, the latest news: Our Newsletter</h6>
                                </li>
                                <li class="list-inline-item">
                                    <button type="button" class="btn btn-outline-info ">Sign UP</button>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
            </section>
            <section class="footer bg-blue-grey text-grey ">
                <div class="container py-5">
                    <div class="row d-flex ">
                        <div class="col-12 col-md-3 col-sm-6 col-xs-6">
                            <h6 class="text-info">Company</h6>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-grey">How it works?</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Get the app</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Terms of Service</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Career</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Press</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Contact</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-md-3 col-sm-6 col-xs-6">
                            <h6 class="text-info">Company</h6>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-grey">How it works?</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Get the app</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Terms of Service</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Career</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Press</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Contact</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-md-3 col-sm-6 col-xs-6">
                            <h6 class="text-info">Company</h6>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-grey">How it works?</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Get the app</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Terms of Service</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Career</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Press</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Contact</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-md-3 col-sm-6 col-xs-6">
                            <h6 class="text-info">Company</h6>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-grey">How it works?</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Get the app</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Terms of Service</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Career</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Press</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="copyright text-center py-3 bg-blue-grey border-top border-secondary">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                © 2019 NextApp. All Rights Reserved
                            </div>
                            <div class="col-md-6">
                                <ul class="list-inline">
                                    <li class="list-inline-item">follow us on :</li>
                                    <li class="list-inline-item"><a href="#" class="text-primary"><i class="fa fa-facebook mr-1"></i>facebook</a></li>
                                    <li class="list-inline-item"><a href="#" class="text-info"><i class="fa fa-twitter mr-1"></i>Twitter</a></li>
                                    <li class="list-inline-item"><a href="#" class="text-danger"><i class="fa fa-youtube mr-1"></i>Youtube</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
           
        <script>
            jQuery(document).ready(function($){
                var aboveHeight = $('#header-box').outerHeight();
                $(window).scroll(function(){
                    if ($(window).scrollTop() > aboveHeight){
                        $('#nav-box').addClass('fixed').css('top','0').next().css('margin-top','52px');
                    } else {
                        $('#nav-box').removeClass('fixed').next().css('margin-top','0');
                    }
                });
            });
        </script>
    </body>
</html>

