// Example 1

print("Example 1 start ---")

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

// The string-sorting closure from the Closure Expression Syntax section above can be written outside of the sorted(by:) method’s parentheses as a trailing closure
// As a final argument
var reversedNames = names.sorted() { $0 > $1 }

print(reversedNames)


// If a closure expression is provided as the function or method’s only argument and you provide that expression as a trailing closure, you do not need to write a pair of parentheses () after the function or method’s name when you call the function
reversedNames = names.sorted { $0 > $1 }

print(reversedNames)


print("Example 1 end ---\n")




// Example 2

print("Example 2 start ---")
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

print(strings)
print("Example 2 end ---")
