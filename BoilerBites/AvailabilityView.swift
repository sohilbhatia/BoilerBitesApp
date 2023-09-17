import SwiftUI
import Firebase

struct AvailabilityView: View {
    var diningHall: String
    
    @State private var numberOfReservations: Int = 0
    @State private var showAlert: Bool = false
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    
    @State var selectedDate: Date = Date()
    
    var maximumDate: Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .day, value: 7, to: Date()) ?? Date()
    }
    
    var body: some View {
        VStack {
            Text(diningHall)
                .font(.title2)
                .fontWeight(.bold)
            HStack{
                DatePicker("Select Date", selection: $selectedDate, in: Date()...maximumDate, displayedComponents: .date)
                    .padding(.horizontal, 75)
                Spacer()
                
            }
            Button(action: {
              
                countReservations()
            }) {
                Text("Check Availability")
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: 300, height: 150)
                
        )
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text(alertTitle),
                message: Text(alertMessage),
                dismissButton: .default(Text("OK"))
            )
        }
        .background(
            Image("Screenshot 2023-09-16 at 11.44.02 PM")
                .resizable()
                .frame(width: 700, height: 900)
        )
        .edgesIgnoringSafeArea(.all)
    }
    
    func countReservations() {
        
        let ref = Database.database().reference()
        
        let hillenbrandRef = ref.child("Reservations").child(diningHall)

        hillenbrandRef.observeSingleEvent(of: .value) { (snapshot) in
            if snapshot.exists() {
                
                var reservationsOnDay = 0
                for child in snapshot.children {
                    if let childSnapshot = child as? DataSnapshot {
                        if let reservationData = childSnapshot.value as? [String: Any] {
                            
                            if let date = reservationData["Date"] as? String {
                                print(date)
                                let dateFormatter = DateFormatter()
                                dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
                                let newDate = dateFormatter.date(from: date)
                                let components = newDate!.get(.day, .month, .year)
                                let materials = selectedDate.get(.day, .month, .year)
                                let finalDay = components.day
                                if finalDay == materials.day {
                                    reservationsOnDay += 1
                                }
                            }
                        }
                    }
                }
                
              
                
                print(reservationsOnDay)
                
                if reservationsOnDay >= 3 {
                    
                    print("More than 3 ")
                    alertTitle = "We Booked"
                    alertMessage = "We're booked"
                    showAlert = true
                    
                    // Show the alert
                } else {
                    print("Less than 3")
                    alertTitle = "Open!"
                    alertMessage = "We're open!"
                    showAlert = true
                    
                }
            }
        }
    }
}

extension Date {
    func get(_ components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents {
        return calendar.dateComponents(Set(components), from: self)
    }

    func get(_ component: Calendar.Component, calendar: Calendar = Calendar.current) -> Int {
        return calendar.component(component, from: self)
    }
}

struct AvailabilityView_Previews: PreviewProvider {
    static var previews: some View {
        AvailabilityView(diningHall: "Hillenbrand")
    }
}
