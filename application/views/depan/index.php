<?php
    $this->load->view('depan/v_header');
?>
<?php
$title=$this->db->query("SELECT * FROM tbl_identitas")->row_array();
?>
  <!-- Start Slider Area -->
  <div id="home" class="slider-area">
    <div class="bend niceties preview-2">
      <div id="ensign-nivoslider" class="slides">
        <?php foreach ($baner->result_array() as $i) :
          $gambar=$i['gambar'];
          $slide=$i['slider'];
        ?>
        <img src="<?php echo base_url().'assets/home/baner/'.$gambar;?>" alt="" title="#<?php echo $slide;?>" />
      <?php endforeach;?>
      </div>

      <!-- direction 1 -->
      <?php foreach ($baner->result_array() as $i) :
          $judul=$i['judul'];
          $slider=$i['slider'];
          $ket=$i['ket'];
          $class=$i['class'];
        ?>
      <div id="<?php echo $slider;?>" class="slider-direction slider-one">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="slider-content">
                <!-- layer 1 -->
                <div class="layer-1-1 wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
                  <h2 class="title1"><?php echo $judul;?></h2>
                </div>
                <!-- <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
                  <h2 class="title1"><?php echo $judul;?></h2>
                </div> -->
                <!-- layer 2 -->
                <div class="layer-1-2 hidden-xs wow slideInLeft" data-wow-duration="2s" data-wow-delay=".1s">
                  <h1 class="title2"><?php echo $ket;?></h1>
                </div>
                <!-- layer 3 -->
                <div class="layer-1-3 wow slideInRight" data-wow-duration="2s" data-wow-delay=".2s">
                  <!-- <a class="ready-btn right-btn page-scroll" href="#services">See Services</a> -->
                  <a class="ready-btn page-scroll" target="_blank" href="<?php echo $title['link_aplikasi'];?>">Donwload Aplikasi</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     <?php endforeach;?>
    </div>
  </div>
  <!-- End Slider Area -->

  <!-- Start About area -->
  <div id="tentang/dijapri" class="about-area area-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="section-headline text-center">
            <h2>Tentang Kami</h2>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- single-well start-->
        <div class="col-md-6 col-sm-6 col-xs-12 wow slideInLeft" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="well-left">
            <div class="single-well">
              <a href="#">
              <img width="100%" src="<?php echo base_url().'assets/home/logo/'.$title['image_tentang'];?>" alt="" title="<?php echo $title['identitas_moto'];?>" />
					<!-- <iframe src="<?php echo $title['identitas_yt'];?>" width="100%" height="380" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" style="border:0" allowfullscreen></iframe> -->
								</a>
            </div>
          </div>
        </div>
        <!-- single-well end-->
        <div class="col-md-6 col-sm-6 col-xs-12 wow slideInRight" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="well-middle">
            <div class="single-well">
              <a href="#">
                <h4 class="sec-head"><?php echo $title['identitas_moto'];?></h4>
              </a>
              <p>
              <?php echo $title['identitas_tentang'];?>
              </p>
            </div>
          </div>
        </div>
        <!-- End col-->
      </div>
    </div>
  </div>
  <!-- End About area -->

  <!-- Start Service area -->
  <div id="services" class="services-area area-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="section-headline services-head text-center">
            <h2>Kenapa Harus DIJAPRI</h2>
          </div>
        </div>
      </div>
      <div class="row text-center">
        <div class="services-contents">
          <!-- Start Left services -->
          <div class="col-md-4 col-sm-4 col-xs-12 wow slideInLeft" data-wow-duration="2s" data-wow-delay=".2s">
            <div class="about-move">
              <div class="services-details">
                <div class="single-services">
                  <a class="services-icon" href="#">
											<i class="fa fa-shopping-cart"></i>
										</a>
                  <h4>Kemudahan Bayar atau Beli</h4>
                  <p>
                    Mulai dari beli paket data sampai bayar tagihan, semua kamu bisa lakukan dengan cepat.
                  </p>
                </div>
              </div>
              <!-- end about-details -->
            </div>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12 wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
            <div class="about-move">
              <div class="services-details">
                <div class="single-services">
                  <a class="services-icon" href="#">
											<i class="fa fa-gift"></i>
										</a>
                  <h4>Promo dan Diskon Menarik</h4>
                  <p>
                    Belanja-belanja semakin murah dengan promo dan diskon yang tiada hentinya.
                  </p>
                </div>
              </div>
              <!-- end about-details -->
            </div>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12 wow slideInRight" data-wow-duration="2s" data-wow-delay=".2s">
            <!-- end col-md-4 -->
            <div class=" about-move">
              <div class="services-details">
                <div class="single-services">
                  <a class="services-icon" href="#">
											<i class="fa fa-heart"></i>
										</a>
                  <h4>Point dan Cashback Member</h4>
                  <p>
                    Dapatkan harga termurah dan Point untuk member Dijapri.
                  </p>
                </div>
              </div>
              <!-- end about-details -->
            </div>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12 wow slideInRight" data-wow-duration="2s" data-wow-delay=".2s">
            <!-- end col-md-4 -->
            <div class=" about-move">
              <div class="services-details">
                <div class="single-services">
                  <a class="services-icon" href="#">
											<i class="fa fa-truck"></i>
										</a>
                  <h4>Opsi Kurir Terlengkap</h4>
                  <p>
                    Pilih kurir sesuai keinginanmu, dari yang tercepat hingga yang gratis ongkir-nya!
                  </p>
                </div>
              </div>
              <!-- end about-details -->
            </div>
          </div>
          <!-- End Left services -->
          <div class="col-md-4 col-sm-4 col-xs-12 wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
            <!-- end col-md-4 -->
            <div class=" about-move">
              <div class="services-details">
                <div class="single-services">
                  <a class="services-icon" href="#">
											<i class="fa fa-credit-card-alt"></i>
										</a>
                  <h4>Pilihan Pembayaran Aman</h4>
                  <p>
                    Selesaikan transaksi dengan beragam pilihan metode bayar yang terjamin keamanannya.
                  </p>
                </div>
              </div>
              <!-- end about-details -->
            </div>
          </div>
          <!-- End Left services -->
          <div class="col-md-4 col-sm-4 col-xs-12 wow slideInLeft" data-wow-duration="2s" data-wow-delay=".2s">
            <!-- end col-md-4 -->
            <div class=" about-move">
              <div class="services-details">
                <div class="single-services">
                  <a class="services-icon" href="#">
											<i class="fa fa-vcard"></i>
										</a>
                  <h4>Dicoin</h4>
                  <p>
                    Dijapri coin bisa digunakan untuk berbelanja transfer ke sesama anggota, disumbangkan untuk program sosial atau diinvestasikan untuk usaha anggota lain yang prospektif.
                  </p>
                </div>
              </div>
              <!-- end about-details -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Service area -->

  <!-- our-skill-area start -->
  <!-- <div class="our-skill-area fix hidden-sm">
    <div class="test-overly"></div>
    <div class="skill-bg area-padding-2">
      <div class="container">
       
        <div class="row">
          <div class="skill-text">
            
            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <input type="text" class="knob" value="0" data-rel="95" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                  <h3 class="progress-h4">Member</h3>
                </div>
              </div>
            </div>
           
            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <input type="text" class="knob" value="0" data-rel="85" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                  <h3 class="progress-h4">Pelapak</h3>
                </div>
              </div>
            </div>
            
            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <input type="text" class="knob" value="0" data-rel="75" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                  <h3 class="progress-h4">Pelanggan</h3>
                </div>
              </div>
            </div>
                        <div class="col-xs-12 col-sm-3 col-md-3 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <input type="text" class="knob" value="0" data-rel="65" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                  <h3 class="progress-h4">Promo Diskon</h3>
                </div>
              </div>
            </div>
           
          </div>
        </div>
      </div>
    </div>
  </div> -->
  <!-- our-skill-area end -->
  
  <!-- Start Wellcome Area -->
 <!--  <div class="wellcome-area">
    <div class="well-bg">
      <div class="test-overly"></div>
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="wellcome-text">
              <div class="well-text text-center">
                <h2>Welcome To Our eBusiness</h2>
                <p>
                  Busuness Lorem ipsum dolor sit amet, consectetur adipiscing elit.luctus est eget congue.
                </p>
                <div class="subs-feilds">
                  <div class="suscribe-input">
                    <input type="email" class="email form-control width-80" id="sus_email" placeholder="Email">
                    <button type="submit" id="sus_submit" class="add-btn width-20">Subscribe</button>
                    <div id="msg_Submit" class="h3 text-center hidden"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div> -->
  <!-- End Wellcome Area -->

  <!-- Start reviews Area -->
  <!-- <div class="reviews-area hidden-xs">
    <div class="work-us">
      <div class="work-left-text">
        <a href="#">
						<img src="<?php echo base_url();?>assets/bpn/img/about/2.jpg" alt="">
					</a>
      </div>
      <div class="work-right-text text-center">
        <h2>working with us</h2>
        <h5>Web Design, Ready Home, Construction and Co-operate Outstanding Buildings.</h5>
        <a href="#contact" class="ready-btn">Contact us</a>
      </div>
    </div>
  </div> -->
  <!-- End reviews Area -->

 <!-- Start portfolio Area -->
  <div id="testimoni" class="portfolio-area area-padding fix">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="section-headline text-center">
            <h2>Kata Mereka Tentang DIJAPRI</h2>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- Start Portfolio -page -->
        <div class="awesome-project-1 fix">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 wow slideInRight" data-wow-duration="2s" data-wow-delay=".2s">
            <div class="awesome-menu ">
              <ul class="project-menu">
                <li>
                  <a href="#" class="active" data-filter="*">All</a>
                </li>
                <?php
                    foreach ($alb->result() as $row) : ?>
                <li>
                  <a href="#" data-filter=".<?php echo $row->album_id;?>"><?php echo $row->album_nama;?></a>
                </li>
              <?php endforeach;?>
              </ul>
            </div>
          </div>
        </div>
        <div class="awesome-project-content wow slideInLeft" data-wow-duration="2s" data-wow-delay=".2s">
          <!-- single-awesome-project start -->
          <?php foreach ($gal->result() as $row) : ?>
          <div class="col-md-4 col-sm-4 col-xs-12 design <?php echo $row->galeri_album_id;?>">
            <div class="single-awesome-project">
              <div class="awesome-img">
                <a href="#"><img src="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>" alt="" /></a>
                <div class="add-actions text-center">
                  <div class="project-dec">
                    <a class="venobox" data-gall="myGallery" href="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>">
                      <h4><?php echo $row->galeri_judul;?></h4>
                      <span><?php echo $row->album_nama;?></span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <?php endforeach;?>
          <!-- single-awesome-project end -->
        </div>
      </div>
    </div>
  </div>
  <!-- awesome-portfolio end -->
  <!-- Start Testimonials -->
  <div class="testimonials-area">
    <div class="testi-inner area-padding">
      <div class="testi-overly"></div>
      <div class="container ">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12 wow slideInRight" data-wow-duration="2s" data-wow-delay=".2s">
            <!-- Start testimonials Start -->
            <div class="testimonial-content text-center">
              <a class="quate" href="#"><i class="fa fa-quote-right"></i></a>
              <!-- start testimonial carousel -->
              <div class="testimonial-carousel">
              <?php
                foreach ($testi->result_array() as $i) :
                  $kode=$i['testimoni_id'];
                  $nama=$i['testimoni_nama'];
                  $isi=$i['testimoni_isi'];
                  $email=$i['testimoni_email'];
                  $tanggal=$i['testimoni_tanggal'];
                  $gambar=$i['gambar'];
                 ?>
                <div class="single-testi">
                  <div class="testi-text">
                    <p>
                      <?php echo $isi;?>
                    </p>
                    <h6><?php echo $nama;?></h6>
                  </div>
                </div>
              <?php endforeach;?>
                <!-- End single item -->
              </div>
            </div>
            <!-- End testimonials end -->
          </div>
          <!-- End Right Feature -->
        </div>
      </div>
    </div>
  </div>
  <!-- End Testimonials -->
  <!-- Start Aplikasi Area -->
  <div class="suscribe-area">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs=12 wow slideInLeft" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="suscribe-text text-center">
            <h3>Download Aplikasi DIJAPRI Mobile Sekarang Juga</h3>
            <a class="sus-btn" target="_blank" href="<?php echo $title['link_aplikasi'];?>">Download</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Aplikasi Area -->

  <!-- start pricing area -->
  <div id="jasa-kami" class="pricing-area area-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="section-headline text-center">
            <h2>Jasa Pembuatan Website</h2>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12 wow slideInLeft" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="pri_table_list">
            <h3>basic <br/> <span>$80 / month</span></h3>
            <ol>
              <li class="check">Online system</li>
              <li class="check cross">Full access</li>
              <li class="check">Free apps</li>
              <li class="check">Multiple slider</li>
              <li class="check cross">Free domin</li>
            </ol>
            <button>Pesan</button>
          </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12 wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="pri_table_list active">
            <span class="saleon">top sale</span>
            <h3>standard <br/> <span>$110 / month</span></h3>
            <ol>
              <li class="check">Online system</li>
              <li class="check">Full access</li>
              <li class="check">Free apps</li>
              <li class="check">Multiple slider</li>
              <li class="check cross">Free domin</li>
            </ol>
            <button>Pesan</button>
          </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12 wow slideInRight" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="pri_table_list">
            <h3>premium <br/> <span>$150 / month</span></h3>
            <ol>
              <li class="check">Online system</li>
              <li class="check">Full access</li>
              <li class="check">Free apps</li>
              <li class="check">Multiple slider</li>
              <li class="check">Free domin</li>
            </ol>
            <button>Pesan</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End pricing table area -->

  <!-- Start Blog Area -->
  <div id="blog" class="blog-area">
    <div class="blog-inner area-padding">
      <div class="blog-overly"></div>
      <div class="container ">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="section-headline text-center">
              <h2>Artikel</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Start Left Blog -->
          <?php foreach ($berita->result() as $row) :?>
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="single-blog">
              <div class="single-blog-img">
                <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>">
                    <img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" alt="">
                  </a>
              </div>
              
              <div class="blog-meta">
                <span class="comments-type">
                    <i class="fa fa-user"></i>
                    <a href="#"><?php echo $row->tulisan_author;?></a>
                  </span>
                <span class="date-type">
                    <i class="fa fa-calendar"></i><?php echo $row->tanggal;?>
                  </span>
              </div>
              <div class="blog-text">
                <h4>
                  <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><?php echo limit_words($row->tulisan_judul,4).'...';?></a>
                  </h4>
                <p>
                  <?php echo limit_words($row->tulisan_isi,10).'...';?>
                </p>
              </div>
              <span>
                  <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>" class="ready-btn">Read more</a>
                </span>
            </div>
            <!-- Start single blog -->
          </div>
          <?php endforeach;?>
          <!-- End Left Blog-->
        </div>
      </div>
    </div>
  </div>
  <!-- End Blog -->
  <!-- Faq area start -->
  <div id="faq-question" class="faq-area area-padding">
    <div class="container">
      <div class="row wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="section-headline text-center">
            <h2>Faq Question</h2>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-12 wow slideInLeft" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="faq-details">
            <div class="panel-group" id="accordion">
              <!-- Panel Default -->
              <div class="panel panel-default">
              <?php foreach ($faq_l->result_array() as $i) :?>
                <div class="panel-heading">
                  <h4 class="check-title">
                    <a data-toggle="collapse" class="<?php echo $i['active'];?>" data-parent="#accordion" href="#<?php echo $i['href'];?>">
                      <span class="acc-icons"></span><?php echo $i['pertanyaan'];?>
                    </a>
                    </h4>
                </div>
                <div id="<?php echo $i['href'];?>" class="panel-collapse collapse <?php echo $i['active'];?>">
                  <div class="panel-body">
                    <p>
                      <?php echo $i['jawaban'];?>
                    </p>
                  </div>
                </div>
                <?php endforeach;?>
              </div>
              <!-- End Panel Default -->
            </div>
          </div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12 wow slideInRight" data-wow-duration="2s" data-wow-delay=".2s">
          <div class="tab-menu">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
            <?php foreach ($faq_r->result_array() as $r) :?>
              <li class="<?php echo $r['active'];?>">
                <a href="#<?php echo $r['href'];?>" role="tab" data-toggle="tab"><?php echo $r['pertanyaan'];?></a>
              </li>
              <?php endforeach;?>
            </ul>
          </div>
          <div class="tab-content">
          <?php foreach ($faq_r->result_array() as $r) :?>
            <div class="tab-pane <?php echo $r['active'];?>" id="<?php echo $r['href'];?>">
              <div class="tab-inner">
                <div class="event-content head-team">
                  <p>
                  <?php echo $r['jawaban'];?>
                  </p>
                </div>
              </div>
            </div>
            <?php endforeach;?>
          </div>
        </div>
      </div>
      <!-- end Row -->
    </div>
  </div>
  <!-- End Faq Area -->
<?php
    $this->load->view('depan/footer');
?>
  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="<?php echo base_url();?>assets/bpn/lib/jquery/jquery.min.js"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/venobox/venobox.min.js"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/knob/jquery.knob.js"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/wow/wow.min.js"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/parallax/parallax.js"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/easing/easing.min.js"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/appear/jquery.appear.js"></script>
  <script src="<?php echo base_url();?>assets/bpn/lib/isotope/isotope.pkgd.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="<?php echo base_url();?>assets/bpn/contactform/contactform.js"></script>

  <script src="<?php echo base_url();?>assets/bpn/js/main.js"></script>
</body>

</html>
