import Combine
import Foundation

// NB: Unavailable in 3.0.0

@available(*, unavailable, renamed: "NetworkImageCache")
public protocol ImageCache: AnyObject {
  func image(for url: URL) -> OSImage?
  func setImage(_ image: OSImage, for url: URL)
}

@available(*, unavailable, renamed: "NetworkImageCache")
public final class ImmediateImageCache: ImageCache {
  public func image(for _: URL) -> OSImage? {
    nil
  }

  public func setImage(_: OSImage, for _: URL) {}
}

@available(*, unavailable, renamed: "NetworkImageLoader")
public final class ImageDownloader {
  public static let shared = ImageDownloader(
    session: .imageLoading,
    imageCache: ImmediateImageCache()
  )

  public init(session _: URLSession, imageCache _: ImageCache) {}

  public func image(for _: URL) -> AnyPublisher<OSImage, Error> {
    fatalError("Unavailable")
  }
}

extension NetworkImage {
  @available(*, unavailable, renamed: "networkImageScheduler")
  public func synchronous() -> NetworkImage {
    fatalError("Unavailable")
  }
}