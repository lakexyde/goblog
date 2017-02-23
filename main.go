package main

import (
    _ "github.com/lakexyde/goblog/routers"
    "github.com/astaxie/beego"
    "github.com/astaxie/beego/orm"
    _ "github.com/mattn/go-sqlite3"
    "time"
)

func init(){
    orm.RegisterDriver("sqlite", orm.DRSqlite)
    orm.RegisterDataBase("default", "sqlite3", "db/blog.db")
}

func main(){
    orm.DefaultTimeLoc = time.UTC
    beego.Run()
}