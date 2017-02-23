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
            <header>
                <h1>Hello World</h1>
            </header>
            <section class="lks-main">
                {{ block "content" .}}{{end}}
            </section>
            <aside class="lks-sidebar">
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
        </div>
        {{ block "js" .}}{{end}}
    </body>
</html>