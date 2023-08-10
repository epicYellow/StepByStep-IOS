//
//  OnBoardModel.swift
//  StepByStep
//
//  Created by Reinhardt on 2022/10/30.
//

import Foundation

struct OnBoardData: Identifiable {
    let id = UUID()
    let tite : String
    let description : String
    let image : String
}

extension OnBoardData {
    static let all: [OnBoardData] = [
        OnBoardData(tite: "This is StepByStep", description: "The home of all things diy for outdoors! Make your home feel brand new by finding the project for you!", image: "testImage"),
        OnBoardData(tite: "Search projects", description: "Got a specific idea in mind? Feel free to search using the search bar at the top", image: "Search"),
        OnBoardData(tite: "Filter Categories", description: "Looking for a specific category of build? Got you covered. Click on one of the categories right underneath the searchbar. When done click the orange 'clear button'", image: "Filter"),
        OnBoardData(tite: "Switch to dark mode", description: "Put less strain on your eyes by turning on dark mode in settings, or turn on light mode", image: "DarkNLight")
    ]
}
