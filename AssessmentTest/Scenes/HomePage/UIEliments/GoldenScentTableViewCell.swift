//
//  GoldenScentTableViewCell.swift
//  AssessmentTest
//
//  Created by Irfan Ahmed on 08/03/2021.
//

import UIKit

class GoldenScentTableViewCell: UITableViewCell {

    @IBOutlet weak var containerViewRightPadding: NSLayoutConstraint!
    @IBOutlet weak var containerViewLeftPadding: NSLayoutConstraint!
    @IBOutlet weak var containerViewBottomPadding: NSLayoutConstraint!
    
    static var identifier: String{
        return String(describing: self)
    }
    
    static var nib: UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
