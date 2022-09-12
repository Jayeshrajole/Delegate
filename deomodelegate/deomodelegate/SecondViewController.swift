//
//  SecondViewController.swift
//  deomodelegate
//
//  Created by Jayesh Rajole on 09/09/22.
//

import UIKit
protocol DataPass{
    func datapassing(name:String,address:String,city:String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    var delegate:DataPass!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnSaveClick(_ sender: Any) {
        delegate.datapassing(name: txtName.text!, address: txtAddress.text!, city: txtCity.text!)
    }
    
    

}
