//  Created by Raja Tamil www.on 2020-03-29.
//  Copyright © 2020 Raja Tamil. All rights reserved.
//  Visit www.softauthor.com for more.


import SwiftUI

struct LandmarkList: View {
    var landmarks = landmarksData
    var body: some View {
        NavigationView {
            List() {
                ForEach(CategoriesData) { category in
                    Section(header: Text(category.title)) {
                        ForEach(category.landmarks) { landmark in
                            LandmarkRow(landmark:landmark)
                        } // ForEach
                    } // Section
                } // ForEach
            }.navigationBarTitle(Text("Landmarks")) // List
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList(landmarks:landmarksData)
    }
}



struct LandmarkRow: View {
    var landmark:Landmark
    var body: some View {
        HStack {
            Image(landmark.thumbnailName).cornerRadius(8)
            VStack(alignment: .leading) {
                Text(landmark.title).bold()
                Text(landmark.country).foregroundColor(.gray)
            }
            Spacer()
            Image(landmark.flagName)
        }
    }
}
