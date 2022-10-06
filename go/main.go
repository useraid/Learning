package main

import "fmt"

func main() {
	var name = "Go Conference"
	const conftickets = 50
	var remainingTickets = 50
	fmt.Printf("welcome to %v booking\n", name)
	fmt.Println("Get yout tickets, total = ", conftickets, "remaining = ", remainingTickets)

	fmt.Printf("tickets %T, conf name %T", conftickets, name)

	var user string
	var usertickets int
	user = "Tom"
	usertickets = 2
	fmt.Printf("User %v booked %v tickets.\n", user, usertickets)

}
