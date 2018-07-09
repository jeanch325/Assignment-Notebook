//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Jean Cho on 7/9/18.
//  Copyright © 2018 Jean Cho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var courseNameTextField: UITextField!
    @IBOutlet weak var assignmentTitleTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    

    func configureView() {
        // Update the user interface for the detail item.
        if let assignment = self.detailItem {
            if assignmentTitleTextField != nil {
                courseNameTextField.text = assignment.courseName
                assignmentTitleTextField.text = assignment.courseName
                dueDateTextField.text = assignment.dueDate
                descriptionTextField.text = assignment.description
                imageView.image = UIImage(data: assignment.image)
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.assignmentTitle = assignmentTitleTextField.text!
            assignment.courseName = courseNameTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.description = descriptionTextField.text!
        }
    }
    


}

