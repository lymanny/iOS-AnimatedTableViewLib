import XCTest
@testable import AnimatedTableView

final class AnimatedTableViewTests: XCTestCase {
    var cell: UITableViewCell!
    
    // MARK: - Setup and Teardown
    override func setUpWithError() throws {
        try super.setUpWithError()
        cell = UITableViewCell()
    }
    
    override func tearDownWithError() throws {
        cell = nil
        try super.tearDownWithError()
    }
    
    // MARK: - Test Slide-In from Left Animation
    func testAnimateSlideInFromLeft() throws {
        let expectation = XCTestExpectation(description: "Slide-in from left animation completes")
        
        // Set initial state
        cell.transform = CGAffineTransform(translationX: -UIScreen.main.bounds.width, y: 0)
        
        // Perform the animation
        cell.animateSlideInFromLeft {
            // Assert that the transform is back to identity after the animation
            XCTAssertEqual(self.cell.transform, .identity, "Cell transform should be identity after slide-in animation")
            expectation.fulfill()
        }
        
        // Wait for the animation to complete
        wait(for: [expectation], timeout: 1.0)
    }
    
    // MARK: - Test Swipe-In from Bottom Right Animation
    func testAnimateSwipeInFromBottomRight() throws {
        let expectation = XCTestExpectation(description: "Swipe-in from bottom right animation completes")
        
        // Set initial state
        cell.alpha = 0
        cell.transform = CGAffineTransform(translationX: UIScreen.main.bounds.width, y: UIScreen.main.bounds.height)
        
        // Perform the animation
        cell.animateSwipeInFromBottomRight {
            // Assert that the transform is back to identity and alpha is 1
            XCTAssertEqual(self.cell.transform, .identity, "Cell transform should be identity after swipe-in animation")
            XCTAssertEqual(self.cell.alpha, 1, "Cell alpha should be 1 after swipe-in animation")
            expectation.fulfill()
        }
        
        // Wait for the animation to complete
        wait(for: [expectation], timeout: 1.0)
    }
}
