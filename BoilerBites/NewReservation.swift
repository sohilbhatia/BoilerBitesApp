//
//  NewReservation.swift
//  BoilerBites
//
//  Created by Sohil Bhatia on 9/16/23.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift

class NewReservation: ObservableObject {
    private let ref = Database.database().reference()
    
    func pushNewReservation(holder: String, date: Date, numOfPeople: Int, description: String) {
        let hillenbrandRef = ref.child("Reservations").child("Hillenbrand")
        
        // Convert date to a string
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
        let dateString = dateFormatter.string(from: date)
        
        // Create a unique key for the new reservation
        let reservationKey = hillenbrandRef.childByAutoId().key
        
        // Create a dictionary for the new reservation
        let reservationData: [String: Any] = [
            "Holder": holder,
            "Date": dateString,
            "Number of People": numOfPeople,
            "Description": description
        ]
        
        // Create a child node with the unique key for the new reservation
        let newReservationRef = hillenbrandRef.child(reservationKey!)
        
        // Set the data for the new reservation node
        newReservationRef.setValue(reservationData) { (error, _) in
            if let error = error {
                print("Error adding new reservation: \(error.localizedDescription)")
            } else {
                print("New reservation added successfully.")
            }
        }
    }
}
