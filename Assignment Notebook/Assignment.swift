//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Jean Cho on 7/9/18.
//  Copyright © 2018 Jean Cho. All rights reserved.
//

import UIKit

class Assignment: Codable {
    var courseName : String
    var assignmentTitle : String
    var dueDate : String
    var description : String
    var image : Data
    
    init(courseName: String, assignmentTitle: String, dueDate: String, description: String, image: Data) {
        self.courseName = courseName
        self.assignmentTitle = assignmentTitle
        self.dueDate = dueDate
        self.description = description
        self.image = image
    }

}
