<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../../resources/css/style.css">
    <title>Home page</title>
</head>
<body>


 <nav class="navbar navbar-expand-lg bg-warning py-0 navbar-light fixed-top">
     <div class="container">
       <a class="navbar-brand" href="">
         <img src="../../resources/images/logo.png" alt="logo" width="60" class="rounded-pill">
       </a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"  aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarNav">
           <ul class="navbar-nav ms-auto me-auto mb-2 mb-lg-0">
             <li class="nav-item"><a class="nav-link active" href="" aria-current="page">Read Books</a></li>
             <li class="nav-item"><a class="nav-link active" href="" aria-current="page">Read Newspapers</a></li>
             <li class="nav-item"><a class="nav-link active" href="" aria-current="page">Read Articles</a></li>
           </ul>
           <ul class="navbar-nav ms-auto me-5 mt-3">
             <li class="nav-item">
               <form class="input-group border-end border-dark border-2">
                 <input class="form-control bg-warning border-dark" type="search" placeholder="Search" aria-label="Search">
                 <a class="btn bg-warning border-dark me-3">
                   <i class="bi bi-search"style="font-size: 1.4rem;"></i>
                 </a>
               </form>
             </li>
             <li class="nav-item dropdown">
               <a class="nav-link" href="login" data-bs-toggle="dropdown"><i class="bi bi-person text-dark" style="font-size: 2rem;"></i></a>
               <div class="dropdown-menu shadow">
                <a class="dropdown-item" data-bs-toggle="modal" href="#adminLogin" role="button"> login as admin </a>
                <a class="dropdown-item" data-bs-toggle="modal" href="#userLogin" role="button"> login as user </a>
               </div>
             </li>
             <li class="nav-item mt-2 d-inline-block">
               <a class="nav-link" href="#favorite" data-bs-toggle="tooltip" data-bs-placement="bottom" title="favorite"><i class="bi bi-heart-fill text-dark" style="font-size: 1.4rem;"></i></a>
             </li>
           </ul>
         </div>
       </div>
     </div>
   </nav>

   <div class="modal fade" id="adminLogin" aria-hidden="true" aria-labelledby="" tabindex="-1">
     <div class="modal-dialog modal-dialog-centered">
       <div class="modal-content shadow p-4">
         <div class="modal-body rounded bg-light">
           <form class="" action="index.html" method="post">
             <div class="">
               <button type="button" class="btn-close justify-content-end" data-bs-dismiss="modal" aria-label="Close"></button>
               <h3 class="modal-title fw-bold text-center text-primary">login</h3>
             </div>
             <div class="fw-normal text-muted text-center mb-4">
               Don't have an account? <a data-bs-toggle="modal" href="#adminSignup" role="button" class="text-primary text-decoration-none">Sign up</a>
             </div>
             <div class="form-floating mb-3">
               <input type="email" class="form-control" id="floatingInput" placeholder="Email">
               <label for="floatingInput">Email address</label>
             </div>
             <div class="form-floating">
               <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
               <label for="floatingPassword">Password</label>
             </div>
             <div class="mt-2 text-end">
               <a href="#" class="text-primary text-bold text-decoration-none">Forget password?</a>
             </div>
             <button type="submit" class="btn btn-primary w-100 my-4" name="button">Continue</button>
           </form>
         </div>
       </div>
     </div>
   </div>
   <div class="modal fade" id="adminSignup" aria-hidden="true" aria-labelledby="" tabindex="-1">
     <div class="modal-dialog modal-dialog-centered">
       <div class="modal-content shadow p-4">
         <div class="modal-body rounded bg-light">
           <form class="" action="index.html" method="post">
             <div class="">
               <button type="button" class="btn-close justify-content-end" data-bs-dismiss="modal" aria-label="Close"></button>
               <h3 class="modal-title fw-bold text-center text-primary">Sign Up</h3>
             </div>
             <div class="fw-normal text-muted text-center mb-4">
               Already have an account? <a data-bs-toggle="modal" href="#adminLogin" role="button" class="text-primary text-decoration-none">Login Here</a>
             </div>
             <div class="form-floating mb-3">
               <input type="text" class="form-control" id="floatingInput" placeholder="Name">
               <label for="floatingInput">Name</label>
             </div>
             <div class="form-floating mb-3">
               <input type="email" class="form-control" id="floatingInput" placeholder="Email">
               <label for="floatingInput">Email address</label>
             </div>
             <div class="form-floating mb-3">
               <input type="number" class="form-control" id="floatingInput" placeholder="phone no">
               <label for="floatingInput">Phone No</label>
             </div>
             <div class="form-floating mb-3">
               <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
               <label for="floatingPassword">Password</label>
             </div>
             <div class="form-floating">
               <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
               <label for="floatingPassword">Confirm Password</label>
             </div>
             <div class="mt-2 text-end">
               <a href="#" class="text-primary text-bold text-decoration-none">Forget password?</a>
             </div>
             <button type="submit" class="btn btn-primary w-100 my-4" name="button">Continue</button>
           </form>
         </div>
       </div>
     </div>
   </div>
   <div class="modal fade" id="userLogin" aria-hidden="true" aria-labelledby="" tabindex="-1">
     <div class="modal-dialog modal-dialog-centered">
       <div class="modal-content shadow p-4">
         <div class="modal-body rounded bg-light">
           <form class="" action="index.html" method="post">
             <div class="">
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               <h3 class="modal-title fw-bold text-center text-primary">login</h3>
             </div>
             <div class="fw-normal text-muted text-center mb-4">
               Don't have an account? <a data-bs-toggle="modal" href="#userSignup" role="button" class="text-primary text-decoration-none">Sign up</a>
             </div>
             <div class="form-floating mb-3">
               <input type="email" class="form-control" id="floatingInput" placeholder="Email">
               <label for="floatingInput">Email address</label>
             </div>
             <div class="form-floating">
               <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
               <label for="floatingPassword">Password</label>
             </div>
             <div class="mt-2 text-end">
               <a href="#" class="text-primary text-bold text-decoration-none">Forget password?</a>
             </div>
             <button type="submit" class="btn btn-primary w-100 my-4" name="button">Continue</button>
           </form>
         </div>
       </div>
     </div>
   </div>
   <div class="modal fade" id="userSignup" aria-hidden="true" aria-labelledby="" tabindex="-1">
     <div class="modal-dialog modal-dialog-centered">
       <div class="modal-content shadow p-4">
         <div class="modal-body rounded bg-light">
           <form class="" action="index.html" method="post">
             <div class="">
               <button type="button" class="btn-close justify-content-end" data-bs-dismiss="modal" aria-label="Close"></button>
               <h3 class="modal-title fw-bold text-center text-primary">Sign Up</h3>
             </div>
             <div class="fw-normal text-muted text-center mb-4">
               Already have an account? <a data-bs-toggle="modal" href="#userLogin" role="button" class="text-primary text-decoration-none">Login Here</a>
             </div>
             <div class="form-floating mb-3">
               <input type="text" class="form-control" id="floatingInput" placeholder="Name">
               <label for="floatingInput">Name</label>
             </div>
             <div class="form-floating mb-3">
               <input type="email" class="form-control" id="floatingInput" placeholder="Email">
               <label for="floatingInput">Email address</label>
             </div>
             <div class="form-floating mb-3">
               <input type="number" class="form-control" id="floatingInput" placeholder="phone no">
               <label for="floatingInput">Phone No</label>
             </div>
             <div class="form-floating mb-3">
               <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
               <label for="floatingPassword">Password</label>
             </div>
             <div class="form-floating">
               <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
               <label for="floatingPassword">Confirm Password</label>
             </div>
             <div class="mt-2 text-end">
               <a href="#" class="text-primary text-bold text-decoration-none">Forget password?</a>
             </div>
             <button type="submit" class="btn btn-primary w-100 my-4" name="button">Continue</button>
           </form>
         </div>
       </div>
     </div>
   </div>

  <section id="home">
    <div class="text-center msg">
      <h4 class="display-6">
        <strong class="fw-bolder"> Welcome <br> to Digital Library </strong>
      </h4>
    </div>
  </section>

  <nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
       <a class="navbar-brand btn btn-dark text-light" href="">Filter</a>
       <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#main_nav"  aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""><i class="bi bi-caret-down-fill text-dark" style="font-size: 2rem;"></i></span>
       </button>
       <div class="collapse navbar-collapse" id="main_nav">
           <ul class="navbar-nav ms-auto me-auto mb-2 mb-lg-0">
             <li class="nav-item me-5 dropdown">
                  <a class="nav-link text-dark dropdown-toggle" href="" id="multilevel"  data-bs-toggle="dropdown" role="button" aria-expanded="false" data-bs-auto-close="outside">Book Catagory</a>
                  <ul class="dropdown-menu shadow">
                    <li><a class="dropdown-item" href="#">Adventure</a></li>
                    <li><a class="dropdown-item" href="#">Novels</a></li>
                    <li><a class="dropdown-item" href="#">Story Books</a></li>
                    <li><a class="dropdown-item" href="#">Short Story</a></li>
                    <li class="dropend">
                      <a class="dropdown-item dropdown-toggle" data-bs-toggle="dropdown" href="#">Islamic Books</a>
                      <ul class="dropdown-menu shadow">
                          <li><a class="dropdown-item" href="#">Quran</a></li>
                          <li><a class="dropdown-item" href="#">Hadith</a></li>
                          <li><a class="dropdown-item" href="#">Tafsir</a></li>
                          <li><a class="dropdown-item" href="#">Others</a></li>
                      </ul>
                    </li>
                  </ul>
              </li>
          		<li class="nav-item me-5 dropdown position-static">
                  <a class="nav-link text-dark dropdown-toggle" href="#" id="navbarDropdwn" role="button"  data-bs-toggle="dropdown" aria-expanded="false">Writer</a>
                  <div class="dropdown-menu shadow">
                    <div class="px-md-4">
                      <div class="container-fluid">
                        <div class="row">
                          <div class="col-lg-3 col-sm-6 py-4 px-xl-5 px-4">
                            <label for="" class="fw-bold">Bangladeshi Writer</label>
                            <div class="py-2">
                              <a class="dropdown-item" href="#">Humayun Ahmed</a>
                              <a class="dropdown-item" href="#">Zafar Iqbal</a>
                              <a class="dropdown-item" href="#">Humayun Azad</a>
                              <a class="dropdown-item" href="#">Begum Rokeya</a>
                              <a class="dropdown-item" href="#">Kazi Nazrul Islam</a>
                              <a class="dropdown-item" href="#">Ahsan Habib</a>
                              <a class="dropdown-item" href="#">Jasimuddin</a>
                              <a class="dropdown-item" href="#">Jahanara Imam</a>
                              <a class="dropdown-item" href="#">Tahmima Anam</a>
                              <a class="dropdown-item" href="#">Mir Mosharraf</a>
                            </div>
                          </div>
                          <div class="col-lg-3 col-sm-6 py-4 px-xl-5 px-4">
                            <label for="" class="fw-bold">Indian Writer</label>
                            <div class="py-2">
                              <a class="dropdown-item" href="#">Humayun Ahmed</a>
                              <a class="dropdown-item" href="#">Zafar Iqbal</a>
                              <a class="dropdown-item" href="#">Humayun Azad</a>
                              <a class="dropdown-item" href="#">Begum Rokeya</a>
                              <a class="dropdown-item" href="#">Kazi Nazrul Islam</a>
                              <a class="dropdown-item" href="#">Ahsan Habib</a>
                              <a class="dropdown-item" href="#">Jasimuddin</a>
                              <a class="dropdown-item" href="#">Jahanara Imam</a>
                              <a class="dropdown-item" href="#">Tahmima Anam</a>
                              <a class="dropdown-item" href="#">Mir Mosharraf</a>
                            </div>
                          </div>
                          <div class="col-lg-3 col-sm-6 py-4 px-xl-5 px-4">
                            <label for="" class="fw-bold">Islamic Writer</label>
                            <div class="py-2">
                              <a class="dropdown-item" href="#">Humayun Ahmed</a>
                              <a class="dropdown-item" href="#">Zafar Iqbal</a>
                              <a class="dropdown-item" href="#">Humayun Azad</a>
                              <a class="dropdown-item" href="#">Begum Rokeya</a>
                              <a class="dropdown-item" href="#">Kazi Nazrul Islam</a>
                            </div>
                          </div>
                          <div class="col-lg-3 col-sm-6 py-4 px-xl-5 px-4">
                            <label for="" class="fw-bold">Other Writer</label>
                            <div class="py-2">
                              <a class="dropdown-item" href="#">Humayun Ahmed</a>
                              <a class="dropdown-item" href="#">Zafar Iqbal</a>
                              <a class="dropdown-item" href="#">Humayun Azad</a>
                              <a class="dropdown-item" href="#">Begum Rokeya</a>
                              <a class="dropdown-item" href="#">Kazi Nazrul Islam</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
          		<li class="nav-item me-5 dropdown">
                  <a class="nav-link text-dark dropdown-toggle" href="#" id="navbarDropdwn" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">Language</a>
                  <ul class="dropdown-menu shadow">
                    <li><a class="dropdown-item" href="#"> Bangla </a></li>
                    <li><a class="dropdown-item" href="#"> English </a></li>
                  </ul>
               </li>
          </ul>
        </div>
  </div>
</nav>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script type="text/javascript">
var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
return new bootstrap.Tooltip(tooltipTriggerEl)
})
</script>
  </body>
</html>