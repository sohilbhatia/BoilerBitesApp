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
            List {
                NavigationLink(destination: MyReservations()) {
                    Text("My Reservations")
                }
                NavigationLink(destination: DetailView(title: "Hillenbrand")) {
                    Text("Hillenbrand")
                }
                NavigationLink(destination: DetailView(title: "Wiley")) {
                    Text("Wiley")
                }
                NavigationLink(destination: DetailView(title: "Windsor")) {
                    Text("Windsor")
                }
                NavigationLink(destination: DetailView(title: "Earhart")){
                    Text("Earhart")
                }
                NavigationLink(destination: DetailView(title: "Ford")){
                    Text("Ford")
                }
            }
            .navigationTitle("Your Dining Courts")
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
                NavigationLink(destination: ReservationView()) {
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
