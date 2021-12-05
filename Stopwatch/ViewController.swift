//
//  ViewController.swift
//  Stopwatch
//
//  Created by Roman on 05.12.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Components

    private lazy var timeLable: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: Metric.timeLabelFontSize)
        label.text = Strings.timeLabelText
        label.textColor = Colors.timeLableFontColor
        return label
    }()



    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        setupLayout()
        setupView()
    }

    // MARK: - Settings
    private func setupHierarchy() {
        view.addSubview(timeLable)
    }

    private func setupLayout() {
        timeLable.translatesAutoresizingMaskIntoConstraints = false
        timeLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timeLable.topAnchor.constraint(equalTo: view.topAnchor, constant: Metric.timeLabelTopOffSet).isActive = true
    }

    private func setupView() {
        view.backgroundColor = .black
    }

    // MARK: - Actions


}

// MARK: - Constants

extension ViewController{
    enum Colors {
        static let timeLableFontColor: UIColor = .white
    }

    enum Metric {

        static let timeLabelFontSize: CGFloat = 80
        
        static let textFieldFontSize: CGFloat = 17

        static let timeLabelTopOffSet: CGFloat = 180

        static let textFieldTopOffSet: CGFloat = 40
        static let buttonTopOffSet: CGFloat = 30
        static let buttonHeight: CGFloat = 40
        static let buttonWeightMultiply: CGFloat = 0.8

    }

    enum Strings {
        static let timeLabelText: String = "00:00:00"
        static let lapButtonTitle: String = "Lap"

        static let textFieldPlaceHolder: String = "Enter Name"
    }
}
