//
//  DetailViewController.swift
//  NoticeBoard
//
//  Created by shiva ram on 04/08/21.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var noticeTitle: UILabel!
    @IBOutlet weak var noticeImage: UIImageView!
    @IBOutlet weak var noticeDesc: UILabel!
    @IBOutlet weak var teacherName: UILabel!
    @IBOutlet weak var noticeDate: UILabel!
    
    var response : NoticeItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.noticeTitle.text = response?.title ?? "default"
        self.teacherName.text = response?.teacher ?? "default"
        
        if let image = response?.image
        {
            let dataDecoded:NSData = NSData(base64Encoded: image, options: NSData.Base64DecodingOptions(rawValue: 0))!
            let decodedimage = UIImage(data: dataDecoded as Data)!
            self.noticeImage.image = decodedimage
        }
        
        self.noticeDesc.text = response?.noticeText ?? "default"
        self.noticeDate.text = response?.date ?? "default"
        
        
}
    
    

}
