let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

var reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )

print(reversedNames)