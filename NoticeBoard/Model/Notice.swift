//
//  Notice.swift
//  NoticeBoard
//
//  Created by shiva ram on 03/08/21.
//

import Foundation


struct Notice : Codable
{
    let data:[NoticeItem]
    
}

struct NoticeItem : Codable
{
    let id : String
    let title:String
    let date:String
    let noticeText:String
    let teacher: String
    let image : String
    
    enum CodingKeys: String, CodingKey {
            case id
            case title = "notice_title"
            case date = "date_time"
            case noticeText = "notice_text"
            case teacher = "teacher_name"
            case image = "notice_image"
        }
    
}

