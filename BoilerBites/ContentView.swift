//
//  ContentView.swift
//  BoilerBites
//
//  Created by Sohil Bhatia on 9/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            VStack{
                Text("Your Dining Courts")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.top)
                ScrollView {
                    NavigationLink(destination: HillenbrandDisplay(title: "Hillenbrand")) {
                        VStack{
                            Text("")
                            Image("Screenshot 2023-09-16 at 5.25.25 PM")
                                .resizable()
                                .frame(width: 350, height: 292)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }
                        
                    }
                    
                    NavigationLink(destination: WileyDisplay(title: "Wiley")) {
                        VStack{
                            Text("")
                            Image("Screenshot 2023-09-16 at 5.32.08 PM")
                                .resizable()
                                .frame(width: 350, height: 292)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }
                        
                        
                        
                    }
                    NavigationLink(destination: WindsorDisplay(title: "Windsor")) {
                        VStack{
                            Text("")
                            Image("Screenshot 2023-09-16 at 5.43.20 PM")
                                .resizable()
                                .frame(width: 350, height: 292)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }
                    }
                    NavigationLink(destination: EarhartDisplay(title: "Earhart")){
                        VStack{
                            Text("")
                            Image("Screenshot 2023-09-16 at 5.50.59 PM")
                                .resizable()
                                .frame(width: 350, height: 292)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }
                    }
                    NavigationLink(destination: FordDisplay(title: "Ford")){
                        VStack{
                            Text("")
                            Image("Screenshot 2023-09-16 at 5.53.33 PM")
                                .resizable()
                                .frame(width: 350, height: 292)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }
                    }
                    
                }
            }
        }
    }
}

struct DetailView: View {
    var title: String
    
