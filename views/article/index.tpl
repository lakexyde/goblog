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
            <a href="/">Home</a>
            <div class="posts">
                {{range $p := .p}}
                    <article>
                        <h3><a href="/blog/{{$p.Id}}">{{$p.Title}}</a></h3>
                        <div>{{ $p.Content}}</div>
                    </article>
                {{end}} 
            </div>
        </div>
    </body>
</html>

