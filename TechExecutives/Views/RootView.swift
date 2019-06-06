//
//  RootView.swift
//  TechExecutives
//
//  Created by Bob Godwin Obi on 05.06.19.
//  Copyright © 2019 Bob Godwin Obi. All rights reserved.
//

import SwiftUI

struct RootView : View {
    var body: some View { List(APIClient.fetchFakeData()) { exec in
            ItemRowView(item: exec)
        }
    }
}

#if DEBUG
struct RootView_Previews : PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
#endif
