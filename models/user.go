package models

import (
    "github.com/astaxie/beego/orm"
    "github.com/astaxie/beego"
)

type User struct{
    Id int64 `orm:""`
    Username string `orm:"unique"`
    Password string `orm:""`
}

func init(){
    orm.RegisterModel(new(User))
}

func (u *User) TableName() string{
    return "users"
}

func RegisterUser(u *User){
    o := orm.NewOrm()
    if(u.Username != "" && u.Password != ""){
        num, _ := o.Insert(u)
        beego.Info("User Added Successfully", num)
    }

}

