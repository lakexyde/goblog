package controllers

import(
    "github.com/astaxie/beego"
    _ "github.com/lakexyde/goblog/models"
)

type UserController struct{
    beego.Controller
}

func (this *UserController) Register(){
    this.TplName = "user/register.tpl"
}

func (this *UserController) LogIn(){
    s := this.GetSession("uid")
    if s == nil{
        this.SetSession("uid", int(1))
    } else {
        this.SetSession("uid", s.(int)+1)
        this.Redirect("/user/dashboard", 302)
    }
    this.TplName = "user/login.tpl"
}

func (this *UserController) Dashboard(){
    u := this.GetSession("uid")
    if u  {
        this.Redirect("/user/login", 302)
    }
    this.TplName = "user/dashboard.tpl"
}

func (this *UserController) Logout(){
    this.DelSession("uid")
    this.Redirect("/user/login", 302)
}