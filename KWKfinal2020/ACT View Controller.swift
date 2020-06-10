//
//  ACT View Controller.swift
//  KWKfinal2020
//
//  Created by Jordan Pemberton on 6/10/20.
//  Copyright © 2020 Madi Tomlin. All rights reserved.
//

import UIKit

class ACT_View_Controller: UIViewController {

    @IBAction func SATButtonTapped(_ sender: Any) {
        if let url = URL(string: "https://collegereadiness.collegeboard.org/sat/register") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func ACTButtonTapped(_ sender: Any) {
        if let url = URL(string: "http://www.act.org/content/act/en/products-and-services/the-act/registration.html") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func KhanButtonTapped(_ sender: Any) {
        if let url = URL(string: "https://www.khanacademy.org/test-prep/sat") {
            UIApplication.shared.open(url)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
