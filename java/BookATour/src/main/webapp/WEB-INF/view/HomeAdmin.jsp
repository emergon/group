<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <br>
    <title>Home</title>
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/fontAwesome/css/all.css">
    <link rel="stylesheet" href="static/css/style.css">
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
                        <li class="nav-item main-item"><a href="/jsp/ToursAdmin.html"
                                                          class="nav-link nav-link-hover"><b>Tours</b></a></li>
                        <li class="nav-item main-item"><a href="/jsp/Guides.html"
                                                          class="nav-link nav-link-hover"><b>Guides</b></a></li>
                        <li class="nav-item"><a href="/jsp/Customers.html"
                                                class="nav-link nav-link-hover"><b>Customers</b></a></li>
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle nav-link-hover" id="navbarDropdown1"
                               role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-user-circle"></i>
                                <b>${user.username}</b>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item nav-link-hover">

                                    <p>
                                        <security:authorize access="isAuthenticated()">
                                            Logged in as: <security:authentication property="principal.username" /> 
                                        </security:authorize>|
                                        <!--Logged in as :{user.username} |-->
                                        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
                                            <input type="submit" value="Logout">
                                        </form:form>
                                    </p>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="image"></div>
        <div class="jumbotron jumbotron-fix">
            <div class="container">
                <div class="row">
                    <h1>Administration Page</h1>
                </div>
            </div>
        </div>
    </main>

    <!--JQUERY-->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <!--BOOTSTRAP-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="/js/app.js"></script>
</body>

</html>