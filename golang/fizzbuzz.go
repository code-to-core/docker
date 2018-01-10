package main

import "fmt"

/* Constants */

const min, max int = 1, 100

func main() {
    for i := min; i < max + 1; i++ {
        switch {
            case (i % 3 == 0) && (i % 5 == 0):
                fmt.Printf("FizzBuzz\n")
            case i % 3 == 0:
                fmt.Printf("Fizz\n")
            case i % 5 == 0:
                fmt.Printf("Buzz\n")
            default:
                fmt.Printf("%d\n", i)
        }
    }
}
