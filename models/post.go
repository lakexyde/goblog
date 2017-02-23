package models

import (
    "github.com/astaxie/beego/orm"
    "time"
)

type Article struct{
    Id int64 `orm:""`
    Title string `orm:"size(100)"`
    Content string `orm:"type(text)"`
    Created time.Time `orm:"auto_now_add;type(datetime)"`
    Updated time.Time `orm:"auto_now;type(datetime)"`
}

func init(){
    orm.RegisterModel(new(Article))
}

func AllArticles() []*Article{
    o := orm.NewORM()
    articles := []*Article
    num, _ := o.QueryTable().All(&aticles)
    return articles
}