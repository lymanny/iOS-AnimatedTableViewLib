
# AnimatedTableView 🚀

## 📚 Overview

`AnimatedTableView` provides a set of predefined animations that can be easily applied to your `UITableViewCell`. These animations include sliding, fading, scaling, bouncing, flipping, and more, to enhance user experience in your iOS apps.

---

### 📋 Requirements

- iOS 13.0+
- Xcode 12.0+
- Swift 5.0+

---

### 🎥 Demo

| animateFlip | animateJiggle |
|-------------|---------------|
| ![animateFlip](https://github.com/user-attachments/assets/262756c1-3485-4e09-ace4-f8599512e282) | ![animateJiggle](https://github.com/user-attachments/assets/2bc66023-e9ea-40e9-b534-334caa27c3c1) |

---

## 📦 Installation

### Swift Package Manager (SPM)

You can easily integrate `AnimatedTableView` into your project using Swift Package Manager:

1. In Xcode, go to **File > Add Packages**.
2. Enter the repository URL:
   ```
   https://github.com/lymanny/iOS-AnimatedTableViewLib.git
   ```
3. Select the latest version and add it to your project.

Alternatively, you can add the package manually by including the following line in your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/lymanny/iOS-AnimatedTableViewLib.git", from: "1.0.0")
]
```

---

## 🛠️ Usage

Make sure to import the library:
```swift
import AnimatedTableView
```

### In your `UITableView`'s `cellForRowAt` method:
```swift
cell.animateFlip(delay: 0.05 * Double(indexPath.row)) {
    print("animation completed for row \(indexPath.row)")
}
```

### In your `UITableView`'s `didSelectRowAt` method:
```swift
if let cell = tableView.cellForRow(at: indexPath) {
    cell.animateJiggle {
        print("Jiggle animation completed for row \(indexPath.row)")
    }
}
```

---

## Available Animations

1. **Slide-In from Left**: Slides the cell in from the left side of the screen.
   ```swift
   cell.animateSlideInFromLeft()
   ```
2. **Slide-In from Right**: Slides the cell in from the right side of the screen.
   ```swift
   cell.animateSlideInFromRight()
   ```
3. **Slide-In from Top**: Slides the cell in from the top of the screen.
   ```swift
   cell.animateSlideInFromTop()
   ```
4. **Move Up with Fade**: Moves the cell up while fading it in.
   ```swift
   cell.animateMoveUpWithFade()
   ```
5. **Move Up with Bounce**: Moves the cell up with a bounce effect.
   ```swift
   cell.animateMoveUpWithBounce()
   ```
6. **Fade-In**: Fades the cell in smoothly.
   ```swift
   cell.animateFadeIn()
   ```
7. **Zoom-In**: Applies a zoom-in effect to the cell.
   ```swift
   cell.animateZoomIn()
   ```
8. **Shake Animation**: Shakes the cell horizontally.
   ```swift
   cell.animateShake()
   ```
9. **Bounce Animation**: Applies a bounce effect to the cell.
   ```swift
   cell.animateBounce()
   ```
10. **Flip Animation**: Flips the cell for a dramatic entrance.
    ```swift
    cell.animateFlip()
    ```
11. **Rotate Animation**: Rotates the cell to a specified angle.
    ```swift
    cell.animateRotate()
    ```
12. **Heartbeat Animation**: Pulsates the cell like a heartbeat.
    ```swift
    cell.animateHeartbeat()
    ```
13. **Swing Animation**: Swings the cell back and forth.
    ```swift
    cell.animateSwingRecursively()
    ```
14. **Pop Animation**: Adds a pop effect to the cell.
    ```swift
    cell.animatePop()
    ```
15. **Scale Animation**: Scales the cell up or down.
    ```swift
    cell.animateScale()
    ```
16. **Fade-Out Animation**: Fades the cell out.
    ```swift
    cell.animateFadeOut()
    ```
17. **Slide Left Animation**: Slides the cell out to the left.
    ```swift
    cell.animateSlideLeft()
    ```
18. **Jiggle Animation**: Applies a jiggle effect to the cell.
    ```swift
    cell.animateJiggle()
    ```
19. **Pulse Animation**: Pulsates the cell briefly.
    ```swift
    cell.animatePulse()
    ```
20. **Shake Vertically**: Shakes the cell vertically.
    ```swift
    cell.animateShakeVertical()
    ```
21. **Expand Animation**: Expands the cell and returns to original size.
    ```swift
    cell.animateExpand()
    ```
22. **Swipe-In from Bottom Right**: Slides the cell in from the bottom-right corner.
    ```swift
    cell.animateSwipeInFromBottomRight()
    ```

---

## 📚 Sources

- **Apple Developer Documentation**
  - [UIView.animate](https://developer.apple.com/documentation/uikit/uiview/1622592-animatewithduration) - Used for animating transformations like sliding, fading, scaling, and bouncing.
  - [CAKeyframeAnimation](https://developer.apple.com/documentation/quartzcore/cakeyframeanimation) - Utilized for creating shake and jiggle animations.
  - [CGAffineTransform](https://developer.apple.com/documentation/coregraphics/cgaffinetransform) - Applied for transformations such as slide-in, zoom-in, rotate, and flip effects.

- **UIKit Techniques**
  - [Spring Animations](https://developer.apple.com/documentation/uikit/uiview/1622592-animatewithduration) - Used for smooth bounce and pop animations.
  - [Keyframe Animations](https://developer.apple.com/documentation/uikit/uiview/1622591-animatekeyframes) - For implementing heartbeat and swing effects.

## Contributing 🤝
Contributions are welcome! Please feel free to submit issues, fork the repository, and create pull requests.

## License 📄
This project is licensed under the [MIT License](LICENSE).

## Author 👩‍💻
lymanny - iOS Developer  
🌐 [Portfolio](https://lymanny.onrender.com)
