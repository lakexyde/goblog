{{template "layout/home.tpl" .}}
{{define "pagetitle"}}
    <h1></h1>
{{end}}
{{define "content"}}
    <div class="posts">
        {{range $p := .p}}
            <article class="post">
                <h3 class="post-title"><a href="/blog/{{$p.Id}}">{{$p.Title}}</a></h3>
                <div class="post-summary">{{ $p.Content}}</div>
            </article>
        {{end}} 
    </div>
{{end}}