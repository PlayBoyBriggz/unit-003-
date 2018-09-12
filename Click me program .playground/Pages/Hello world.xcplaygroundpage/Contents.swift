// Created on: Jan-2017
// Created by: christian briglio 
// Created for: ICS3U
// This program is the UIKit solution for the Hello, World! program
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let nameLabel : UILabel = UILabel()
    let cityLabel : UILabel = UILabel()
    let countryLabel : UILabel = UILabel()
    let addressButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.909803926944733, green: 0.47843137383461, blue: 0.643137276172638, alpha: 1.0)
        self.view = view
        
        //nameLabel.text = " christian briglio " 
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //cityLabel.text = " ottawa " 
        view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //countryLabel.text = " canada "  
        view.addSubview(countryLabel)
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        countryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        addressButton.setTitle("Click Me", for: UIControlState.normal)
        addressButton.setTitleColor(.blue, for: .normal)
        addressButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(addressButton)
        addressButton.translatesAutoresizingMaskIntoConstraints = false
        addressButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        addressButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
    }
    
    @objc func showText() {
        
        cityLabel.text = " ottawa "
        countryLabel.text = " canada " 
        nameLabel.text = " christian briglio " 
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

