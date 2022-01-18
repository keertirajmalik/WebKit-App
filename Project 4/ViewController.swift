//
//  ViewController.swift
//  Project 4
//
//  Created by Keertiraj Laxman Malik on 18/01/22.
//

import UIKit

class ViewController: UITableViewController {
    var websites = ["apple.com","google.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Website Viewer"
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       if let vc = storyboard?.instantiateViewController(withIdentifier: "websiteView") as? WebsiteViewController {
            vc.loadWebsite = websites[indexPath.row]
           navigationController?.pushViewController(vc, animated: true)
        }
    }
}
