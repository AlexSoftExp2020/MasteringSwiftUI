//
//  InteractiveHeartButton.swift
//  MasteringSwiftUI
//
//  Created by Oleksii on 07.10.2024.
//

import SwiftUI

struct InteractiveHeartButton: View {
    @State private var colorChange = false
    @State private var sizeChange = false
    
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 200))
            .foregroundColor(colorChange ? .yellow : .red)
            .scaleEffect(sizeChange ? 1.5 : 1)
            .animation(.default)
            .onTapGesture {
                self.colorChange.toggle()
            }
            .onLongPressGesture {
                self.sizeChange.toggle()
            }
    }
}

#Preview {
    InteractiveHeartButton()
}
