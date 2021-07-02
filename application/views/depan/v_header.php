<?php
$title=$this->db->query("SELECT * FROM tbl_identitas")->row_array();
?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title><?php echo $title['identitas_nama'];?></title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="<?php echo base_url();?>assets/bpn/img/load.png" rel="icon">
  <link href="<?php echo base_url();?>assets/bpn/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<?php echo base_url();?>assets/bpn/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="<?php echo base_url();?>assets/bpn/lib/nivo-slider/css/nivo-slider.css" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/bpn/lib/owlcarousel/owl.carousel.css" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/bpn/lib/owlcarousel/owl.transitions.css" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/bpn/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/bpn/lib/animate/animate.min.css" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/bpn/lib/venobox/venobox.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.css'?>"/>

  <!-- Nivo Slider Theme -->
  <link href="<?php echo base_url();?>assets/bpn/css/nivo-slider-theme.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="<?php echo base_url();?>assets/bpn/css/style.css" rel="stylesheet">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/daterangepicker/daterangepicker.css'?>">
  <!-- Responsive Stylesheet File -->
  <link href="<?php echo base_url();?>assets/bpn/css/responsive.css" rel="stylesheet">
  <!--Social Share-->
  <link href="<?php echo base_url().'theme/css/jssocials.css'?>" rel="stylesheet">
  <link href="<?php echo base_url().'theme/css/jssocials-theme-flat.css'?>" rel="stylesheet">
  <?php
        function limit_words($string, $word_limit){
            $words = explode(" ",$string);
            return implode(" ",array_splice($words,0,$word_limit));
        }
    ?>

  <!-- =======================================================
    Theme Name: eBusiness
    Theme URL: https://bootstrapmade.com/ebusiness-bootstrap-corporate-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body data-spy="scroll" data-target="#navbar-example">

  <div id="preloader"></div>

  <header>
    <!-- header-area start -->
    <div id="sticker" class="header-area">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12">

            <!-- Navigation -->
            <nav class="navbar navbar-default">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".bs-example-navbar-collapse-1" aria-expanded="false">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
                <!-- Brand -->
                <a class="navbar-brand page-scroll sticky-logo" href="<?php echo base_url();?>">
                  <!-- <h1><span>DIJ</span>APRI</h1> -->
                  <!-- Uncomment below if you prefer to use an image logo -->
                  <?php
                  $b=$this->db->query("SELECT * FROM tbl_identitas")->row_array();
                  ?>
                  <img src="<?php echo base_url().'assets/home/logo/'.$b['identitas_logo'];?>" alt="" title="">
								</a>
              </div>
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1" id="navbar-example">
                <ul class="nav navbar-nav navbar-right">
                  <li>
                    <a class="page-scroll" href="<?php echo base_url();?>">Beranda</a>
                  </li>
                  <li>
                    <a class="page-scroll" href="<?php echo base_url();?>#tentang/dijapri">Tentang Kami</a>
                  </li>
                  <li>
                    <a class="page-scroll" href="<?php echo base_url();?>#testimoni">Testimoni</a>
                  </li>
                  <li>
                    <a class="page-scroll" href="<?php echo base_url();?>dokument">Dokumen</a>
                  </li>
                  <li>
                    <a class="page-scroll" href="<?php echo base_url();?>blog">Artikel</a>
                  </li>
                  <li>
                    <a class="page-scroll" href="<?php echo base_url();?>#jasa-kami">Jasa</a>
                  </li>
                  <li>
                    <a class="page-scroll" href="<?php echo base_url();?>#faq-question">Faq</a>
                  </li>
                  <li>
                    <a class="page-scroll" href="<?php echo base_url();?>kontak-kami">Kontak</a>
                  </li>
                  <!-- <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Bahasa<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="">EN</a></li>
                      <li><a href="">IN</a></li>
                    </ul> 
                  </li> -->
                </ul>
              </div>
              <!-- navbar-collapse -->
            </nav>
            <!-- END: Navigation -->
          </div>
        </div>
      </div>
    </div>
    <!-- header-area end -->
  </header>
  <!-- header end -->