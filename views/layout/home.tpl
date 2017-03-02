<!doctype html>
<html lang="en">
    <head>
        <meta name="charset" content="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Hello World</title>
        <link rel="stylesheet" href="/static/css/styles.css">
        {{ block "css" .}}{{end}}
    </head>
    <body>
        <div class="app">    
            <section class="lks-main">
                <section class="lks-main-wrapper">
                    <header class="lks-header">
                        <h1>Welcome to my beego blog</h1>
                        {{if .a}}
                            <button class="button"><a href="/blog/edit/{{.a.Id}}">Edit</a></button>
                            <button class="button"><a href="/blog/delete/{{.a.Id}}">Delete</a></button>
                        {{end}}
                        <button class="button"><a href="/blog/new">New Article</a></button>
                    </header>
                    {{ block "content" .}}{{end}}
                </section>
                <div class="clearfix"></div>
                <section class="lks-sidebar">
                    <h1 class="logo">
                       <a href="/blog">lakex</a>
                    </h1>
                    <aside class="lks-sidebar-content">
                        <h3 class="widtget-title">View Posts</h3>
                        <div class="lks-sidebar-widget">
                            A man of words and not of deeds
                        </div>
                        <div class="lks-sidebar-widget">
                            It feels better biting down
                        </div>
                        <div class="lks-sidebar-widget">
                            Making my way downtown walking fast faces pass when am hometown
                        </div>
                        <div class="lks-sidebar-widget">
                            Staring blankly ahead
                        </div>
                        <div class="lks-sidebar-widget">
                            A little bit longer and a little bit harder
                        </div>
                    </aside>
                    <footer class="lks-footer">
                        <center>This is the footer</center>
                    </footer>
                </section>
            </section>
            
            
        </div>
        {{ block "js" .}}{{end}}
    </body>
</html>