//
//  ForgotpasswordViewController.swift
//  App project
//
//  Created by FCI-2171 on 07/10/24.
//

import UIKit

class ForgotpasswordViewController: UIViewController {
    
    var Backgroundimage = UIImageView()
    
    var label1 = UILabel()
    
    
    var Password = UITextField()
    var Conformed = UITextField()
    
    var submit = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Backgroundimage.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        Backgroundimage.image = UIImage(named: "Background image")
        view.addSubview(Backgroundimage)
        
        label1.frame = CGRect(x: self.view.frame.minX + 50, y: self.view.frame.maxY / 4, width: self.view.frame.width - 100, height: 30)
        label1.text = "Sign up your Account"
        label1.font = .boldSystemFont(ofSize: 60)
        label1.font = .systemFont(ofSize: 25)
        label1.textColor = .white
        label1.textAlignment = .center
        label1.layer.masksToBounds = true
        label1.contentMode = .scaleToFill
        view.addSubview(label1)

        Password.frame = CGRect(x: self.view.frame.minX + 40, y: self.label1.frame.minY + 80, width: self.view.frame.width - 80, height: 40)
        Password.placeholder = "   New Password "
        Password.attributedPlaceholder = NSAttributedString(string: Password.placeholder!,attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15)])
        Password.textColor = .black
        Password.backgroundColor = .white
        Password.textAlignment = .left
        Password.layer.cornerRadius = 10
        Password.layer.masksToBounds = true
        Password.contentMode = .scaleToFill
        view.addSubview(Password)
        
        Conformed.frame = CGRect(x: self.view.frame.minX + 40, y: self.Password.frame.minY + 80, width: self.view.frame.width - 80, height: 40)
        Conformed.placeholder = "   Confirm Password "
        Conformed.attributedPlaceholder = NSAttributedString(string: Conformed.placeholder!,attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15)])
        Conformed.textColor = .black
        Conformed.backgroundColor = .white
        Conformed.textAlignment = .left
        Conformed.layer.cornerRadius = 10
        Conformed.layer.masksToBounds = true
        Conformed.contentMode = .scaleToFill
        view.addSubview(Conformed)
        
        submit.frame = CGRect(x: self.view.frame.minX + 50, y: self.Password.frame.minY + 150, width: self.view.frame.width - 100, height: 40)
        submit.setTitle("Login", for: .normal)
        submit.setTitleColor(.black, for: .normal)
        submit.backgroundColor = .white
        submit.layer.borderWidth = 3
        submit.layer.borderColor = .init(red: 10, green: 10, blue: 10, alpha: 1)
        submit.layer.cornerRadius = 15
        submit.layer.masksToBounds = true
        submit.contentMode = .scaleAspectFill
        submit.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        view.addSubview(submit)
       
    }
    
    @objc func submitTapped(){
        
        let Viewcontroller = (UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginpageViewController")as? LoginpageViewController)!
        self.navigationController?.pushViewController(Viewcontroller, animated: true)
        
        
    }
    
}
