<%@include file="Header.jsp" %>
				
		<div class="container auth">
    <h1 class="text-center">LOGIN FORM <span></span> </h1>
    <div id="big-form" class="well auth-box">
      <form name="loginForm" method="POST" action="perform_login">
        <fieldset>

          <!-- Form Name -->
          <legend>ADD LOGIN CREDENTIALS</legend>


          <!-- Text input-->
          <div class="form-group">
            <label class=" control-label" for="textinput">Username</label>  
            <div class="">
              <input id="textinput" name="username" placeholder="Username" class="form-control input-md" type="text">  
            </div>
          </div>

          <!-- Password input-->
          <div class="form-group">
            <label class=" control-label" for="passwordinput">Password</label>
            <div class="">
              <input id="passwordinput" name="password" placeholder="Password" class="form-control input-md" type="password">
            </div>
          </div>

         

          <div class="form-group">
            <label class=" control-label" for="singlebutton"></label>
            <div class="">
              <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit</button>
            </div>
          </div>
         

         
          

        </fieldset>
      </form>
    </div>
    <div class="clearfix"></div>
  </div>

			
<%@include file="Footer.jsp" %>