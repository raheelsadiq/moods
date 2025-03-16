// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct MoodLib {
    
    // Returns a list of available moods
    public static func getMoods() -> [String] {
        return ["Happy", "Sad", "Angry", "Excited", "Calm", "Tired"]
    }
    
    // Returns an emoji for a given mood
    public static func getEmoji(for mood: String) -> String {
        let moodMap: [String: String] = [
            "Happy": "😊",
            "Sad": "😢",
            "Angry": "😡",
            "Excited": "🤩",
            "Calm": "😌",
            "Tired": "😴"
        ]
        return moodMap[mood] ?? "❓" // Default emoji if mood not found
    }
}
