//
//  Stadium.swift
//  StadiumBooking
//
//  Created by Madusanka Waththaladeniya on 2023-06-17.
//

import Foundation

struct Stadium: Identifiable {
    let id = UUID()
    let name: String
    let location: String
    let capacity: Int
    var isAvailable: Bool
}
