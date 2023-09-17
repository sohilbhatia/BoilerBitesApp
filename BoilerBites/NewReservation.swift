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
    @Published var reservations: [String: [String: Any]] = [:]
    
    
    func pushNewReservation(diningHall: String, holder: String, date: Date, numOfPeople: Int, description: String) {
        let hillenbrandRef = ref.child("Reservations").child(diningHall)
        let myRes = ref.child("My Reservations").child(diningHall)
        

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
        let dateString = dateFormatter.string(from: date)
 
        let reservationKey = hillenbrandRef.childByAutoId().key
        let myKey = myRes.childByAutoId().key
        
      
        let reservationData: [String: Any] = [
            "Dining Hall": diningHall,
            "Holder": holder,
            "Date": dateString,
            "Number of People": numOfPeople,
            "Description": description
        ]
        
        let myData: [String: Any] = [
            "Dining Hall": diningHall,
            "Holder": holder,
            "Date": dateString,
            "Number of People": numOfPeople,
            "Description": description
        ]
        
        
        let newReservationRef = hillenbrandRef.child(reservationKey!)
        let myNewReservationRef = myRes.child(myKey!)
        
        
        newReservationRef.setValue(reservationData) { (error, _) in
            if let error = error {
                print("Error adding new reservation: \(error.localizedDescription)")
            } else {
                print("New reservation added successfully.")
            }
        }
        
        myNewReservationRef.setValue(myData) { (error, _) in
            if let error = error {
                print("Error adding new reservation: \(error.localizedDescription)")
            } else {
                print("New reservation added successfully.")
            }
        }
    }
    
    func fetchReservations() {
            let dining_halls = ["Hillenbrand", "Windsor", "Wiley", "Earhart", "Ford"]
            dining_halls.forEach { item in
                let myRes = ref.child("My Reservations").child(item)

                myRes.observeSingleEvent(of: .value) { [weak self] (snapshot) in
                    guard let self = self else { return }
                    
                    if snapshot.exists() {
                        if let value = snapshot.value as? [String: [String: Any]] {
                            self.reservations = value
                        }
                    }
                }
            }
            
        }
}
