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
                            Rectangle()
                                .fill(Color.clear)
                                
                                .frame(height: 60)
                                .overlay(
                                    HStack {
                            
                            

                                        Text(reservation["Dining Hall"] as? String ?? "Unknown Dining Hall")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            // Blue text
//                                        Spacer()
                                         // Blue text
//                                        Text("for")
//                                            .foregroundColor(.blue) // Blue text
//                                        Text("\(reservation["Number of People"] as? Int ?? 0)")
//                                            .foregroundColor(.blue) // Blue text
//                                            .fontWeight(.bold)
                                    }
                                        .padding(.leading)
                                        
                                )
                        }
                        
                            .background(
                                
                                Image("Screenshot 2023-09-16 at 11.18.25 PM")
                                    .resizable()
                                
                                    .frame(width: 350, height: 80)
                                
                            )
                            .padding(.vertical, 10)
                        
                        
                        
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
