//
//  FutureViewController.swift
//  KWKfinal2020
//
//  Created by Madi Tomlin on 6/10/20.
//  Copyright © 2020 Madi Tomlin. All rights reserved.
//

import UIKit

class FutureViewController: UIViewController {


  @IBAction func CCButtonTapped(_ sender: Any) {
       if let url = URL(string: "https://bigfuture.collegeboard.org/explore-careers/careers/hottest-careers-for-college-graduates") {
           UIApplication.shared.open(url)
       }
   }
    
    @IBAction func CLButtonTapped(_ sender: Any) {
    if let url = URL(string: "https://bigfuture.collegeboard.org/explore-careers/careers/hottest-careers-for-college-graduates") {
                       UIApplication.shared.open(url)
                   }
    }
  
            
    @IBAction func HCButtonTapped(_ sender: Any) {
   if let url = URL(string: "https://bigfuture.collegeboard.org/explore-careers/college-majors/the-college-major-what-it-is-and-how-to-choose-one") {
                      UIApplication.shared.open(url)
                  }
    }
    
    @IBAction func MLButtonTapped(_ sender: Any) {
   if let url = URL(string: "https://bigfuture.collegeboard.org/majors-careers") {
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

        
        
        
        
        
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source

   // override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
     //   return 0
    

  //  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
     //   return 0
   // }

   
