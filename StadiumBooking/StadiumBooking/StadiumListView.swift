//
//  StadiumListView.swift
//  StadiumBooking
//
//  Created by Madusanka Waththaladeniya on 2023-06-17.
//

import SwiftUI

struct StadiumListView: View {
    let stadiums: [Stadium]
    
    var body: some View {
        List(stadiums) { stadium in
            Text(stadium.name)
        }
        .navigationTitle("Stadiums")
    }
}

struct StadiumListView_Previews: PreviewProvider {
    static var previews: some View {
        let stadiums = [
            Stadium(name: "Stadium A", location: "City A", capacity: 50000, isAvailable: true),
            Stadium(name: "Stadium B", location: "City B", capacity: 40000, isAvailable: false),
            Stadium(name: "Stadium C", location: "City C", capacity: 30000, isAvailable: true)
        ]
        
        StadiumListView(stadiums: stadiums)
    }
}
