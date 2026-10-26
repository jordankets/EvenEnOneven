//
//  HeaderView.swift
//  headerviewtemplate
//
//  Created by jordan kets on 14/09/2026.
//

import SwiftUI

struct HeaderView: View {
    var title: String = "title"
    var subtitle: String = "subtitle"
    var desc: String = "Description"
    var back: Color = .blue
    var textColor: Color = .white
    
    init(_ title: String, subtitle: String, desc: String, back: Color = .blue, textColor: Color = .white) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        VStack(spacing: 15) {
            Text(title)
                .font(.largeTitle)
            Text(subtitle)
                .foregroundStyle(Color.gray)
            Text(desc)
                .frame(maxWidth: .infinity)
                .padding()
                .background(back)
                .foregroundStyle(textColor)
        }
        .font(.title)
        
    }
}

#Preview {
    HeaderView("title", subtitle: "subtitle", desc: "beschrijving")
}
