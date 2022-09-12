//
//  ViewController.swift
//  deomodelegate
//
//  Created by Jayesh Rajole on 09/09/22.
//

import UIKit



class ViewController: UIViewController,DataPass {
    

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    @IBAction func btnSaveClick(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    func datapassing(name: String, address: String, city: String) {
        lblName.text = name
        lblAddress.text = address
        lblCity.text = city
    }
    
    
}

