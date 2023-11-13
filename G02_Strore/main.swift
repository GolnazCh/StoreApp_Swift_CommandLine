//
//  main.swift
//  G02_Strore
//
//  Created by Golnaz Chehrazi - Zahra Shahin on 2023-05-20.
//

import Foundation

print("")
//1. Creating a customer
var c1: Customer = Customer()

//2. Creating a variety of movies and games
//Movies
var m1: Movie = Movie(id: 1, title: "Avatar", price: 28.60, runningTime: 162)
var m2: Movie = Movie(id: 2, title: "Avengers: Endgame", price: 26.95, runningTime: 182)
var m3: Movie = Movie(id: 3, title: "Avatar: The Way of Water", price: 39.99, runningTime: 192)
var m4: Movie = Movie(id: 4, title: "The Call", price:13.19, runningTime: 96)
///////Games
var g1: Game = Game(id: 5, title: "Grand Theft Auto V", price: 16.63, publisher: "Rockstar Games", isMultiPlayer: true)
var g2: Game = Game(id: 6, title: "Fortnite", price: 472.02, publisher: "Epic Games", isMultiPlayer: true)
var g3: Game = Game(id: 7, title: "The Last of Us Part II", price: 47.19, publisher: "Sony Interactive Entertainment", isMultiPlayer: false)
var g4: Game = Game(id: 8, title: "Cyberpunk 2077", price: 27.89, publisher: "CD Projekt", isMultiPlayer: false)
var stItems: [Item] = [m1, m2, m3, m4, g1, g2, g3, g4]

//3. Creating a store and adding the movies and games to the store
var s1: Store = Store(items: stItems)

//4. Searching for an item that exists
s1.findByTitle(keyword: "ava")
print()

//5. Searching for an item that does not exist
s1.findByTitle(keyword: "grand auto")
print()

//6. Trying to purchase an item that the customer cannot afford
s1.buyItem(c: c1, itemId: 7)
print()

//7. Reloading the customer’s gift card so they have sufficient funds
c1.reloadAmount(amount: 500.00)
print("Add the credit of $500\n")
//8. Trying to purchase the same item again (now, they should be able to afford it)
s1.buyItem(c: c1, itemId: 7)
print()

//9. Purchasing an item that the user does not own
s1.buyItem(c: c1, itemId: 2)
print()

//10. Purchasing an item customer already owns
s1.buyItem(c: c1, itemId: 7)
print()

//11. Using one of the items for more than 30 minutes
c1.itemsList[1].minutesUsed = 45
print()

//12. Trying to refund an item that does NOT the refund policy requirements
s1.issueRefund(c: c1, itemId: 2)
print()

//13. Refunding an item that DOES meet the refund policy requirements
s1.issueRefund(c: c1, itemId: 7)
print()
