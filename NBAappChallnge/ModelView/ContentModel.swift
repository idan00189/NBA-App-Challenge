//
//  ContentModel.swift
//  NBAappChallnge
//
//  Created by idan Cohen on 06/05/2022.
//

import Foundation

class ContentModel : ObservableObject  {
    
    init(){
        
        setAPIdata()
    }
    
    
    func setAPIdata(){
        
        print(DateAsString().StringDate())
        let urlString = URL(string: "https://fly.sportsdata.io/v3/nba/scores/json/GamesByDate/\("2022-MAY-10")?key=c6c4b644b70f4f1da9424944a9a9f143")
        if urlString != nil{
            var request = URLRequest(url: urlString!, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 5)
            request.httpMethod = "GET"
            
        
        let season = URLSession.shared
        
            season.dataTask(with: request) { data, response, error in
                if error == nil{
                    
                    print(response!)
                }
            }.resume()
            
        }
    }
    
}
