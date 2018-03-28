//
// Alamofire Custom Client
//

import Alamofire

open class OurClient {
    
    private class OurAPIClient : SessionDelegate {
        
        func Client() -> SessionManager {
            
            let headers = Alamofire.SessionManager.defaultHTTPHeaders
            
            // headers["Authorization"] = "1234, 필요하다면.""
            // headers["User-Agent"] = "API UserAgent"
            
            let configuration = URLSessionConfiguration.default
            configuration.httpAdditionalHeaders = headers
            configuration.httpCookieStorage = HTTPCookieStorage.init()
            
            return Alamofire.SessionManager(configuration: configuration, delegate: self)
            
        }
        
        override func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
            
            if let httpResponse = dataTask.response as? HTTPURLResponse {
                
                if httpResponse.statusCode == 403 {
                    
                }
                
            }
            
            super.urlSession(session, dataTask: dataTask, didReceive: data)
        }
        
    }
    
    public static var shared:SessionManager = OurAPIClient().Client()
    static func update() {
        self.shared = OurAPIClient().Client() // UA, Authorization 갱신용
    }
}




