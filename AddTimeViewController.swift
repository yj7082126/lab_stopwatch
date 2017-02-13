//
//  AddTimeViewController.swift
//  Stopwatch
//
//  Created by Yong Jae Kwon on 2/11/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import UIKit

class AddTimeViewController: UIViewController {

    weak var ctime : NSString? = ""
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)   
    }
    
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Time Saved!", message: "You just fake saved the time " + timeLabel.text! + "!", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = ctime as String?;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
