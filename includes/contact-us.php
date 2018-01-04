<?php $lan=$_GET['lan'];?>
<script language="javascript">
  function validateform(fm){
    // alert('sdf');
      if(fm.name.value == ""){
          alert("Please type your Name.");
          fm.name.focus();
          return false;
      } 
      var goodEmail = fm.email.value.match(/\b(^(\S+@).+((\.com)|(\.net)|(\.edu)|(\.mil)|(\.gov)|(\.org)|(\..{2,3}))$)\b/gi);    
      if(fm.email.value == ""){
          alert("Please type your E-mail.");
          fm.email.focus();
          return false;
      }
      if (!goodEmail) {
          alert("The Email address you entered is invalid please try again!")
          fm.email.focus()
          return (false);
      }
      if(fm.subject.value == ""){
          alert("Please type Subject.");
          fm.subject.focus();
          return false;
      }     
      if(fm.comment.value == ""){
          alert("Please type your Comment.");
          fm.comment.focus();
          return false;
      }
      if(fm.security_code.value == ""){
          alert("Please enter security code.");
          fm.security_code.focus();
          return false;
      }
      else if(fm.security_code.value.length < 6)
      {
          alert("Please enter valid length security code.");
          fm.security_code.focus();
          return false;
      }
  }
</script>
<style type="text/css">
    .error-msg{
          padding: 1%; background: #c76353; color: white; margin-bottom: 1%; margin: 0.5%;text-align: left;
    }
</style>
<div class="jumbotron" style="margin-top: 2%;">
    <div id="jumbo2">
        <div class="container welcome" >
            <div class="row">
                <div class="col-sm-12 innerpage">
                    <?php 
                      global $feedbackmsg; 
                      if(!empty($feedbackmsg)) $msg = $feedbackmsg; 
                      else if(isset($_REQUEST['msg'])) $msg = $_REQUEST['msg'];
                    if(!empty($msg)){?>
                        <div class="error-msg"><?php echo $msg;?></div>
                    <?php }?>
                    <h2 class="features">
                        <?php if($lan=='en') echo 'Our Contact Information'; else echo 'हाम्रो सम्पर्क';?>
                    </h2>
                    <p>
                        <?php
                            $content=$groups->getByURLName(CONTACT);
                            // $contentGet=$conn->fetchArray($content);
                            if($lan!='en')
                               echo $content['contents'];
                            else echo $content['contentsen'];
                        ?>
                    </p>
                </div>
                <div class="col-sm-12 innerpage">
                  <h2 class="features">
                        <?php if($lan=='en') echo 'Send Us Feedback'; else echo 'प्रतिक्रिया पठाउनुहोस';?>
                  </h2>
                    <div class="contact-from" style="text-align: left;">
                      <form id="contact_us" name="contact_us" action="" method="post" 
                      onSubmit="return validateform(this);">
                          <div>
                            <p>
                              नाम : <input type="text" required="" placeholder="Name *" name="name" id="name">
                            </p>
                          </div>
                          <div>
                            <p>ठेगाना : 
                              <input type="text" placeholder="Address" name="address" id="address">
                            </p>
                          </div>
                          <div>
                            <p> फोन नं. : 
                              <input type="text" placeholder="Phone" name="phone" id="phone">
                            </p>
                          </div>
                          <div>
                            <p> ईमेल : 
                              <input type="text" required="" placeholder="E-Mail *" name="email" id="email">
                            </p>
                          </div>
                          <div>
                            <p> बिषय : 
                              <input type="text" required="" placeholder="Subject *" name="subject" id="subject">
                            </p>
                          </div>
                          <div>
                            <p>प्रतिक्रिया : 
                            <textarea name="comment" id="comment" cols="60" rows="4" placeholder="Your Comment *" required></textarea>
                            </p><br>
                          </div>
                          <div>
                              <p>
                                Security Code : <img style="width: auto;float: none" src="includes/captcha.php?width=110&height=40&characters=6" id="captchaimage" />
                                  <a href="javascript: void(0);" onclick="document.getElementById('captchaimage').src = 'includes/captcha.php?width=110&height=40&characters=6&' + Math.random(); return false;" class="captchaReload">[ Reload Image ]</a>
                              </p>
                          </div>
                          <div>
                            <p>
                              <input type="text" required="" placeholder="Enter security code" maxlength="6" name="security_code" id="security_code">
                            </p>
                          </div><br>
                          <button type="submit" name="btnFeedback" class="btn btn-success btn-lg"><i class="fa fa-send"></i> Send Feedback</button>
                      </form>
                    </div>
                </div>
            </div>
          </div>
    </div>
</div>