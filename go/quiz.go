package main

import "fmt"

func main() {
	fmt.Println("Welcome to the Quiz")

	var name string
	fmt.Printf("Enter your name : ")
	fmt.Scan(&name)
	fmt.Printf("Hello, %v", name)

	fmt.Printf("Enter your age : ")
	var age int
	fmt.Scan(&age)

}
