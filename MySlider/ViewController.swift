//
//  ViewController.swift
//  MySlider
//
//  Created by Алим Куприянов on 31.01.2021.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
    
    
    
    
}



class ViewController: UIViewController, CardSliderDataSource {

    @IBOutlet weak var tapButton: UIButton!
    
    var data = [Item]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapButton.layer.cornerRadius = 10
        tapButton.clipsToBounds = true
        
        data.append(Item(image: #imageLiteral(resourceName: "jason-leung-AxKqisRPQSA-unsplash"),
                         rating: 4,
                         title: "Images",
                         subtitle: "See the beaty images of our library",
                         description: "lorem ipsum lorem ipsum"))
        
        data.append(Item(image: #imageLiteral(resourceName: "andrik-langfield-1-YQiOijio8-unsplash"),
                         rating: 4,
                         title: "Images",
                         subtitle: "See the beaty images of our library",
                         description: "lorem ipsum lorem ipsum"))
        
        
        data.append(Item(image: #imageLiteral(resourceName: "dave-goudreau-MJ2zd_OfxSw-unsplash"),
                         rating: 4,
                         title: "Images",
                         subtitle: "See the beaty images of our library",
                         description: "lorem ipsum lorem ipsum"))
        
        
        data.append(Item(image: #imageLiteral(resourceName: "ayo-ogunseinde--_C4UZRpoQc-unsplash"),
                         rating: 4,
                         title: "Images",
                         subtitle: "See the beaty images of our library",
                         description: "lorem ipsum lorem ipsum"))
        
        
        data.append(Item(image: #imageLiteral(resourceName: "windows-v94mlgvsza4-unsplash"),
                         rating: 4,
                         title: "Images",
                         subtitle: "See the beaty images of our library",
                         description: "lorem ipsum lorem ipsum"))
        
        data.append(Item(image: #imageLiteral(resourceName: "chaewon-lee-VfhoKbFv16Y-unsplash"),
                         rating: 4,
                         title: "Images",
                         subtitle: "See the beaty images of our library",
                         description: "lorem ipsum lorem ipsum"))
        
    }
    
    
    
    @IBAction func button(_ sender: UIButton) {
        
        guard let dataSource = self as? CardSliderDataSource else {return}
        
        
        let vc = CardSliderViewController.with(dataSource: self)
        
        vc.title = "Welcome"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    func item(for index: Int) -> CardSliderItem {
        
        return data[index]
    }
    
    func numberOfItems() -> Int {
        
        return data.count
    }
    
    
    
}

