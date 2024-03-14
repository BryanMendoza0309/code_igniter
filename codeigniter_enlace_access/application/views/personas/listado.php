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
              height: 1500px;
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
        </style>
    </head>
    <body>
        <div class="container">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nombre</th>
                  <th scope="col">Apellido</th>
                  <th scope="col">Edad</th>
                </tr>
              </thead>
              <tbody>
                <?php foreach($personas as $key => $p) : ?>
                <tr>
                  <th scope="row"><?php echo $p->id; ?></th>
                  <td><?php echo $p->nombre; ?></td>
                  <td><?php echo $p->apellido; ?></td>
                  <td><?php echo $p->edad; ?></td>
                </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
        </div>
        
        <h1>UI Card</h1>
        <div class="container">
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
                                <a href="guardar/<?php echo $p->id; ?>"><?php echo $p->id.".-"; ?> Lorem Ipsum is simply dummy text of the printing and</a>
                            </h4>
                            <p class="blog-card-description">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <div class="ftr">
                                <div class="author">
                                    <a href="guardar/<?php echo $p->id; ?>"> <img src="https://media.licdn.com/dms/image/C5612AQFqAiEvyP5sMQ/article-cover_image-shrink_600_2000/0/1520248896936?e=2147483647&v=beta&t=xhceNaDz3y_eD_GRjSeX4W5cpi6yS_ckdYgLiNMQUd0" alt="..." class="avatar img-raised"> <span>Postular</span> </a>
                                </div>
                                <!--<div class="stats"> <i class="far fa-clock"></i> 10 min </div>-->
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    </body>
</html>