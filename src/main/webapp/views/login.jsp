<!DOCTYPE html>
<html lang="en">

<head>
    <title>Welcome Red Plastering</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="admin" />
    <meta name="author" content="" />

    <!-- Favicon icon -->
    <link rel="icon" href="/views/assets/images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="/views/assets/fonts/fontawesome/css/fontawesome-all.min.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/plugins/animation/css/animate.min.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/css/bootstrap-icons.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/css/vendors.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/css/style.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/css/custom.css" type="text/css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
   <style>
     #togglePassword {
       position: absolute;
       right: 10px;
       top: 50%;
       transform: translateY(-50%);
       cursor: pointer;
       z-index: 9;
     }
   </style>


</head>

<body>
<script>

</script>
    <div class="loader">
        <div class="h-100 d-flex justify-content-center">
            <div class="align-self-center">
                <img src="/views/assets/images/loader.gif" alt="loader">
            </div>
        </div>
    </div>
    <div class="auth-wrapper">
        <div id="VideoWrapper">           
            <figure><img src="/views/assets/images/loginbg.png"></figure>
        </div>
        <div class="auth-content">
            <div class="auth-bg">
                <span class="r"></span>
                <span class="r s"></span>
                <span class="r s"></span>
                <span class="r"></span>
            </div>
            <div class="LeftFig">
                <figure>
                    <img src="/views/assets/images/Data_security_01.jpg" />
                </figure>
            </div>
            <div class="card border-radius-0">
                <div class="card-body">
                    <div class="mb-4 w-100 text-center">
                        <figure><img src="/views/assets/images/logo.png" /></figure>
                        <!-- <i class="feather icon-unlock auth-icon"></i> -->
                    </div>
                    <h6 style="color: red" id="message">${errorMessage}</h6>
                    <h3 class="mb-4">Login</h3>
                    <form action="/redplastering/admin/login">
                        <div class="input-group mb-3">
                            <input type="email" class="form-control" placeholder="Email" id="email" name="email" required="required">
                        </div>
                        <div class="input-group mb-4">
                                    <input type="password" class="form-control" placeholder="password" id="password" name="password" required="required">

                                    <i style="width:50px; text-align: center; height: 48px; line-height: 48px; background: #fff; margin-left: -2px; border: 1px solid #8f8f9d; border-left: 0;" id="pass-status" class="fa fa-eye-slash" aria-hidden="true" onClick="viewPassword()"></i>
                                </div>
                        <div class="LoginBtnBox">
                            <!--<p class="mb-2 text-muted LeftBox">Forgot password? <a href="forget-password.jsp">Reset</a></p>-->
                            <button class="btn btn-primary shadow-2 mb-4 RightBox" type="send" id="login">Login <i class="feather icon-corner-up-right"></i></button>
                            <!-- <p class="mb-0 text-muted">Don’t have an account? <a href="auth-signup.html">Signup</a></p> -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    		window.onload = function() {
    			$('#message').fadeOut(3000);
    		}
    	</script>
<script>
function viewPassword() {
            var passwordInput = document.getElementById('password');
            var passStatus = document.getElementById('pass-status');

            if (passwordInput.type == 'password') {
                passwordInput.type = 'text';
                passStatus.className = 'fa fa-eye';

            } else {
                passwordInput.type = 'password';
                passStatus.className = 'fa fa-eye-slash';
            }
        }
    const togglePassword = document.querySelector('#togglePassword');
    const password = document.querySelector('#password');


    togglePassword.addEventListener('click', function (e) {

      const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
      password.setAttribute('type', type);


      if (togglePassword.classList.contains('fa-eye')) {
        togglePassword.classList.remove('fa-eye');
        togglePassword.classList.add('fa-eye-slash');
      } else {
        togglePassword.classList.remove('fa-eye-slash');
        togglePassword.classList.add('fa-eye');
      }
    });
  </script>
    <!-- Required Js -->
    <script src="/views/assets/js/vendors.js"></script>
    <script src="/views/assets/js/app.js"></script>
    <script src="/views/assets/js/pcoded.min.js"></script>

</body>
</html>
