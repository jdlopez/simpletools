<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>Java Simple Tools</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

</head>

<body>

<div class="container">
    <header class="header clearfix">
        <nav>
            <ul class="nav nav-pills float-right">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <!--
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                -->
            </ul>
        </nav>
        <h3 class="text-muted">Simple tools</h3>
    </header>

    <main role="main">

        <div class="jumbotron">
            <h1 class="display-3">Java simple tools</h1>
            <p class="lead">Some java utils prepared to run: UUID, Timestamp, Base64, ...</p>
            <!--
            <p><a class="btn btn-lg btn-success" href="#" role="button">Sign up today</a></p>
            -->
        </div>

        <script>
            function getURI(uri) {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET", uri, false);
                xhttp.setRequestHeader("Content-type", "application/json");
                xhttp.send();
                return JSON.parse(xhttp.responseText);
                //"uuid.jsp"
                //return response.uuid;
            }

        </script>

        <div class="row marketing">
            <div class="col-lg-6">
                <h4>UUID</h4>
                <p>Generate random UUID (UUID.randomUUID()) </p>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="label-uuid">UUID</span>
                    <input id="uuid" type="text" class="form-control" placeholder="UUID" aria-label="UUID" aria-describedby="label-uuid">
                    <button onclick="document.getElementById('uuid').value = getURI('uuid.jsp').uuid">Generate!</button>
                </div>

            </div>

            <div class="col-lg-6">
                <h4>Timestamp</h4>
                <p>Returns System.currentTimeMillis()</p>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="label-timestamp">Timestamp</span>
                    <input id="timestamp" type="text" class="form-control" placeholder="Timestamp" aria-label="UUID" aria-describedby="label-timestamp">
                    <button onclick="document.getElementById('timestamp').value = getURI('timestamp.jsp').timestamp">Generate!</button>
                </div>

            </div>
        </div>

        <div class="row">

            <div class="col-lg-6">
                <h4>Base 64 (Hex)</h4>
                <p>Calculates base64 from Hex string</p>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="label-base641">Base64 from Hex</span>
                    <input id="base64_h" type="text" class="form-control" placeholder="Hex string" aria-label="Hex" aria-describedby="label-base641" />
                    <button onclick="document.getElementById('base64').value = getURI('base64.jsp?h='+document.getElementById('base64_h').value).base64">Generate!</button>
                </div>
                <textarea id="base64" class="form-control" ></textarea>
            </div>

            <div class="col-lg-6">
                <h4>Base 64 (String)</h4>
                <p>Calculates base64 from string</p>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="label-base642">Base64 from Hex</span>
                    <input id="base64_s" type="text" class="form-control" placeholder="Hex string" aria-label="Hex" aria-describedby="label-base642" />
                    <button onclick="document.getElementById('base64s').value = getURI('base64.jsp?d='+document.getElementById('base64_s').value).base64">Generate!</button>
                </div>
                <textarea id="base64s" class="form-control" ></textarea>
            </div>

        </div>
    </main>

    <footer class="footer">
        <p>Made by JDL</p>
    </footer>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

</div> <!-- /container -->
</body>