//
//  ContentView.swift
//  Moods
//
//  Created by Raheel Sadiq on 16.03.25.
//

import SwiftUI
import moodlib

struct ContentView: View {
    @State private var selectedMood = MoodLib.getMoods().first ?? "Happy"

    var body: some View {
        VStack {
            // Top Half: Large Emoji Display
            Text(MoodLib.getEmoji(for: selectedMood))
                .font(.system(size: 100))
                .padding()
            
            Spacer()

            // Bottom Half: Mood Picker
            Picker("Select Your Mood", selection: $selectedMood) {
                ForEach(MoodLib.getMoods(), id: \.self) { mood in
                    Text(mood)
                }
            }
            .pickerStyle(WheelPickerStyle())
            .padding()
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
