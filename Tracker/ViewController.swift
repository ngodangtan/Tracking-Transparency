//
//  ViewController.swift
//  Tracker
//
//  Created by Ngo Dang tan on 26/02/2021.
//

import UIKit
import AppTrackingTransparency

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Get Permission", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton(){
        ATTrackingManager.requestTrackingAuthorization { status in
            switch status {
            
            case .notDetermined:
                break
            case .restricted:
                break
            case .denied:
                break
            case .authorized:
                print("Allowed")
                break
            @unknown default:
                break
            }
        }
    }


}

