//
//  VideoDetail.swift
//  DemoAppListView
//
//  Created by IOSDEV1 on 06/08/21.
//

import SwiftUI

struct VideoDetail: View {
    
    var video:Video
    
    var body: some View {
        VStack {
            Image(video.image)
                .resizable()
                .scaledToFill()
                .frame(width: 180, height: 180)
                .cornerRadius(10)
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
        }
    }
}

struct VideoDetail_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetail(video: VideoList.topTen.first!)
    }
}
