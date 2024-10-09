//
//  LoginpageViewController.swift
//  App project
//
//  Created by FCI-2171 on 07/10/24.
//

import UIKit

class LoginpageViewController: UIViewController {
    
    var Backgroundimage = UIImageView()
    
    var Loginlabel = UILabel()
    var label1 = UILabel()
    var label2 = UILabel()
    
    var Fullname = UITextField()
    var Password = UITextField()
    
    var Rememberme = UIButton()
    var forgot = UIButton()
    var login = UIButton()
    var signup = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Backgroundimage.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        Backgroundimage.image = UIImage(named: "Background image")
        view.addSubview(Backgroundimage)
        
        Loginlabel.frame = CGRect(x: self.view.frame.minX + 40, y: self.view.frame.maxY / 3 , width: self.view.frame.width - 80, height: 100)
        Loginlabel.text = "Welcome Back"
        Loginlabel.textColor = .white
        Loginlabel.textAlignment = .center
        Loginlabel.font = .boldSystemFont(ofSize: 40)
        Loginlabel.layer.masksToBounds = true
        Loginlabel.contentMode = .scaleToFill
        view.addSubview(Loginlabel)
        
        label1.frame = CGRect(x: self.view.frame.minX + 50, y: self.Loginlabel.frame.minY + 70, width: self.view.frame.width - 100, height: 30)
        label1.text = "Login to your account"
        label1.font = .boldSystemFont(ofSize: 20)
        label1.font = .systemFont(ofSize: 20)
        label1.textColor = .white
        label1.textAlignment = .center
        label1.layer.masksToBounds = true
        label1.contentMode = .scaleToFill
        view.addSubview(label1)
        
        Fullname.frame = CGRect(x: self.view.frame.minX + 40, y: self.label1.frame.minY + 80, width: self.view.frame.width - 80, height: 40)
        Fullname.placeholder = "   Enter your FullName"
        Fullname.attributedPlaceholder = NSAttributedString(string: Fullname.placeholder!,attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15)])
        Fullname.textColor = .black
        Fullname.backgroundColor = .white
        Fullname.textAlignment = .left
        Fullname.layer.cornerRadius = 10
        Fullname.layer.masksToBounds = true
        Fullname.contentMode = .scaleToFill
        view.addSubview(Fullname)
        
        Password.frame = CGRect(x: self.view.frame.minX + 40, y: self.Fullname.frame.minY + 80, width: self.view.frame.width - 80, height: 40)
        Password.placeholder = "   Enter your Password"
        Password.attributedPlaceholder = NSAttributedString(string: Password.placeholder!,attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15)])
        Password.textColor = .black
        Password.backgroundColor = .white
        Password.textAlignment = .left
        Password.layer.cornerRadius = 10
        Password.layer.masksToBounds = true
        Password.contentMode = .scaleToFill
        view.addSubview(Password)
        
        forgot.frame = CGRect(x: self.view.frame.minX + 70, y: self.Password.frame.minY + 50, width: self.view.frame.width + 60, height: 30)
        forgot.setTitle("Forgot password", for: .normal)
        forgot.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        forgot.setTitleColor(.white, for: .normal)
        forgot.layer.masksToBounds = true
        forgot.contentMode = .scaleToFill
        forgot.addTarget(self, action: #selector(ForgotTapped), for: .touchUpInside)
        view.addSubview(forgot)
        
        login.frame = CGRect(x: self.view.frame.minX + 50, y: self.Password.frame.minY + 150, width: self.view.frame.width - 100, height: 40)
        login.setTitle("Login", for: .normal)
        login.setTitleColor(.black, for: .normal)
        login.backgroundColor = .white
        login.layer.borderWidth = 3
        login.layer.borderColor = .init(red: 10, green: 10, blue: 10, alpha: 1)
        login.layer.cornerRadius = 15
        login.layer.masksToBounds = true
        login.contentMode = .scaleAspectFill
        login.addTarget(self, action: #selector(LoginTapped), for: .touchUpInside)
        view.addSubview(login)
        
        label2.frame = CGRect(x: self.view.frame.minX + 50, y: self.login.frame.minY + 60, width: self.view.frame.width - 100, height: 30)
        label2.text = "Don't have account?"
        label2.font = .boldSystemFont(ofSize: 15)
        label2.textColor = .white
        label2.textAlignment = .center
        label2.layer.masksToBounds = true
        label2.contentMode = .scaleToFill
        view.addSubview(label2)
        
        signup.frame = CGRect(x: self.view.frame.minX + 80, y: self.login.frame.minY + 60, width: self.view.frame.width + 60, height: 30)
        signup.setTitle("Forgot password", for: .normal)
        forgot.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        forgot.setTitleColor(.white, for: .normal)
        forgot.layer.masksToBounds = true
        forgot.contentMode = .scaleToFill
        forgot.addTarget(self, action: #selector(ForgotTapped), for: .touchUpInside)
        view.addSubview(forgot)
        
        
        
    }
    
    @objc func LoginTapped(){
        
        let Viewcontroller = (UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "HomeViewController")as? HomeViewController)!
        self.navigationController?.pushViewController(Viewcontroller, animated: true)
        
        
        
    }
    
    @objc func ForgotTapped(){
        
        let Viewcontroller = (UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ForgotpasswordViewController")as? ForgotpasswordViewController)!
        self.navigationController?.pushViewController(Viewcontroller, animated: true)
        
        
    }
}
