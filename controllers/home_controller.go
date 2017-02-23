package controllers

import (
    "github.com/astaxie/beego"
)

type HomeController struct {
    beego.Controller
}

func (this *HomeController) Index(){
    this.Data["json"] = "Hello World \n Am here"
    this.ServeJSON()
}