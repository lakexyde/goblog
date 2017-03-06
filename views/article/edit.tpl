<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Edit Article</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="static/css/style.css" rel="stylesheet">
        <script src="../../static/js/axios.min.js"></script>
    </head>
    <body>
        <div class="app">
            <a href="/">Home</a>
            <h1>Edit Article</h1>
            <form id="edit-form" method="post">
                <p><input type="hidden" name="Id" value="{{.a.Id}}"></p>
                <p><input type="text" name="Title" value="{{.a.Title}}"></p>
                <p><textarea name="Content" rows="20" cols="40">{{.a.Content}}</textarea></p>
                <p><input type="hidden" name="Created" value="{{.a.Created}}"></p>
                <p><input type="submit" value="Submit"> | <a href="/{{.a.Id}}">Cancel</a>
            </form>
            <div class="result"></div>
        </div>
        <script>
            var f = document.querySelector('#edit-form');
            var r = document.querySelector('.result');
            var id = f.Id.value;
            var url = "/edit/"+id;
            f.onsubmit = function(e){
                e.preventDefault();
                axios.put(url, {
                    Id: f.Id.value,
                    Title: f.Title.value,
                    Content: f.Content.value,
                    Created: f.Created.value
                })
                .then(function(res){
                    r.textContent = "Succes: \n"+JSON.stringify(res.data);
                })
                .catch(function(err){
                    r.textContent = "Error: \n" + JSON.stringify(err);
                })    
            
            }
        </script>
    </body>
</html>

    
