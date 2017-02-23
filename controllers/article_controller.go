package controllers

import (
    "github.com/astaxie/beego"
    "github.com/lakexyde/goblog/models"
    "strconv"
)

type ArticleController struct{
    beego.Controller
}

func (this *ArticleController) Index(){
    var articles []*models.Article
    articles = models.AllArticles()
    this.Data["p"] = articles
    this.TplName = "article/index.tpl"
}

func (this *ArticleController) Show(){
    var article *models.Article
    uid := this.Ctx.Input.Param(":id")
    id, _ := strconv.ParseInt(uid, 10, 64)
    article = models.ShowArticle(id)
    this.Data["p"] = article
    this.TplName = "article/show.tpl"
}

func (this *ArticleController) New(){
    this.TplName = "article/new.tpl"
}

func (this *ArticleController) Create(){

}

func (this *ArticleController) Edit(){
    this.TplName = "article/edit.tpl"
}

func (this *ArticleController) Update(){

}

func (this *ArticleController) Delete(){

}