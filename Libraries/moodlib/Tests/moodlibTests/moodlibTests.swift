import Testing
@testable import moodlib

final class MoodLibTests: XCTestCase {
    
    func testGetMoods() {
        let moods = MoodLib.getMoods()
        XCTAssertFalse(moods.isEmpty, "Moods list should not be empty")
        XCTAssertTrue(moods.contains("Happy"), "Moods list should contain 'Happy'")
    }
    
    func testGetEmoji() {
        XCTAssertEqual(MoodLib.getEmoji(for: "Happy"), "😊", "Happy mood should return 😊")
        XCTAssertEqual(MoodLib.getEmoji(for: "Sad"), "😢", "Sad mood should return 😢")
        XCTAssertEqual(MoodLib.getEmoji(for: "Unknown"), "❓", "Unknown mood should return ❓")
    }
}
