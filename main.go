package main

import (
    "github.com/astaxie/beego"
   // "fmt"

)
type MainController struct {
    beego.Controller
}

func (this *MainController) Index(){
    this.Data["json"] = "Hello World"
    this.ServeJSON()
}

func main(){
    beego.Run()
}