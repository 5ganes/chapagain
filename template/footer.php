    </div>
    <?php require 'footer_include.php';?>
    <footer>
      <!-- <img src="images/img1.png" class="footerimage">  -->
      <hr style="width:300px;border-top:3px solid #000;">
      <p> 
          <?php $contact = $groups->getByURLName('contact-us'); echo $contact['shortcontents'];?>
      </p>
      <hr style="width:300px;border-top:3px solid #000;"> <br>
      <button class="button2"> CONTACT US NOW</button>
      <div class="socialmedia">
        <ul style="list-style: none;padding: 0;">
          <li><a href="https://facebook.com/Krishighar"><i class="fa fa-facebook"></i></a></li>
          <li><a href=""><i class="fa fa-twitter"></i></a></li>
          <li><a href=""><i class="fa fa-instagram"></i></a></li>
          <li><a href=""><i class="fa fa-google"></i></a></li>
          <li><a href=""><i class="fa fa-snapchat"></i></a></li>
        </ul>
      </div>
      <p style="color:#fff;font-weight: normal; font-family:sans-serif; font-size: 13px;">
          Copyright @ Chapagain Samaj <?php echo date('Y');?>. All rights reserved.
      </p>
      <p style="color:#fff;font-weight: normal; font-family:sans-serif; font-size: 13px;">
          Powered By : <a href="http://krishighar.com">Team Krishighar</a>
      </p>
    </footer>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script>


    var sliderOne = {
      loop:true,
       animateOut: 'flipOutX',
        animateIn: 'fadeInLeftBig',
        items:1,
        margin:30,
        stagePadding:30,
        smartSpeed:450,
        autoplay: true,
        autoplayTimeout: 4000,
    };

    var sliderAuto = {
      items:3,
        loop:true,
        margin:10,
        nav:false,
        dots:false,
        mouseDrag:true,
        touchDrag:true,
        autoplay: true,
        autoplayTimeout: 2000,
        center: true,
        navText: [
          'Previous', 'Next'
        ],
        responsive:{
            0:{
                items:4
            },
            600:{
                items:4
            },
            1000:{
                items:4
            }
        }
    };


    $('#slider-main').owlCarousel(sliderOne);
    $('#slider-2').owlCarousel(sliderAuto);
    </script>
</body>
</html>