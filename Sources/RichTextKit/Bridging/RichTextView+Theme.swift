//
//  RichTextView+Theme.swift
//  RichTextKit
//
//  Created by Dominik Bucher on 13.02.2024.
//

#if iOS || macOS || os(tvOS) || os(visionOS)
import SwiftUI

public extension RichTextView {

    /// This type can configure a ``RichTextEditor`` theme.
    struct Theme {

        /// Create a custom configuration.
        ///
        /// - Parameters:
        ///   - font: default `.systemFont` of point size `16` (this differs on iOS and macOS).
        ///   - fontColor: default `.textColor`.
        ///   - backgroundColor: Color of whole textView default `.clear`.
        public init(
            font: FontRepresentable = NSFont(name: "Georgia", size: 16.5) ?? NSFont.systemFont(ofSize: 16.5),
            fontColor: ColorRepresentable = NSColor.white,
            backgroundColor: ColorRepresentable = .clear
        ) {
            self.font =  NSFont(name: "Georgia", size: 16.5) ?? NSFont.systemFont(ofSize: 16.5)
            self.fontColor = fontColor
            self.backgroundColor = backgroundColor
        }

        public let font: FontRepresentable
        public let fontColor: ColorRepresentable
        public let backgroundColor: ColorRepresentable
    }
}

public extension RichTextView.Theme {

    /// The standard rich text view theme.
    static var standard: Self { .init() }
}
#endif