    var body: some View {
        VStack{
            Text("")
                .font(.largeTitle)
                .padding()
                .navigationTitle(title)
            
            Spacer()
            HStack{
                NavigationLink(destination: AvailabilityView(diningHall: title)) {
                    Text("Check Availability")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                NavigationLink(destination: ReservationView(diningHall: title)) {
                    Text("Make a Reservation")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
            }
            if (title == "Hillenbrand"){
                NavigationLink(destination: HillenbrandHoursView()) {
                    Text("See Hours")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
                }
            }
            else if (title == "Ford"){
                NavigationLink(destination: FordHoursView()) {
                    Text("See Hours")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
                }
            }
            if (title == "Earhart"){
                NavigationLink(destination: EarhartHoursView()) {
                    Text("See Hours")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
                }
            }
            if (title == "Windsor"){
                NavigationLink(destination: WindsorHoursView()) {
                    Text("See Hours")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
                }
            }
            if (title == "Wiley"){
                NavigationLink(destination: WileyHoursView()) {
                    Text("See Hours")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
                }
            }
            
        }
        
    }
}

struct myView: View {
    var body: some View {
        VStack{
            Text("oeidjfoeiwjf")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    




struct HillenbrandDisplay: View {
    var title: String
    
    var body: some View{
        VStack{
            Text("Hillenbrand Dining Court")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            NavigationLink(destination: ReservationView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 6.10.36 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            NavigationLink(destination: AvailabilityView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 6.12.56 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            
            
            
            NavigationLink(destination: HillenbrandHoursView()) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 6.16.43 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
                
                
            }
            Spacer()
        }
        
    }
}

struct EarhartDisplay: View {
    var title: String
    var body: some View{
        VStack{
            Text("Earhart Dining Court")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            NavigationLink(destination: ReservationView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 6.28.53 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            NavigationLink(destination: AvailabilityView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 6.26.15 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            
            
            
            NavigationLink(destination: EarhartHoursView()) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 6.24.09 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
                
                
            }
            Spacer()
        }
        
    }
}

struct WileyDisplay: View {
    var title: String
    var body: some View{
        VStack{
            Text("Wiley Dining Court")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            NavigationLink(destination: ReservationView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 6.31.47 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            NavigationLink(destination: AvailabilityView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 6.40.48 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            
            
            
            NavigationLink(destination: WileyHoursView()) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 6.43.42 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
                
                
            }
            Spacer()
        }
        
    }
}

struct WindsorDisplay: View {
    var title: String
    var body: some View{
        VStack{
            Text("Windsor Dining Court")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            NavigationLink(destination: ReservationView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 8.00.35 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            NavigationLink(destination: AvailabilityView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 7.57.09 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            
            
            
            NavigationLink(destination: WindsorHoursView()) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 7.53.06 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
                
                
            }
            Spacer()
        }
        
    }
}

struct FordDisplay: View {
    var title: String
    var body: some View{
        VStack{
            Text("Ford Dining Court")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            NavigationLink(destination: ReservationView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 8.09.47 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            NavigationLink(destination: AvailabilityView(diningHall: title)) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 8.12.07 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            }
            
            
            
            NavigationLink(destination: FordHoursView()) {
                VStack{
                    Text("")
                    Image("Screenshot 2023-09-16 at 8.13.35 PM")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
                
                
            }
            Spacer()
        }
        
    }
}











struct HillenbrandHoursView: View {
    @State private var selectedOption = 0
    let options = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var body: some View {
        VStack{
            if selectedOption==0{
                VStack{
                    Text("Brunch: 10:00 AM - 4:00 PM")
                }
            }
            else if selectedOption==1{
                VStack{
                    
                        Text("Lunch: 12:00 PM - 2:00 PM")
                        Text("Late Lunch: 2:00 AM - 5:00 PM")
                        Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==2{
                VStack{
                    Text("Lunch: 12:00 PM - 2:00 PM")
                    Text("Late Lunch: 2:00 AM - 5:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==3{
                VStack{
                    Text("Lunch: 12:00 PM - 2:00 PM")
                    Text("Late Lunch: 2:00 AM - 5:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==4{
                VStack{
                    Text("Lunch: 12:00 PM - 2:00 PM")
                    Text("Late Lunch: 2:00 AM - 5:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==5{
                VStack{
                    Text("Closed")
                }
            }
            else if selectedOption==6{
                VStack{
                    Text("Closed")
                }
            }
            
            
            
            Spacer()
            Picker("Select an Option", selection: $selectedOption){
                ForEach(0..<options.count, id: \.self) {index in
                    Text(options[index])
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding(.top, 20)
            
            
            
        }
        
    }
}

struct EarhartHoursView: View {
    @State private var selectedOption = 0
    let options = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var body: some View {
        VStack{
            if selectedOption==0{
                VStack{
                    Text("Lunch: 10:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Earhart On-the-GO!")
                    Text("Closed")
                }
            }
            else if selectedOption==1{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Earhart On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==2{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Earhart On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==3{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Earhart On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==4{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Earhart On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==5{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Earhart On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            
            else if selectedOption==6{
                VStack{
                    Text("Lunch: 10:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Earhart On-the-GO!")
                    Text("Closed")
                }
            }
            
            
            Spacer()
            Picker("Select an Option", selection: $selectedOption){
                ForEach(0..<options.count, id: \.self) {index in
                    Text(options[index])
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding(.top, 20)
            
            
            
        }
        
    }
}


struct WileyHoursView: View {
    @State private var selectedOption = 0
    let options = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var body: some View {
        VStack{
            if selectedOption==0{
                VStack{
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==1{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==2{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==3{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==4{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==5{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            else if selectedOption==6{
                VStack{
                    
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                }
            }
            
            
            
            Spacer()
            Picker("Select an Option", selection: $selectedOption){
                ForEach(0..<options.count, id: \.self) {index in
                    Text(options[index])
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding(.top, 20)
            
            
            
        }
        
    }
}


struct WindsorHoursView: View {
    @State private var selectedOption = 0
    let options = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var body: some View {
        VStack{
            if selectedOption==0{
                VStack{
                    
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Windsor On-the-GO!")
                    Text("Closed")
                }
            }
            else if selectedOption==1{
                VStack{
                    
                    Text("Lunch: 10:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 5:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Windsor On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==2{
                VStack{
                    Text("Lunch: 10:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 5:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Windsor On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==3{
                VStack{
                    Text("Lunch: 10:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 5:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Windsor On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==4{
                VStack{
                    Text("Lunch: 10:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 5:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Windsor On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==5{
                VStack{
                    Text("Lunch: 10:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 4:00 PM")
                    
                    Text("")
                    Text("Windsor On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==6{
                VStack{
                    
                    Text("Late Lunch: 2:00 PM - 5:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Windsor On-the-GO!")
                    Text("Closed")
                }
            }
            
            
            
            Spacer()
            Picker("Select an Option", selection: $selectedOption){
                ForEach(0..<options.count, id: \.self) {index in
                    Text(options[index])
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding(.top, 20)
            
            
            
        }
        
    }
}

struct FordHoursView: View {
    @State private var selectedOption = 0
    let options = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var body: some View {
        VStack{
            if selectedOption==0{
                VStack{
                    Text("Breakfast: 8:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Ford On-the-GO!")
                    Text("Closed")
                }
            }
            else if selectedOption==1{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 4:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Ford On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==2{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 4:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Ford On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==3{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 4:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Ford On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==4{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 4:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Ford On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==5{
                VStack{
                    Text("Breakfast: 7:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("Late Lunch: 2:00 PM - 4:00 PM")
                    Text("Dinner: 5:00 PM - 9:00 PM")
                    Text("")
                    Text("Ford On-the-GO!")
                    Text("Breakfast/Lunch: 6:30 AM - 5:00 PM")
                }
            }
            else if selectedOption==6{
                VStack{
                    Text("Breakfast: 8:00 AM - 10:00 AM")
                    Text("Lunch: 11:00 AM - 2:00 PM")
                    Text("")
                    Text("Ford On-the-GO!")
                    Text("Closed")
                }
            }
            
            
            
            Spacer()
            Picker("Select an Option", selection: $selectedOption){
                ForEach(0..<options.count, id: \.self) {index in
                    Text(options[index])
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding(.top, 20)
            
            
            
        }
        
    }
}
