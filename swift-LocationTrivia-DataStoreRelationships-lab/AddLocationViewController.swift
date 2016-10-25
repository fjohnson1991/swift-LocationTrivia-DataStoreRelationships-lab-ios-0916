//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Felicity Johnson on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var latitude: UITextField!
    @IBOutlet weak var longitude: UITextField!
    
    var location: Location?
    
    @IBAction func cancelButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var submitButtonOutlet: UIButton!
    
    @IBOutlet weak var cancelButtonOutlet: UIButton!
    
    @IBAction func saveButton(_ sender: AnyObject) {
        location = Location(name: name.text!, latitude: Float(latitude.text!)!, longitude: Float(longitude.text!)!)
        LocationsDataStore.sharedInstance.locations.append(location!)
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        name.accessibilityLabel = "nameField"
        name.accessibilityIdentifier = "nameField"
        latitude.accessibilityLabel = "latitudeField"
        latitude.accessibilityIdentifier = "latitudeField"
        longitude.accessibilityLabel = "longitudeField"
        longitude.accessibilityIdentifier = "longitudeField"
        cancelButtonOutlet.accessibilityLabel = "cancelButton"
        cancelButtonOutlet.accessibilityIdentifier = "cancelButton"
        submitButtonOutlet.accessibilityLabel = "saveButton"
        submitButtonOutlet.accessibilityIdentifier = "saveButton"
        
        
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
