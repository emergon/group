
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <br>
    <title>Home</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/fontAwesome/css/all.css">
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>
   
    <header>
        <nav class="navbar navbar-expand-lg navbar-info bg-dark">
            <div class="container">
                <a id="appTitle" class="navbar-brand nav-link-hover text-primary"><b>Book a Tour</b></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#NavbarUtils"
                    aria-controls="NavbarUtils" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="NavbarUtils">
                    <ul class="navbar-nav mr-auto">
                     <li class="nav-item main-item"><a href="/jsp/Home2.html"
                            class="nav-link nav-link-hover"><b>Home</b></a></li>
                        <li class="nav-item main-item"><a href="/jsp/Tours2.html"
                            class="nav-link nav-link-hover"><b>Our Tours</b></a></li>
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle nav-link-hover" id="navbarDropdown1"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-user-circle"></i>
                                <b>{user.username}</b>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item nav-link-hover" href="/jsp/CustomerProfile.html">
                                    myProfile</a>
                                <a class="dropdown-item nav-link-hover" href="/jsp/Login.jsp">
                                    Logout</a>
                                    </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="image"></div>
        <h3 class="text-left"><b>Available Tours</b></h3>
        <div class="row padding">
            <table id="tourTable" class="table table-hover table-striped table-bordered col-8 border border-dark">
                <thead>
                    <tr class="bg-info">
                        <th class="text-center" scope="col">Location</th>
                        <th class="text-center" scope="col">Date</th>
                        <th class="text-center" scope="col">Cost</th>
                        <th class="text-center" scope="col">Guide</th>
                        <th colspan="2" class="text-center" scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="text-center">${t.location}</td>
                        <td class="text-center">${t.date}</td>
                        <td class="text-center">${t.cost}</td>
                        <td class="text-center">${t.guide}</td>
                        <td class="text-center"><a name="booking" href="#" id="booking" type="submit">
                            <b class="text-dark"><button
                                class="btn btn-primary" id="bookButton" name="bookButton">
                                Book now</button></b></a></td>
                    </tr>
                </tbody>
            </table>
        </div>



    <!--JQUERY-->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <!--BOOTSTRAP-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="/js/app.js"></script>
</body>

</html>