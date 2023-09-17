//
//  MyReservations.swift
//  BoilerBites
//
//  Created by Sohil Bhatia on 9/16/23.
//

import SwiftUI

struct MyReservations: View {
    @ObservedObject var newReservation = NewReservation()

    var body: some View {
        NavigationView {
            List {
                ForEach(newReservation.reservations.keys.sorted(), id: \.self) { reservationKey in
                    if let reservation = newReservation.reservations[reservationKey] {
                        NavigationLink(destination: ReservationDetail(reservation: reservation)) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white) // White background
                                .frame(height: 60)
                                .overlay(
                                    HStack {
                                        Text(reservation["Dining Hall"] as? String ?? "Unknown Dining Hall")
                                            .foregroundColor(.blue) // Blue text
                                        Spacer()
                                        Text(reservation["Date"] as? String ?? "")
                                            .foregroundColor(.blue) // Blue text
                                        Text("for")
                                            .foregroundColor(.blue) // Blue text
                                        Text("\(reservation["Number of People"] as? Int ?? 0)")
                                            .foregroundColor(.blue) // Blue text
                                            .fontWeight(.bold)
                                    }
                                    .padding()
                                )
                        }
                    }
                }
            }
            .navigationTitle("My Reservations")
            .onAppear {
                newReservation.fetchReservations()
            }
        }
    }
}

struct MyReservations_Previews: PreviewProvider {
    static var previews: some View {
        MyReservations()
    }
}
