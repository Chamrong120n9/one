<?php
$form_location = base_url().'youraccount/submit';

?>

<h1>Create Account</h1>
<?php
echo validation_errors("<p style='color:red;'>","</p>");
?>
<form class="form-horizontal" action="<?= $form_location ?>" method="post">
<fieldset>

<!-- Form Name -->
<legend>Please submit your details using the form below</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Username</label>  
  <div class="col-md-4">
  <input id="textinput" name="username"  type="text" value="<?= $username ?>" placeholder="Please enter your username" class="form-control input-md" required="">
 
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">E-mail</label>  
  <div class="col-md-4">
  <input id="textinput" name="email" type="text" value="<?= $email?>" placeholder="Please enter your email address" class="form-control input-md">
  
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Password</label>  
  <div class="col-md-4">
  <input id="textinput" name="pword" type="password" value="<?= $pword?>" placeholder="Please enter your password" class="form-control input-md">
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Confirm Password</label>  
  <div class="col-md-4">
  <input id="textinput" name="repeat_pword" value="<?=$repeat_pword ?>" type="password" placeholder="Please enter your password again" class="form-control input-md">
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton">Create user account?</label>
  <div class="col-md-4">
    <button id="singlebutton" name="submit" value="Submit" class="btn btn-primary">Yes</button>
  </div>
</div>

</fieldset>
</form>
