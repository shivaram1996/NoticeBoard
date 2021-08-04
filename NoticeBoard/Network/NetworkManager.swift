//
//  NetworkManager.swift
//  NoticeBoard
//
//  Created by shiva ram on 03/08/21.
//

import Foundation

class NetworkManager
{
    static let instance = NetworkManager()
    
    private init(){}
    

    //MARK: Parse network response
    
    
    func parseJson() -> Notice?
    {
        var noticeResponse : Notice?
        
        guard let path = Bundle.main.path(forResource: "notice", ofType: "json")
            else
            {
                return nil
            }
    
        let url = URL(fileURLWithPath: path)
        
        do
        {
            let data = try Data(contentsOf: url)
            noticeResponse = try JSONDecoder().decode(Notice.self, from: data)
            
            if let response = noticeResponse
            {
                return response
            }
            else
            {
                print("Parse error")
                return nil
            }
        }
        catch
        {
            print(error.localizedDescription)
            return nil
        }
        
        
    }
}
