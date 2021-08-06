//
//  ContentView.swift
//  DemoAppListView
//
//  Created by IOSDEV1 on 06/08/21.
//

import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video  in
                NavigationLink(destination: VideoDetail(video: video), label: {
                    videoCell(video: video)
                })
            }
            .navigationTitle("ListView")
        }
    }
}

struct videoCell: View {
    var video:Video
    
    var body: some View{
        HStack{
            Image(video.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(5)
                .padding(.vertical, 2)
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text(video.date)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
