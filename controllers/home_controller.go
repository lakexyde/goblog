package controllers

import (
    "github.com/astaxie/beego"
)

type HomeController struct {
    beego.Controller
}

func (this *HomeController) Index(){
    p := map[string]string{
        "Title": "Blog",
        "Message": "This is a test message",
    }
    this.Data["p"] = p
    this.TplName = "article/index.tpl"
}