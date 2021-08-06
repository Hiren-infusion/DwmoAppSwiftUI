//
//  Video.swift
//  DemoAppListView
//
//  Created by IOSDEV1 on 06/08/21.
//

import SwiftUI

struct Video: Identifiable {
    var id = UUID()
    let image:String
    let title:String
    let date:String
}

struct VideoList {
    
    static let topTen = [
        Video(image: "images", title: "First video", date: "01/04/2021"),
        Video(image: "images-1", title: "Second video", date: "02/04/2021"),
        Video(image: "images-2", title: "Third video", date: "03/04/2021"),
        Video(image: "images-3", title: "Fourth video", date: "04/04/2021"),
        Video(image: "images-4", title: "Five video", date: "05/04/2021"),
        Video(image: "images-5", title: "Six video", date: "06/04/2021"),
        Video(image: "images-6", title: "Seven video", date: "07/04/2021"),
        Video(image: "images-7", title: "Eight video", date: "08/04/2021"),
        Video(image: "images-8", title: "Nine video", date: "09/04/2021"),
        Video(image: "images-9", title: "Ten video", date: "10/04/2021"),
        Video(image: "images-10", title: "Eleven video", date: "11/04/2021"),
        Video(image: "images-11", title: "Twelve video", date: "12/04/2021"),
        Video(image: "images-12", title: "Threen video", date: "13/04/2021"),
    ]
}
