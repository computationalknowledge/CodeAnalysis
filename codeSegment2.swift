class Person {
 
    var firstName: String?
    var lastName: String?
   // can be done here or after object initialization:  
   var birthPlace:String = "Belgium"
 
    func fullName() -> String {
        var parts: [String] = []
 
        if let firstName = self.firstName {
            parts += [firstName]
            print("A", parts)
        }
 
        if let lastName = self.lastName {
            parts += [lastName]
            print("B", parts)
        }
 
        parts += [birthPlace]
        print("C", parts)
        return parts.joined(separator: "--")
}
}
let x = Person()
x.firstName="Jorge Hector"
x.lastName="Rodrigez"
x.birthPlace="Jupiter"
print(x.fullName())
