//
//  SplashViewController.swift
//  ShortWeather
//
//  Created by Mac Book Pro on 2023/01/01.
//

import UIKit

import Lottie
import SnapKit
import Then

final class SplashViewController: UIViewController {
    
    // MARK: - UI Components
    
    private let splashImageView: LottieAnimationView = LottieAnimationView(name: "splash")
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
    }
}

extension SplashViewController {
    
    // MARK: - UI Components Property
    
    private func setUI() {
        view.backgroundColor = .white
        view.addSubview(splashImageView)
        
        splashImageView.do {
            $0.play { [weak self] _ in
                self?.isExistInform()
            }
        }
    }
    
    // MARK: - Layout Helper
    
    private func setLayout() {
        splashImageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    // MARK: - Methods
    
    private func isExistInform(){
        let isUser: Bool = false
        if isUser {
            UIViewController.modifyRootViewController(TodayWeatherViewController())
        } else {
            UIViewController.modifyRootViewController(FirstInfoViewController())
        }
    }
}
