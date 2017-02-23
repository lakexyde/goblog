package routers

import (
	"github.com/lakexyde/goblog/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.HomeController{})
    beego.Router("/blog", &controllers.ArticleController{}, "get:Index")
    beego.Router("/blog/:id", &controllers.ArticleController{}, "get:Show")
    beego.Router("/blog/edit/:id", &controllers.ArticleController{}, "get:Edit")
    beego.Router("/blog/new", &controllers.ArticleController{}, "get:New")
}