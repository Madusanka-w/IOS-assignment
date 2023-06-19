//
//  AddStadiumView.swift
//  StadiumBooking
//
//  Created by Madusanka Waththaladeniya on 2023-06-17.
//

import SwiftUI

struct AddStadiumView: View {
    @State private var stadiumName = ""
    @State private var location = ""
    @State private var price = ""

    var body: some View {
        VStack {
            TextField("Stadium Name", text: $stadiumName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Location", text: $location)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Price", text: $price)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()

            Button(action: {
                // Perform action to add the stadium with the entered details
                addStadium()
            }) {
                Text("Add Stadium")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            
            Spacer()
        }
        .padding()
        .navigationTitle("Add Stadium")
    }
    
    func addStadium() {
        // Perform the actual logic to add the stadium
        // Access the entered details using `stadiumName`, `location`, and `price` variables
        // You can save the details to a database or perform any other necessary actions
    }
}

struct AddStadiumView_Previews: PreviewProvider {
    static var previews: some View {
        AddStadiumView()
    }
}
