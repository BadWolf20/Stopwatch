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

    private lazy var lapButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle(Strings.lapButtonTitle, for: .normal)
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.setTitleColor(.systemGray6, for: .normal)
        button.backgroundColor = .systemGray
        button.alpha = 0.45
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 35
        return button
    }()

    private lazy var startButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle(Strings.startButtonTitle, for: .normal)
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.setTitleColor(.systemBlue, for: .normal)
        button.backgroundColor = .systemGreen
        button.alpha = 0.45
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 35
        return button
    }()

    private lazy var pageController: UIPageControl = {
        var controller = UIPageControl()
        controller.numberOfPages = 2
        controller.currentPage = 0

        return controller
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
        view.addSubview(lapButton)
        view.addSubview(startButton)
        view.addSubview(pageController)
    }

    private func setupLayout() {
        timeLable.translatesAutoresizingMaskIntoConstraints = false
        timeLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timeLable.topAnchor.constraint(equalTo: view.topAnchor, constant: Metric.timeLabelTopOffSet).isActive = true

        lapButton.translatesAutoresizingMaskIntoConstraints = false
        //lapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -70).isActive = true
        lapButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        lapButton.topAnchor.constraint(equalTo: timeLable.bottomAnchor, constant: 150).isActive = true
        lapButton.heightAnchor.constraint(equalToConstant: Metric.lapButtonHeight).isActive = true
        lapButton.widthAnchor.constraint(equalToConstant: Metric.lapButtonHeight).isActive = true

        startButton.translatesAutoresizingMaskIntoConstraints = false
        //startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -70).isActive = true
        startButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        startButton.topAnchor.constraint(equalTo: timeLable.bottomAnchor, constant: 150).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: Metric.lapButtonHeight).isActive = true
        startButton.widthAnchor.constraint(equalToConstant: Metric.lapButtonHeight).isActive = true

        pageController.translatesAutoresizingMaskIntoConstraints = false
        pageController.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageController.centerYAnchor.constraint(equalTo: lapButton.centerYAnchor).isActive = true


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
        static let timeLabelTopOffSet: CGFloat = 180
        static let lapButtonTopOffSet: CGFloat = 30
        static let lapButtonHeight: CGFloat = 75

    }

    enum Strings {
        static let timeLabelText: String = "00:00:00"
        static let lapButtonTitle: String = "Lap"
        static let startButtonTitle: String = "Start"
    }
}
