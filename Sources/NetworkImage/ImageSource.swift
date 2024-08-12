import Foundation

@available(iOS 14, *)
struct ImageSource: Hashable, Sendable {
  let url: URL
  let scale: CGFloat
}
