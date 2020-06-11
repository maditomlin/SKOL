//
//  ToDoTableTableViewController.swift
//  KWKfinal2020
//
//  Created by Jordan Pemberton on 6/10/20.
//  Copyright © 2020 Madi Tomlin. All rights reserved.
//

import UIKit

class ToDoTableTableViewController: UITableViewController {
    
     func getToDos() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

               if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
        //           if let theToDos = coreDataToDos {
                       toDos = coreDataToDos
                       tableView.reloadData()
                }
            }
        }
    
    var toDos : [ToDoCD] = []
    
    override func viewWillAppear(_ animated: Bool) {
      getToDos()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // #warning Incomplete implementation, return the number of rows
           return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let toDo = toDos[indexPath.row]

      if let name = toDo.name {
        if toDo.important {
            cell.textLabel?.text = "❗️" + name
        } else {
            cell.textLabel?.text = toDo.name
        }
      }

      return cell
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AddToDoViewController {
        addVC.previousVC = self
      }

      if let completeVC = segue.destination as? CompleteToDoViewController {
        if let toDo = sender as? ToDoCD {
          completeVC.selectedToDo = toDo
          completeVC.previousVC = self
        }
      }
    }
    
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

          // this gives us a single ToDo
          let toDo = toDos[indexPath.row]

          performSegue(withIdentifier: "moveToComplete", sender: toDo)
        }
        
        
    /*
    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destination.
         Pass the selected object to the new view controller.
    }
    */

 }*/
}
