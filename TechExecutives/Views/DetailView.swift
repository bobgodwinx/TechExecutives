//
//  DetailView.swift
//  TechExecutives
//
//  Created by Bob Godwin Obi on 05.06.19.
//  Copyright © 2019 Bob Godwin Obi. All rights reserved.
//

import SwiftUI

struct DetailView : View {
    @State private var zoom = false
    var item: Executive
    var body: some View {
        VStack {
            ///exec image
            Image(item.imagePath)
                .resizable()
                .aspectRatio(contentMode: zoom ? .fill: .fit)
                .clipShape(Circle())
                //.scaledToFit()
                //.frame(width: 300.0, height: 300.0)
            /// other descriptions
            Text(item.name).font(.title)
            Text(item.shortDescription).font(.headline)
            Spacer().frame(height: 8.0)
            Text(item.description)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
        }
            .navigationBarTitle(Text(item.lastName), displayMode: .large).tapAction {
                withAnimation { self.zoom.toggle() }
            }
        .padding(.all, 8.0)
    }
}

#if DEBUG
struct DetailView_Previews : PreviewProvider {
    static var previews: some View {
        DetailView(item: Executive())
    }
}
#endif
