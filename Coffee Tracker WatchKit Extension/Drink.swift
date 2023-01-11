/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A structure that represents a single drink consumed by the user.
*/

import Foundation

// The Drink struct records data about a single drink.
struct Drink: Hashable, Codable {
    
    // The mgCaffeine property contains the amount of caffeine in the drink.
    let mgCaffeine: Double
    
    // The HKIdentifier property contains the HKIdentifier of the drink.
    let HKIdentifier: String
    
    // The oz property contains contains the amount of fluid ounces in the drink.
    let oz: Double
    
    // The date property contains the time and date when the user consumed the drink.
    let date: Date
    
    // The uuid property contains a globally unique identifier for the drink.
    let uuid: UUID
    
    // The initializer creates a new drink object.
    init(mgCaffeine: Double, HKIdentifier: String, oz: Double ,onDate date: Date, uuid: UUID = UUID()) {
        self.mgCaffeine = mgCaffeine
        self.HKIdentifier = HKIdentifier
        self.oz = oz
        self.date = date
        self.uuid = uuid
    }
    
    // Calculate the amount of caffeine remaining at the provided time, based on
    // a 5-hour half life.
    public func caffeineRemaining(at targetDate: Date) -> Double {
        // Calculate the number of half-life time periods (5-hour increments).
        let intervals = targetDate.timeIntervalSince(date) / (60.0 * 60.0 * 5.0)
        return mgCaffeine * pow(0.5, intervals)
    }
}
