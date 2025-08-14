import Foundation

let myAge = 23
let yourAge = 21

var message = ""

if myAge >= yourAge {
  message = "I'm older than you"
} else if myAge < yourAge {
  message =  "I'm younger tahn you"
} else {
  message =  "Oh hey, we are the same age"
}

message;

let sum = myAge + 30
let mult = myAge * 30
let module = myAge % 2
let division = myAge / 2

let foo = !true //negative operator

let isFalse = false
isFalse ? "I'am true" : "I'am false";
!isFalse ? "I'am true" : "I'am false";
