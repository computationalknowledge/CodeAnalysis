class Book{
    var title:String
    var price:Float
    init(thisTitle:String="Mostly Harmless", thisPrice:Float=10){
        self.title=thisTitle
        self.price=thisPrice
    }
}
class TextBook:Book{}

let x = TextBook()
x.price=20;
print(x.title, x.price);
// chang a property after initiation:
x.title="RED"
print(x.title, x.price);

struct Student{
    var studentName:String?
    var gpa:Double
    var programGroup:String
    init(name:String="Peter", pgmGROUP:String="Computer Technology"){
            self.gpa=3.5
            self.studentName=name
            self.programGroup=pgmGROUP
        }
            mutating func changeProgramGroup(pGroup:String){
                 self.programGroup=pGroup
            }    
}

// struct MathStudent:Student{}

let stud1 = Student()
print(stud1.gpa)

struct Car {
var color:String?
let model:String
init(model:String="FORD") { 
self.model = model 
self.color = nil
}
mutating func changeColor(color:String) { 
self.color = color
}
}
// NO! won't work! try this and see: let m = Car()
var m = Car()
print(m.model)
m.color = "Orange"
print(m.color)
