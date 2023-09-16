//
//  ReservationDetail.swift
//  BoilerBites
//
//  Created by Sohil Bhatia on 9/16/23.
//

import SwiftUI
import PassKit

struct ReservationDetail: View {
    var reservation: [String: Any]

    var body: some View {
        VStack {
            Text("Reservation Details")
                .font(.title)

            // Display reservation details
            Text("Dining Hall: \(reservation["Dining Hall"] as? String ?? "Unknown Dining Hall")")
            Text("Holder: \(reservation["Holder"] as? String ?? "Unknown Holder")")
            Text("Date: \(reservation["Date"] as? String ?? "")")
            Text("Number of People: \(reservation["Number of People"] as? Int ?? 0)")

        }
    }

    
}


