//
//  FlagView.swift
//  Tab Bar
//
//  Created by Md Abir Hossain on 13-08-2023.
//

import SwiftUI

struct FlagView: View {
    var body: some View {
        VStack {
            Spacer()
//            Text("Flag")
            ScrollView(showsIndicators: false) {
                ForEach(0..<99) { index in
                    Text("\(index)")
                        .frame(maxWidth: .infinity, maxHeight: 150)
                        .font(.largeTitle.bold())
                        .background(Color.red)
                }
            }
            Spacer()
        }
    }
}

struct FlagView_Previews: PreviewProvider {
    static var previews: some View {
        FlagView()
    }
}
