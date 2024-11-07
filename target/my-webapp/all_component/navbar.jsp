<!--from bootstrap navbar-->

<div class="container-fluild" style="height: 10px;background-color: #303f9f;"></div>

<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3>
                <i class="fa-solid fa-book"></i> Ebooks
            </h3>
        </div>
        <div class="col-md-6">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
        <div class="col-md-3">
            <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-user-plus"></i> Login</a>
            <a href="register.jsp" class="btn btn-primary"><i class="fa-solid fa-right-to-bracket"></i> Register</a>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <a class="navbar-brand" href="#"><i class="fas fa-home"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="../index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a href="#" class="nav-link"><i class="fa-solid fa-book-open"></i> Recent Book</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="#"><i class="fa-solid fa-book-open-reader"></i> New Book</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="#"><i class="fa-solid fa-book-open"></i> Old Book</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <!--<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">-->
            <button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa-solid fa-gear"></i>
                Settings</button>
            <button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i class="fa-solid fa-address-card"></i>
                ContactUs</button>
        </form>
    </div>
</nav>