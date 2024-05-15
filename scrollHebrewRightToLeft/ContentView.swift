//
//  ContentView.swift
//  scrollHebrewRightToLeft
//
//  Created by Steven Hertz on 5/15/24.
//

import SwiftUI

import SwiftUI

struct HebrewAlphabetScrollView: View {
    // Array of the Hebrew alphabet
    let hebrewAlphabet = [
        "א", "ב", "ג", "ד", "ה", "ו", "ז", "ח", "ט", "י",
        "כ", "ל", "מ", "נ", "ס", "ע", "פ", "צ", "ק", "ר", "ש", "ת"
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(hebrewAlphabet, id: \.self) { letter in
                    Text(letter)
                        .font(.largeTitle)
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .environment(\.layoutDirection, .rightToLeft)
    }
}

struct HebrewAlphabetScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HebrewAlphabetScrollView()
    }
}

