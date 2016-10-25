//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Felicity Johnson on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddTriviaViewController: UIViewController {
    
    @IBOutlet weak var triviumTextField: UITextField!
    
    @IBOutlet weak var submitButtonOutlet: UIButton!
    
    @IBOutlet weak var cancelButtonOutlet: UIButton!
    
    var location: Location?
    
    @IBAction func submitButton(_ sender: AnyObject) {
        let trivia = Trivium(content: triviumTextField.text!, likes: 0)
        location?.trivia.append(trivia)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        triviumTextField.accessibilityLabel = "Trivium Text Field"
        triviumTextField.accessibilityIdentifier = "Trivium Text Field"
        cancelButtonOutlet.accessibilityLabel = "Cancel Button"
        cancelButtonOutlet.accessibilityIdentifier = "Cancel Button"
        submitButtonOutlet.accessibilityLabel = "Save Button"
        submitButtonOutlet.accessibilityIdentifier = "Save Button"
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
