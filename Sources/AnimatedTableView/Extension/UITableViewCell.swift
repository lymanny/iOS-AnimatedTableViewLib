//
//  UITableViewCell.swift
//  AnimatedTableView
//
//  Created by lymanny on 16/11/24.
//

import UIKit

public extension UITableViewCell {
    
    // MARK: - Slide-In from Left Animation
    func animateSlideInFromLeft(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.transform = CGAffineTransform(translationX: -UIScreen.main.bounds.width, y: 0)
        UIView.animate(withDuration: 0.5, delay: delay, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Slide-In from Right Animation
    func animateSlideInFromRight(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.transform = CGAffineTransform(translationX: UIScreen.main.bounds.width, y: 0)
        UIView.animate(withDuration: 0.5, delay: delay, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Slide-In from Top Animation
    func animateSlideInFromTop(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.transform = CGAffineTransform(translationX: 0, y: -UIScreen.main.bounds.height)
        UIView.animate(withDuration: 0.6, delay: delay, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Move Up with Fade Animation
    func animateMoveUpWithFade(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.alpha = 0
        self.transform = CGAffineTransform(translationX: 0, y: 20)
        UIView.animate(withDuration: 0.5, delay: delay, options: .curveEaseInOut, animations: {
            self.alpha = 1
            self.transform = .identity
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Move Up with Bounce Animation
    func animateMoveUpWithBounce(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.transform = CGAffineTransform(translationX: 0, y: 20)
        UIView.animate(withDuration: 0.6, delay: delay, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Fade-In Animation
    func animateFadeIn(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.alpha = 0
        UIView.animate(withDuration: 0.5, delay: delay, options: .curveEaseInOut, animations: {
            self.alpha = 1
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Zoom-In Animation
    func animateZoomIn(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 0.4, delay: delay, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Shake Animation
    func animateShake(delay: Double = 0, completion: (() -> Void)? = nil) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            let shake = CAKeyframeAnimation(keyPath: "transform.translation.x")
            shake.timingFunction = CAMediaTimingFunction(name: .linear)
            shake.duration = 0.5
            shake.values = [-10, 10, -8, 8, -5, 5, 0]
            self.layer.add(shake, forKey: "shake")
            
            DispatchQueue.main.asyncAfter(deadline: .now() + shake.duration) {
                completion?()
            }
        }
    }
    
    // MARK: - Bounce Animation
    func animateBounce(delay: Double = 0, completion: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.6, delay: delay, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.transform = CGAffineTransform(translationX: 0, y: -20)
        }, completion: { _ in
            UIView.animate(withDuration: 0.3, animations: {
                self.transform = .identity
            }, completion: { _ in
                completion?()
            })
        })
    }
    
    // MARK: - Flip Animation
    func animateFlip(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.layer.transform = CATransform3DMakeRotation(.pi, 0, 1, 0)
        UIView.animate(withDuration: 0.6, delay: delay, options: .curveEaseInOut, animations: {
            self.layer.transform = CATransform3DIdentity
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Rotate Animation
    func animateRotate(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        UIView.animate(withDuration: 0.5, delay: delay, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Heartbeat Animation
    func animateHeartbeat(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animateKeyframes(withDuration: 0.6, delay: delay, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.3) {
                self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.3) {
                self.transform = .identity
            }
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Swing Animation with Recursive Approach
    func animateSwingRecursively(times: Int = 2, delay: Double = 0, completion: (() -> Void)? = nil) {
        guard times > 0 else {
            UIView.animate(withDuration: 0.1) {
                self.transform = .identity
            }
            completion?()
            return
        }
        
        UIView.animate(withDuration: 0.3, delay: delay, options: [.autoreverse], animations: {
            self.transform = CGAffineTransform(rotationAngle: 0.05)
        }) { _ in
            self.transform = CGAffineTransform(rotationAngle: -0.05)
            self.animateSwingRecursively(times: times - 1, completion: completion)
        }
    }
    
    // MARK: - Pop Animation
    func animatePop(delay: Double = 0, completion: (() -> Void)? = nil) {
        self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        UIView.animate(withDuration: 0.3, delay: delay, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: { _ in
            completion?()
        })
    }
    
    // MARK: - Bounce Animation
    func animateBounce(completion: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { _ in
            UIView.animate(withDuration: 0.1, animations: {
                self.transform = .identity
            }, completion: { _ in
                completion?() // Call the completion handler if provided
            })
        }
    }
    
    // MARK: - Scale Animation
    func animateScale(completion: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseInOut], animations: {
            self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }) { _ in
            UIView.animate(withDuration: 0.2, animations: {
                self.transform = .identity
            }, completion: { _ in
                completion?() // Call the completion handler if provided
            })
        }
    }
    
    // MARK: - Fade-Out Animation
    func animateFadeOut(completion: @escaping () -> Void) {
        let originalColor = self.backgroundColor // Store the original background color
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0
        }) { _ in
            self.alpha = 1
            self.backgroundColor = originalColor // Restore original color
            completion()
        }
    }
    
    // MARK: - Slide Left Animation
    func animateSlideLeft(completion: @escaping () -> Void) {
        let originalColor = self.backgroundColor
        UIView.animate(withDuration: 0.3, animations: {
            self.transform = CGAffineTransform(translationX: -self.bounds.width, y: 0)
        }) { _ in
            self.transform = .identity
            self.backgroundColor = originalColor // Restore original color
            completion()
        }
    }
    
    // MARK: - Rotate Animation
    func animateRotate(completion: @escaping () -> Void) {
        let originalColor = self.backgroundColor
        UIView.animate(withDuration: 0.3, animations: {
            self.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4)
            self.alpha = 0
        }) { _ in
            self.transform = .identity
            self.alpha = 1
            self.backgroundColor = originalColor // Restore original color
            completion()
        }
    }
    
    // MARK: - Jiggle Animation
    func animateJiggle(completion: (() -> Void)? = nil) {
        let animation = CAKeyframeAnimation(keyPath: "transform.rotation")
        animation.values = [-0.05, 0.05, -0.05]
        animation.autoreverses = true
        animation.repeatCount = 4
        animation.duration = 0.1
        self.layer.add(animation, forKey: "jiggle")
        completion?()
    }
    
    // MARK: - Pulse Animation
    func animatePulse(completion: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.2, animations: {
            self.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        }) { _ in
            UIView.animate(withDuration: 0.2) {
                self.transform = .identity
            }
            completion?()
        }
    }
    
    // MARK: - Shake Vertically Animation
    func animateShakeVertical(completion: (() -> Void)? = nil) {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.y")
        animation.timingFunction = CAMediaTimingFunction(name: .linear)
        animation.duration = 0.4
        animation.values = [-10, 10, -8, 8, -5, 5, 0]
        self.layer.add(animation, forKey: "shakeVertical")
        completion?()
    }
    
    // MARK: - Expand Animation
    func animateExpand(completion: (() -> Void)? = nil) {
        self.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: { _ in completion?() })
    }
    
    // MARK: - Swipe-In from Bottom Right
    func animateSwipeInFromBottomRight(completion: (() -> Void)? = nil) {
        self.alpha = 0
        self.transform = CGAffineTransform(translationX: UIScreen.main.bounds.width, y: UIScreen.main.bounds.height)
        UIView.animate(withDuration: 0.5, animations: {
            self.alpha = 1
            self.transform = .identity
        }, completion: { _ in completion?() })
    }
    
}
