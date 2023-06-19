//
//  StadiumFormView.swift
//  StadiumBooking
//
//  Created by Madusanka Waththaladeniya on 2023-06-17.
//

import SwiftUI

struct StadiumFormView: View {
    @State private var stadiumName = ""
    @State private var stadiumLocation = ""
    @State private var stadiumCapacity = ""
    @State private var isStadiumAvailable = true
    
    var body: some View {
        Form {
            Section(header: Text("Stadium Information")) {
                TextField("Name", text: $stadiumName)
                TextField("Location", text: $stadiumLocation)
                TextField("Capacity", text: $stadiumCapacity)
                    .keyboardType(.numberPad)
                Toggle("Availability", isOn: $isStadiumAvailable)
            }
            
            Section {
                Button(action: addStadium) {
                    Text("Add Stadium")
                }
            }
        }
        .navigationTitle("Add Stadium")
    }
    
    private func addStadium() {
        
        
        // Example code to print the entered values
        print("Name: \(stadiumName)")
        print("Location: \(stadiumLocation)")
        print("Capacity: \(stadiumCapacity)")
        print("Availability: \(isStadiumAvailable)")
        
        // Clear the form fields
        stadiumName = ""
        stadiumLocation = ""
        stadiumCapacity = ""
        isStadiumAvailable = true
    }
}

struct StadiumFormView_Previews: PreviewProvider {
    static var previews: some View {
        StadiumFormView()
    }
}
