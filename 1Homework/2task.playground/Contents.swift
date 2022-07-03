protocol Building {
    var floors: String {get set}
}

protocol Workers {
    var name: String {get set}
    var workingHours: String {get set}
}

enum VisitorsWhyCome {
    case work,study
}

enum VisitorsWhereSit{
    case firstFloor , secondFloor
}

struct LibraryStruct {
       var visitors: String
       let openingHours: String
}

struct GuardsStruct {
       var name: String
       var years: String
}

struct VisitorsStruct{
       var name: String
       var yeras: String
}

class Library: Building {
    var floors: String = "2"
    var name: String = "National Library"
}

class Human {
    var name : String = "Karina"
    var years : String = "19"
    
    func sayHello() {
            print("Hello, my name is \(name)")
    }
}

class Librarian: Human, Workers {
    let nameLibrarian : String = "Andrei"
    let yearsLibrarian : String = "28"
    var workingHours: String = "8"
    
    override func sayHello() {
        print("Hello,  i am labrarian")
    }
}

class Guards: Human ,Workers {
    let nameGuards : String = "Marina"
    let yearsGuards : String = "20"
    var workingHours: String = "6"
    
    override func sayHello() {
        print("Hello, show me your bag")
    }
}

class Visitors: Human {
    let nameVisitors : String = "Radmir"
    let yearsVisitors : String = "18"
    let whyDidCome : VisitorsWhyCome = .study
    let whereSit : VisitorsWhereSit = .firstFloor
    
    override func sayHello() {
        print("Hello, i am visitor")
    }
}
    

let visitors = Visitors()
visitors.sayHello()
