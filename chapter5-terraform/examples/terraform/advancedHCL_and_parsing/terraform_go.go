package main

import (
	"fmt"

	"github.com/hashicorp/hcl2/gohcl"
	"github.com/hashicorp/hcl2/hclwrite"
)


type Service struct {
	Name string `hcl:"name,label"`
	Exe []string `hcl:"executable"`
}

type Constraints struct {
	OS string `hcl:"os"`
	Arch string `hcl:"arch"`
}

type App struct {
	Name string `hcl:"name"`
	Desc string `hcl:"description"`
	Constraints *Constraints `hcl:"constraints,block"`
	Services []Service `hcl:"service,block"`
}

func main() {
	app := App{
		Name: "hclbookgo-app",
		Desc: "First applicatation created with Golang" ,
		Constraints: &Constraints{
			OS: "linux",
			Arch: "amd64",
		},
		Services: []Service{
			{
				Name: "web",
				Exe: []string{"./web", "--listen=:8080"},
			},
			{
				Name: "worker",
				Exe: []string{"./worker"},
			},
		},
	}
gohcl.EncodeIntoBody(&app, f.Body())
f := hclwrite.NewEmptyFile()
gohcl.EcncodeIntoBody(&app, f.Body())
fmt.Printf("%s",f.Bytes())
}