//
//  ViewController.swift
//  DarkMode2
//
//  Created by anna.zubakina on 19/10/2023.
//

import UIKit

class ThemeViewController: UIViewController {
    
    @IBOutlet weak var darkButton: UIButton!
    @IBOutlet weak var folderButton: UIBarButtonItem!
    @IBOutlet weak var leftButton: UIBarButtonItem!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ThemeViewController func viewDidLoad")
        darkButton.layer.cornerRadius = 10
    }
    
    var isDarkThemeEnabled = false
    
    @IBAction func darkButtonTapped(_ sender: Any) {
        print("darkButtonTapped")
        
        if isDarkThemeEnabled {
            //light theme
                view.backgroundColor = UIColor.white
                navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
                darkButton.setTitle("Dark Theme on", for: .normal)
                darkButton.setTitleColor(UIColor.white, for: .normal)
                darkButton.tintColor = UIColor.systemBlue
            } else {
                //dark theme
                view.backgroundColor = UIColor.black
                navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
                darkButton.setTitle("Dark Theme off", for: .normal)
                darkButton.setTitleColor(UIColor.black, for: .normal)
                darkButton.tintColor = UIColor.white
            }
        
        isDarkThemeEnabled = !isDarkThemeEnabled
        
    }
    
    @IBAction func folderTaped(_ sender: Any) {
        basicAlert(title: "My Folder", message: "This is my item button!")
    }
    
    
    @IBAction func leftTaped(_ sender: Any) {
        basicActionSheet(title: "My Left Button", message: "This is my Left Button!")
    }
    
    
}

extension UIViewController {
    
    func basicAlert(title: String?, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
    }
    
    func basicActionSheet(title: String?, message: String?) {
        DispatchQueue.main.async {
            let actionSheet = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
            actionSheet.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(actionSheet, animated: true)
        }
    }
}


