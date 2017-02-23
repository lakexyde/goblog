package routers

import (
	"github.com/lakexyde/goblog/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.HomeController{}, "get:Index")
}