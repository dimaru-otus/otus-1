//
//  SpinnerView.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 09.09.2024.
//

import SwiftUI
import UIKit

struct SpinnerView: UIViewRepresentable {
    @State var title: String = ""
    typealias UIViewType = SwiftSpinner

    func makeUIView(context: Context) -> SwiftSpinner {
//        SwiftSpinner.addCircularProgress(to: view, title: "Searching\nfor Trident", verticalSizeClass: UITraitCollection.verticalSizeClass)
        let width = 200
        let spinner = SwiftSpinner(frame: CGRect(x: 0, y: 0, width: width, height: width))
        spinner.showBlurBackground = false
        spinner.titleLabel.textColor = .black
        let fontSize: CGFloat = 22
        let font = UIFont.systemFont(ofSize: fontSize)
        spinner.setTitleFont(font)
        spinner.outerColor = .systemTeal
        spinner.innerColor = .lightGray
//        spinner.show(in: view, title: title)
        return spinner
    }
    
    func updateUIView(_ uiView: SwiftSpinner, context: Context) {
        uiView.show(in: nil, title: title)
    }
}