import Foundation

class FileHandler{
    let err = Err()
    var lines = [String]()
    
    var categories = [Categories]()
    
    
//    func getLines(){
//        guard let fileURL = getFileURL() else{
//            return
//        }
//        
//        guard let content = getContent(fileURL) else{
//            return
//        }
//        
//        lines = getLines(content)
//    }
    
    
    private func getFileURL() -> URL?{
        guard let fileURL = Bundle.main.url(forResource: "Data", withExtension: "txt") else{
            err.showErr()
            return nil
        }
        return fileURL
    }
    
    
    
    private func getContent(_ url : URL) -> String?{
        guard let content = try? String(contentsOf: url) else{
            err.showErr()
            return nil
        }
        return content
    }
    
    private func getLines(_ content : String) -> [String]{
        return content.components(separatedBy: "\n")
    }
    
    private func getCategories(_ lines : [String]) /*-> Categories*/{
        
        
        
        
        for (index, line) in lines.enumerated(){
            let parts = line.components(separatedBy: ": ")
            categories.append(parts[0])
            let words = parts[1].components(separatedBy: ", ")
            
        }
    }
}
