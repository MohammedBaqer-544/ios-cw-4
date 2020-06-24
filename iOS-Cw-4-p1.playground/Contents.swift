import UIKit

var str = "Hello, playground"

struct Movie {
    var title: String
    var mainActors: [String]
    var movieRate: Double
    var pgRate: Int
    var genre: [String]
    
    func kidsSuitable() -> Bool {
        if pgRate <= 13{
            return true
        }
        else{
            return false
        }
    }
    
    func printDescription() {
        print(" اسم الفلم ", title)
        print(" الممثلين ", mainActors)
        print(" التقييم ", movieRate)
        print(" العمر ", pgRate)
        print(" النوع ", genre)
        print(" مناسب للاطفال ", kidsSuitable())
    }
    
    init(title: String, mainActors: [String], movieRate: Double, pgRate: Int, genre: [String]) {
        self.title = title
        self.mainActors = mainActors
        self.movieRate = movieRate
        self.pgRate = pgRate
        self.genre = genre
    }
}

var HarryPotter: Movie = Movie(
    title: "Harry Potter And The Philosopher's Stone",
    mainActors: ["Harry", "Ron", "Hermione"],
    movieRate: 7.6,
    pgRate: 13,
    genre: ["Fantasy", "Family", "Adventure"]
)
    
var Interstellar = Movie(
    title: "Interstellar",
    mainActors: ["Matthew McConaughey", "Anne Hathaway", "Jessica Chastain"],
    movieRate: 8.6,
    pgRate: 13,
    genre: [ "Adventure", "Drama", "Sci-Fi"]
)

var TheLordOfTheRings = Movie(
    title: "The Lord of the Rings: The Fellowship of the Ring",
    mainActors: [ "Elijah Wood", "Ian McKellen", "Orlando Bloom"],
    movieRate: 8.8,
    pgRate: 13,
    genre: [ "Action", "Adventure", "Drama" ]
)

print(HarryPotter)
print(Interstellar)
print(TheLordOfTheRings)

HarryPotter.printDescription()
Interstellar.printDescription()
TheLordOfTheRings.printDescription()
