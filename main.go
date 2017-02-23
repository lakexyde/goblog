package main

import (
    _ "github.com/lakexyde/goblog/routers"
    "github.com/astaxie/beego"
    "github.com/astaxie/beego/orm"
    _ "github.com/mattn/go-sqlite3"
    "time"
    //"fmt"
)

func init(){
    orm.RegisterDriver("sqlite", orm.DRSqlite)
    orm.RegisterDataBase("default", "sqlite3", "db/blog.db")
}

func main(){
    orm.DefaultTimeLoc = time.UTC
//     // Database alias.
// name := "default"

// // Drop table and re-create.
// force := true

// // Print log.
// verbose := true

// // Error.
// err := orm.RunSyncdb(name, force, verbose)
// if err != nil {
//     fmt.Println(err)
// }
    beego.Run()
}