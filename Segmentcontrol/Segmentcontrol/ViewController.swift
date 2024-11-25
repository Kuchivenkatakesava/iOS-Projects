//
//  ViewController.swift
//  Segmentcontrol
//
//  Created by FCI on 12/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentcontrol = UISegmentedControl(items:[ "Amaravathi","Bangalore","Chennai","Hyderabad"])
    var mainview = UIView()
    var imageview = UIImageView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        segmentcontrol.frame = CGRect(x: self.view.frame.minX + 30, y: self.view.frame.minY + 100, width: self.view.frame.width - 60, height: 50)
        
        segmentcontrol.selectedSegmentIndex = 0
        segmentcontrol.selectedSegmentTintColor = .white
        segmentcontrol.layer.cornerRadius = 30
        segmentcontrol.backgroundColor = .yellow
        
        segmentcontrol.addTarget(self, action: #selector(segmentchanged(_:)), for: .valueChanged)
        
        self.view.addSubview(segmentcontrol)
        
        let mainViewY = segmentcontrol.frame.maxY + 20
                mainview.frame = CGRect(x: 0, y: mainViewY, width: self.view.frame.width, height: self.view.frame.height - mainViewY)
        imageview.frame = mainview.bounds
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
                
                
                mainview.addSubview(imageview)
                view.addSubview(mainview)
                
    }

    @objc func segmentchanged(_ sender:UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
                case 0:
                    mainview.backgroundColor = .white
            imageview.image = UIImage(named: "Amaravathi")
                case 1:
                    mainview.backgroundColor = .yellow
            imageview.image = UIImage(named: "Bangalore")
                case 2:
                    mainview.backgroundColor = .black
            imageview.image = UIImage(named: "Chennai")
                case 3:
                    mainview.backgroundColor = .brown
            imageview.image = UIImage(named: "Hyderabad")
                default:
                    break
                }
    }

}

