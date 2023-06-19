//
//  StadiumDetailView.swift
//  StadiumBooking
//
//  Created by Madusanka Waththaladeniya on 2023-06-17.
//


import SwiftUI

struct StadiumDetailView: View {
    let stadium: Stadium
    
    var body: some View {
        VStack {
            Text(stadium.name)
                .font(.largeTitle)
            
            Image(systemName: "photo") // Replace with actual stadium image
            
            Text("Location: \(stadium.location)")
            
            Text("Capacity: \(stadium.capacity)")
            
            Text("Availability: \(stadium.isAvailable ? "Available" : "Not Available")")
            
            // Add more details or booking options as needed
        }
        .navigationTitle("Stadium Details")
    }
}

struct StadiumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let stadium = Stadium(name: "Stadium A", location: "City A", capacity: 50000, isAvailable: true)
        StadiumDetailView(stadium: stadium)
    }
}
