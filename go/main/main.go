package main

import (
	"fmt"
)

func main() {
	for {
		var name = "Go Conference"
		const conftickets = 50
		var remainingTickets uint = 50
		fmt.Printf("welcome to %v booking\n", name)
		fmt.Println("Get your tickets, total = ", conftickets, "remaining = ", remainingTickets)

		var bookings [50]string

		var user string
		var usertickets uint

		fmt.Println("Enter Name : ")
		fmt.Scan(&user)
		fmt.Println("Enter Tickets : ")
		fmt.Scan(&usertickets)

		remainingTickets = remainingTickets - usertickets

		bookings[0] = "nana"
		bookings[1] = "iser"

		fmt.Printf("User %v booked %v tickets.\n", user, usertickets)
		fmt.Printf("Tickets remaining %v\n", remainingTickets)
	}

}
