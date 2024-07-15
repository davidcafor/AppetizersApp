//
//  APButtons.swift
//  AppetizersApp
//
//  Created by David Cardeña on 15/7/24.
//

import SwiftUI

struct APButtons: View {
    
    let title: LocalizedStringResource
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimarySwiftUI)
            .cornerRadius(10)
    }
}

#Preview {
    APButtons(title: "Titulo")
}
