<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="static/css/styles.css" rel="stylesheet">
    </head>
    <body>
        <div class="app">
            <a href="/">Home</a> | <a href="/new">New Article</a> | <a href="/delete/{{.a.Id}}">Delete</a>
            <article class="" id="post">
                <h1 class="post-title">{{.a.Title}}</h1>
                <div class="post-meta"></div>
                <div class="post-content">
                    {{.a.Content}}
                </div>
            </article>
        </div>
    </body>
</html>

    
