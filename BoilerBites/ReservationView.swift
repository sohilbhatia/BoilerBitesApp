//
//  ReservationView.swift
//  BoilerBites
//
//  Created by Sohil Bhatia on 9/16/23.
//

import SwiftUI

struct ReservationView: View {
    @State var selectedDate: Date = Date()
    @State var name: String = ""
    @State var numberOfPeople: Int = 6
    @State var description: String = ""
    
    @StateObject
    var newRes = NewReservation()
    
    var maximumDate: Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .day, value: 7, to: Date()) ?? Date()
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            DatePicker("Select Date", selection: $selectedDate, in: Date()...maximumDate)
                .padding(.horizontal)
            
            TextField("Reservation Holder", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack {
                Text("Party of: ")
                Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(1 ..< 11) {
                            Text("\($0)")
                        }
                    }
            }
            TextField("Reservation Description", text: $description, axis: .vertical)
                        .lineLimit(3, reservesSpace: true)

                        .textFieldStyle(.roundedBorder)
                        .padding()
            Button("Submit Reservation") {
                newRes.pushNewReservation(holder: name, date: selectedDate, numOfPeople: numberOfPeople, description: description)

            }
            
        }
        .padding(.vertical, 200)
    }
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}
