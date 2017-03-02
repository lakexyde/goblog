{{template "layout/home.tpl" .}}
{{define "content"}}
    <h1>create new post</h1>
    <form method="post">
        <p><input type="text" name="Title"></p>
        <p><textarea rows="20" cols="15" name="Content"></textarea></p>
        <p><button type="submit">Submit</button></p>
    </form>
{{end}}