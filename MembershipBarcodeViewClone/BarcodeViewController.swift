//
//  BarcodeViewController.swift
//  MembershipBarcodeViewClone
//
//  Created by 강동영 on 11/24/24.
//

import UIKit

final class BarcodeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        let currentBrightness = UIScreen.main.brightness
        print("현재 밝기: \(currentBrightness)")
        
        // 밝기 조절 버튼 추가
        Brightness.allCases.forEach {
            let button = UIButton(type: .system)
            button.tag = $0.rawValue
            button.setTitle("\($0.description) 밝기 조절", for: .normal)
            button.addTarget(self, action: #selector(adjustBrightness), for: .touchUpInside)
            button.frame = CGRect(x: 50, y: 100 + (50 * $0.rawValue), width: 200, height: 50)
            view.addSubview(button)
        }
    }
    
    @objc func adjustBrightness(_ sender: UIButton) {
        guard let brigthness = Brightness(rawValue: sender.tag) else { return }
        UIScreen.main.brightness = brigthness.value
        print("밝기를 \(brigthness.description)로 설정했습니다.")
    }
}

extension BarcodeViewController {
    enum Brightness: Int, CaseIterable {
        case ten = 0
        case half
        case full
        
        var description: String {
            switch self {
            case .ten:
                "10%"
            case .half:
                "50%"
            case .full:
                "100%"
            }
        }
        
        var value: CGFloat {
            switch self {
            case .ten: 0.1
            case .half: 0.5
            case .full: 1.0
            }
        }
    }
}
