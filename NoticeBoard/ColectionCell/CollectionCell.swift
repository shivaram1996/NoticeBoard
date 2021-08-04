//
//  CollectionCell.swift
//  NoticeBoard
//
//  Created by shiva ram on 04/08/21.
//

import Foundation
import UIKit

class CollectionCell: UICollectionViewCell {

    @IBOutlet weak var noticeTitle: UILabel!
    @IBOutlet weak var noticeTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    override init(frame: CGRect) {
//        super.init(frame: .zero)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    public func configure(with model: NoticeItem) {
        noticeTitle.text = model.title
        noticeTime.text = model.date
    }
}
