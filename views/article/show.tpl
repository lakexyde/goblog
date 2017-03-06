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
            <a href="/">Home</a> | <a href="/new">New Article</a> | <a href="/edit/{{.p.Id}}">Edit</a> | <a href="/delete/{{.p.Id}}">Delete</a>
            <article class="" id="post">
                <h1 class="post-title">{{ .p.Title }}</h1>
                <span>{{ date .p.Created "Y-m-d H:i:s" }}</span>
                <div class="post-meta"></div>
                <div class="post-content">
                    {{.p.Content | str2html}}
                </div>
            </article>
        </div>
    </body>
</html>

    
