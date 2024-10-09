//
//  HomeViewController.swift
//  App project
//
//  Created by FCI-2171 on 07/10/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    var Backgroundimage = UIImageView()
    var image = UIImageView()
    var image1 = UIImageView()
    var image2 = UIImageView()
    var image3 = UIImageView()
    
    var scrollview = UIScrollView()
    var contentview = UIView()
    var view1 = UIView()
    var view2 = UIView()
    var view3 = UIView()
    var view4 = UIView()
    
    
    var label1 = UILabel()
    var label2 = UILabel()
    var label3 = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollview.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        
        view.addSubview(scrollview)
        
        let contentviewwidth : CGFloat = UIScreen.main.bounds.width
        let contentviewHeight : CGFloat = 2000
        
        contentview.frame = CGRect(x: 0, y: 0, width: contentviewwidth, height: contentviewHeight)
        contentview.backgroundColor = .white
        Backgroundimage.frame = CGRectMake(0, 0, self.contentview.frame.width, self.contentview.frame.height)
        Backgroundimage.image = UIImage(named: "Background image")
        contentview.addSubview(Backgroundimage)
        scrollview.contentSize = contentview.bounds.size
        scrollview.isScrollEnabled = true
        scrollview.showsVerticalScrollIndicator = false
        scrollview.addSubview(contentview)
        
        
        view1.frame = CGRect(x: self.contentview.frame.minX + 50, y: self.contentview.frame.minY + 100, width: self.contentview.frame.width - 100, height: 250)
        view1.backgroundColor = .white
        contentview.addSubview(view1)
        
        image.frame = CGRectMake(0, 0, self.view1.frame.width, self.view1.frame.height)
        image.image = UIImage(named: "plant")
        view1.addSubview(image)
        
        label1.frame = CGRect(x: self.contentview.frame.minX + 60, y: self.view1.frame.minY + 280, width: self.contentview.frame.width - 120, height: 200)
        label1.text = "Golden bamboo (Phyllostachys aurea) is one of a few bamboo plants that can grow inside. Most bamboos require a lot of sun and humidity to grow well, which is not easy to achieve for indoor plants. Many confuse lucky bamboo plant (Dracaena species), a smaller bamboo-looking plant that grows in water, as an easy-growing indoor bamboo plant, but it is not a bamboo plant."
        label1.textColor = .white
        label1.numberOfLines = 0
        label1.layer.masksToBounds = true
        label1.font = .systemFont(ofSize: 15)
        contentview.addSubview(label1)
        
        view2.frame = CGRect(x: self.contentview.frame.minX + 50, y: self.label1.frame.minY + 230, width: self.contentview.frame.width - 100, height: 250)
        view2.backgroundColor = .white
        contentview.addSubview(view2)
        
        image1.frame = CGRectMake(0, 0, self.view2.frame.width, self.view2.frame.height)
        image1.image = UIImage(named: "plant1")
        view2.addSubview(image1)
        
        label2.frame = CGRect(x: self.contentview.frame.minX + 60, y: self.view2.frame.minY + 280, width: self.contentview.frame.width - 120, height: 200)
        label2.text = "The Dracaena family boasts a number of popular houseplants and the Marginata is one of them. It has always been one of my personal favorites. Usually referred to as a Marginata, it is sometimes called Madagascar Dragon Tree. Dracaena Marginata is grown in a variety of forms including the tip, bush, staggered, character and standard. You can also find them with braided trunks or canes."
        label2.textColor = .white
        label2.numberOfLines = 0
        label2.layer.masksToBounds = true
        label2.font = .systemFont(ofSize: 15)
        contentview.addSubview(label2)
        
        view3.frame = CGRect(x: self.contentview.frame.minX + 50, y: self.label2.frame.minY + 230, width: self.contentview.frame.width - 100, height: 250)
        view3.backgroundColor = .white
        contentview.addSubview(view3)
        
        
        image2.frame = CGRectMake(0, 0, self.view3.frame.width, self.view3.frame.height)
        image2.image = UIImage(named: "plant3")
        view3.addSubview(image2)
        
        label3.frame = CGRect(x: self.contentview.frame.minX + 60, y: self.view3.frame.minY + 250, width: self.contentview.frame.width - 120, height: 200)
        label3.text = "How to care for Birds Nest fern. Birds Nest Fern, Asplenium nidus, is one of the easier ferns to keep and grow indoors. An added attraction is the leaflets that often fall from other ferns, creating quite a mess, are not present on Birds Nest Fern."
        label3.textColor = .white
        label3.numberOfLines = 0
        label3.layer.masksToBounds = true
        label3.font = .systemFont(ofSize: 15)
        contentview.addSubview(label3)
        
        view4.frame = CGRect(x: self.contentview.frame.minX + 50, y: self.label3.frame.minY + 230, width: self.contentview.frame.width - 100, height: 250)
        view4.backgroundColor = .white
        contentview.addSubview(view4)
        
        image3.frame = CGRectMake(0, 0, self.view4.frame.width, self.view4.frame.height)
        image3.image = UIImage(named: "plants")
        view4.addSubview(image3)
        
        
        
        
        
        
        
        
        
        
       
    }
    

    

}
