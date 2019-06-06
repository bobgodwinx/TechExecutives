//
//  ItemRowView.swift
//  TechExecutives
//
//  Created by Bob Godwin Obi on 06.06.19.
//  Copyright © 2019 Bob Godwin Obi. All rights reserved.
//

import SwiftUI

struct ItemRowView : View {
    
    var item: Executive
    
    var body: some View {
        HStack{
            Image(item.imagePath)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaledToFit()
                .frame(width: 88.0, height: 88.0)
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.title)
                Text(item.shortDescription)
            }
            Spacer()
            }
            .padding(.all, 8.0)
    }
}

#if DEBUG
struct ItemRowView_Previews : PreviewProvider {
    static var previews: some View {
        ItemRowView(item: Executive())
    }
}
#endif
