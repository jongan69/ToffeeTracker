/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The valid drink types.
*/

import Foundation

// Define the types of drinks supported by Coffee Tracker.

// For Extended Drink Functioanlity use Negaitive Caffeine Numbers
enum DrinkType: Int, CaseIterable, Identifiable {
    case waterCup
    case smallCoffee
    case mediumCoffee
    case largeCoffee
    case singleEspresso
    case doubleEspresso
    case quadEspresso
    case blackTea
    case greenTea
    case softDrink
    case energyDrink
    case chocolate
    case shotOfLiquor
    
    // the id property contains a unique ID for each type of drink.
    var id: Int {
        self.rawValue
    }
    
    // the HKIdentifier property contains the drink's classifier as a user-defined string.
    var HKIdentifier: String {
        switch self {
        case .waterCup:
            return "dietaryWater"
        case .smallCoffee:
            return "dietaryCaffeine"
        case .mediumCoffee:
            return "dietaryCaffeine"
        case .largeCoffee:
            return "dietaryCaffeine"
        case .singleEspresso:
            return "dietaryCaffeine"
        case .doubleEspresso:
            return "dietaryCaffeine"
        case .quadEspresso:
            return "dietaryCaffeine"
        case .blackTea:
            return "dietaryCaffeine"
        case .greenTea:
            return "dietaryCaffeine"
        case .softDrink:
            return "dietaryCaffeine"
        case .energyDrink:
            return "dietaryCaffeine"
        case .chocolate:
            return "dietaryCaffeine"
        case .shotOfLiquor:
            return "numberOfAlcoholicBeverages"
        }
    }
    
    // the name property contains the drink's name as a user-defined string.
    var name: String {
        switch self {
        case .waterCup:
            return "8oz of Water"
        case .smallCoffee:
            return "Small Coffee"
        case .mediumCoffee:
            return "Medium Coffee"
        case .largeCoffee:
            return "Large Coffee"
        case .singleEspresso:
            return "Single Espresso"
        case .doubleEspresso:
            return "Double Espresso"
        case .quadEspresso:
            return "Quad Espresso"
        case .blackTea:
            return "Black Tea"
        case .greenTea:
            return "Green Tea"
        case .softDrink:
            return "Soft Drink"
        case .energyDrink:
            return "Energy Drink"
        case .chocolate:
            return "Chocolate"
        case .shotOfLiquor:
            return "Shot of Liquor"
        }
    }
    
    // The mgCaffeinePerServing property contains the amount of caffeine in the drink.
    var mgCaffeinePerServing: Double {
        switch self {
        case .waterCup:
            return 0.0
        case .smallCoffee:
            return 96.0
        case .mediumCoffee:
            return 144.0
        case .largeCoffee:
            return 192.0
        case .singleEspresso:
            return 64.0
        case .doubleEspresso:
            return 128.0
        case .quadEspresso:
            return 256.0
        case .blackTea:
            return 47.0
        case .greenTea:
            return 28.0
        case .softDrink:
            return 22.0
        case .energyDrink:
            return 29.0
        case .chocolate:
            return 18.0
        case .shotOfLiquor:
            return 0.0
        }
    }
    
    // The avgOuncesPerServing property contains the average amount of oz of fluid per drink.
    var ozPerServing: Double {
        switch self {
        case .waterCup:
            return 8.0
        case .smallCoffee:
            return 5.0
        case .mediumCoffee:
            return 8.0
        case .largeCoffee:
            return 12.0
        case .singleEspresso:
            return 3.0
        case .doubleEspresso:
            return 6.0
        case .quadEspresso:
            return 8.0
        case .blackTea:
            return 8.0
        case .greenTea:
            return 8.0
        case .softDrink:
            return 8.0
        case .energyDrink:
            return 8.0
        case .chocolate:
            return 8.0
        case .shotOfLiquor:
            return 1.0
        }
    }
}
