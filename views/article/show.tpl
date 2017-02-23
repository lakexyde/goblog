{{template "layout/home.tpl" .}}
{{ define "content" }}
    <article class="" id="post">
        <h1 class="post-title">{{.p.Title}}</h1>
        <div class="post-meta"></div>
        <div class="post-content">
            {{.p.Content}}
        </div>
    </article>
{{end}}