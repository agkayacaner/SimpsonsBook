//
//  ViewController.swift
//  SimpsonsBook
//
//  Created by Caner Ağkaya on 10.02.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var simpsons = [Simpsons]()
    var choosenSimpson : Simpsons?
    
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let Homer = Simpsons(SimpsonName: "Homer Simpson", SimpsonJob: "Nükleer Santral Operatorü", SimpsonImage: UIImage(named: "homer")!)
        let Marge = Simpsons(SimpsonName: "Marge Simpson", SimpsonJob: "Ev Hanımı", SimpsonImage: UIImage(named: "marge")!)
        let Bart = Simpsons(SimpsonName: "Bart Simpson", SimpsonJob: "Öğrenci", SimpsonImage: UIImage(named: "bart")!)
        let Lisa = Simpsons(SimpsonName: "Lisa Simpson", SimpsonJob: "Öğrenci", SimpsonImage: UIImage(named: "lisa")!)
        let Maggie = Simpsons(SimpsonName: "Maggie Simpson", SimpsonJob: "Bebek", SimpsonImage: UIImage(named: "maggie")!)
        
        simpsons.append(Homer)
        simpsons.append(Marge)
        simpsons.append(Bart)
        simpsons.append(Lisa)
        simpsons.append(Maggie)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsons.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenSimpson = simpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.selectedSimpson = choosenSimpson
        }
    }
}

