package models

import (
    "github.com/astaxie/beego/orm"
    "github.com/astaxie/beego"
    "time"
)

type Article struct{
    Id int64 `orm:""`
    Title string `orm:"size(100);unique"`
    Content string `orm:"type(text)"`
    Created time.Time `orm:"auto_now_add;type(datetime)"`
    Updated time.Time `orm:"auto_now;type(datetime)"`
}

func init(){
    orm.RegisterModel(new(Article))
}

func (a *Article) TableName() string {
    return "articles"
}

func AllArticles() []*Article{
    o := orm.NewOrm()
    articles := []*Article{}
    num, _ := o.QueryTable(new(Article)).All(&articles)
    beego.Info("Total number of post supplied", num)
    return articles
}

func ShowArticle(id int64) *Article {
    o := orm.NewOrm()
    article := Article{Id : id}
    if err := o.Read(&article); err == nil{
        return &article
    }
    return nil
}

func SaveArticle(article *Article){
    o := orm.NewOrm()
    num, err := o.Insert(article)
    if err != nil {
        beego.Error("An error occured: ", err)
    } else {
        beego.Info("Successfully added article", num)
    }
}

func DeleteArticle(id int64) {
    o := orm.NewOrm()
    article := Article{Id : id}
    if err := o.Read(&article); err == nil {
        var num int64
        num, err = o.Delete(&Article{Id: id})
        if err != nil {
            beego.Error(err)
        }else {
            beego.Info("Article deleted", num)
        }
    }
}