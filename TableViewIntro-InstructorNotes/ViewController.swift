//
//  ViewController.swift
//  TableViewIntro-InstructorNotes
//
//  Created by C4Q  on 10/26/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        self.loadData()
    }
    
    func loadData() {
        self.movies = MovieData.movies
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Delegate methods (all are optional)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("The user selected row \(indexPath.row)")
    }

//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
    
    
    //Required Data Source Methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Movie cell", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row].name
        cell.detailTextLabel?.text = movies[indexPath.row].description
        cell.backgroundColor = (indexPath.row % 2 == 0) ? UIColor.white : UIColor.gray
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
}

extension UIColor {
    static func random() -> UIColor {
        let randRed = drand48()
        let randGreen = drand48()
        let randBlue = drand48()
        let newColor = UIColor(displayP3Red: CGFloat(randRed), green: CGFloat(randGreen), blue: CGFloat(randBlue), alpha: 1)
        return newColor
    }
}
