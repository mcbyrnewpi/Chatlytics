//
//  MessageCell.swift
//  Chatlytics
//
//  Created by Matthew Byrne on 3/6/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var timeStampLbl: UILabel!
    @IBOutlet weak var messageBodyLbl: UILabel!
    
    
    // Overrides
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // Functions
    
    func configureCell(message: Message) {
        messageBodyLbl.text = message.message
        userNameLbl.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        
//        guard var isoDate = message.timeStamp else { return }
//        let end = isoDate.index(isoDate.endIndex, offsetBy: -5)
//        isoDate = isoDate.substring(to: end)
//        
//        let isoFormatter = ISO8601DateFormatter()
//        let chatDate = isoFormatter.date(from: isoDate.appending("Z"))
//        
//        let newFormatter = DateFormatter()
//        newFormatter.dateFormat = "MMM d, h:mm a"
//        
//        if let finalDate = chatDate {
//            let finalDate = newFormatter.string(from: finalDate)
//            timeStampLbl.text = finalDate
//        }
    }
    

}
