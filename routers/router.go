package routers

import (
	"github.com/lakexyde/goblog/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.ArticleController{}, "get:Index")
    beego.Router("/:id", &controllers.ArticleController{}, "get:Show")
    beego.Router("/edit/:id", &controllers.ArticleController{}, "get:Edit;put:Update")
    beego.Router("/new", &controllers.ArticleController{}, "get:New;post:Create")
    beego.Router("/delete/:id", &controllers.ArticleController{}, "*:Delete")
    //User Routing
    beego.Router("/user/login", &controllers.UserController{}, "*:LogIn")
    beego.Router("/user/register", &controllers.UserController{}, "*:Register")
    beego.Router("/user/dashboard", &controllers.UserController{}, "*:Dashboard")
    beego.Router("/user/logout", &controllers.UserController{}, "*:Logout")
}