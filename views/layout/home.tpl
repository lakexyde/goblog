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
                        {{block "pagetitle" .}}{{end}}
                    </header>
                    {{ block "content" .}}{{end}}
                </section>
                <div class="clearfix"></div>
                <section class="lks-sidebar">
                    <aside class="lks-sidebar-content">
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