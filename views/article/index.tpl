{{template "layout/home.tpl" .}}}
{{define "pagetitle"}}
    <h1>{{.p.Title}}</h1>
{{end}}
{{define "content"}}
    <div class="posts">
        <article class="post">
            <h3 class="post-title">This is a test post</h3>
            <div class="post-summary">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                Alias amet quae hic harum aut in ab quos obcaecati, officiis soluta accusamus quo, ea quidem. 
                Eligendi sed quod, tempora unde aliquam!
            </div>       
        </article>
        <article class="post">
            <h3 class="post-title">When to use Lorem</h3>
            <div class="post-summary">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                Alias amet quae hic harum aut in ab quos obcaecati, officiis soluta accusamus quo, ea quidem. 
                Eligendi sed quod, tempora unde aliquam!
            </div>
        </article>   
        <article class="post">
            <h3 class="post-title">How do I begin?</h3>
            <div class="post-summary">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                Alias amet quae hic harum aut in ab quos obcaecati, officiis soluta accusamus quo, ea quidem. 
                Eligendi sed quod, tempora unde aliquam!
            </div>
        </article>  
    </div>
{{end}}