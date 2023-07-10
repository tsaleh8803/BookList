//
//  ViewController.swift
//  MVVMtest
//
//  Created by Mac on 06/07/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let names = ["The Stranger","1984","The Hunger Games"]
    
    private let viewModel: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        

    }


}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("test")
        //i think this might need to go in viewmodel
        let vc = storyboard?.instantiateViewController(identifier: "expanded") as! ExpandedViewController
        
        let cell = tableView.cellForRow(at: (indexPath))
        vc.titleText = cell?.textLabel?.text
        present(vc, animated: true, completion: nil)
    }
    
}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    
}

