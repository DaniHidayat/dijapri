<!-- Start Footer bottom Area -->
<?php
$title=$this->db->query("SELECT * FROM tbl_identitas")->row_array();
?>
  <footer>
    <div class="footer-area">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <div class="footer-logo">
                  <!-- <h2><span>DIJ</span>APRI</h2> -->
                  <?php
                  $b=$this->db->query("SELECT * FROM tbl_identitas")->row_array();
                  ?>
                  <!-- <img width="80" src="<?php echo base_url().'assets/home/logo/'.$b['identitas_logo'];?>" alt="" title=""> -->
                  <img src="<?php echo base_url('assets/home/logo.png');?>" alt="" title="">
                </div>

                <p>Temukan pengalaman jual beli barang dan jasa online yang menguntungkan di aplikasi Dijapri.<br>
                Kamu bisa buka toko online dengan begitu cepat dan ringkas, atau belanja produk-produk berkualitas dalam berbagai kategori kebutuhan, yang dijual oleh Pelapak Dijapri dari seluruh Indonesia.
                </p>
                <div class="footer-icons">
                <h4><strong>SELALU TERHUBUNG</strong></h4>
                  <ul>
                  <li class="wow slideInLeft">
                      <a target="_blank" href="https://api.whatsapp.com/send?phone=62<?php echo $b['identitas_nohp'];?>&text=Halo%20Admin%20Saya%20mau%20order%20%0ABarang"><i class="fa fa-whatsapp"></i></a>
                    </li>
                    <li class="wow slideInDown">
                      <a target="_blank" href="<?php echo $b['identitas_facebook'];?>"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li class="wow slideInUp">
                      <a target="_blank" href="<?php echo $b['identitas_twitter'];?>"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li class="wow slideInDown">
                      <a target="_blank" href="<?php echo $b['identitas_google_plus'];?>"><i class="fa fa-google"></i></a>
                    </li>
                    <li class="wow slideInRight">
                      <a target="_blank" href="<?php echo $b['identitas_ig'];?>"><i class="fa fa-instagram"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- end single footer -->
          <div class="col-md-4 col-sm-4 col-xs-12">
          <div class="footer-head">
                <h4><strong>LATEST NEWS</strong></h4>
            <div class="single-blog-page">
              <!-- recent start -->
              <div class="left-blog-last">
                <div class="recent-post">
                <?php foreach ($limit->result() as $row) :?>
                  <!-- start single post -->
                  <div class="recent-single-post">
                    <div class="post-img">
                      <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>">
                           <img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" alt="">
                        </a>
                    </div>
                    <div class="pst-contents">
                      <p><strong><a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><?php echo limit_words($row->tulisan_judul,4).'...';?></a></strong></p>
                      <p><?php echo limit_words($row->tulisan_isi,5).'...';?></p>
                    </div>
                  </div>
                  <!-- End single post -->
                  <?php endforeach;?>
                </div>
              </div>
              <!-- recent end -->
            </div>
          </div>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <h4><strong>informasi</strong></h4>
                <div class="footer-contacts">
                  <p><span>Alamat:</span> <?php echo $b['identitas_alamat'];?></p>
                  <p><span>Telp:</span> <?php echo $b['identitas_nohp'];?></p>
                  <p><span>E-mail:</span> <?php echo $b['identitas_email'];?></p>
                  <p><span>Buka:</span> Senin - Sabtu 07.15 AM - 15.30 PM</p>
                  <p><span>Tutup:</span> Minggu</p>
                </div>
              </div>
            </div>
          </div>
          <!-- end single footer -->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <h4><strong>download aplikasi</strong></h4>
                <div class="flicker-img">
                  <a class="wow slideInLeft" target="_blank" href="<?php echo $title['link_aplikasi'];?>"><img src="<?php echo base_url();?>assets/home/icons/ico/3.png" alt="IPHONE"></a>
                  <a class="wow slideInRight" target="_blank" href="<?php echo $title['link_aplikasi'];?>"><img src="<?php echo base_url();?>assets/home/icons/ico/2.png" alt="ANDROID"></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-area-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="copyright text-left">
              <p>
                Copyright &copy; <?php echo 2019;?> - <?php echo date('Y');?> <strong><a href="<?php echo base_url();?>"><?php echo $title['identitas_nama'];?></a></strong> All Rights Reserved
              </p>
            </div>
           <!--  <div class="credits">
              
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=eBusiness
              
              Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div> -->
          </div>
        </div>
      </div>
    </div>
  </footer>