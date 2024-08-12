import SwiftUI

@available(iOS 14, *)
extension View {
  /// Sets the image loader for network images within this view.
  public func networkImageLoader<T: NetworkImageLoader>(_ networkImageLoader: T) -> some View {
    environment(\.networkImageLoader, networkImageLoader)
  }
}

@available(iOS 14, *)
extension EnvironmentValues {
  var networkImageLoader: NetworkImageLoader {
    get { self[NetworkImageLoaderKey.self] }
    set { self[NetworkImageLoaderKey.self] = newValue }
  }
}

@available(iOS 14, *)
private struct NetworkImageLoaderKey: EnvironmentKey {
  static let defaultValue: NetworkImageLoader = .default
}
