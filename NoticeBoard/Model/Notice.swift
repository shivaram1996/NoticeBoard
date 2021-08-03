//
//  Notice.swift
//  NoticeBoard
//
//  Created by shiva ram on 03/08/21.
//

import Foundation
import Metal


struct Notice : Codable
{
    let data:[NoticeItems]
    
}

struct NoticeItems : Codable
{
    let id : String
    let title:String
    let date:String
    let noticeTitle:String
    let teacher: String
    let image : String
    
    enum CodingKeys: String, CodingKey {
            case id
            case title = "notice_title"
            case date = "date_time"
            case noticeTitle = "notice_text"
            case teacher = "teacher_name"
            case image = "notice_image"
        }
}

