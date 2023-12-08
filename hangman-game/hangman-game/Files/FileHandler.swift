import Foundation

class FileHandler{
    let err = Err()
    var lines = [String]()
    
    var categories = [Category]()
    var category = Category()
    
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
    
    func getCategories() -> [Category]{
        
        let url = getFileURL()
        
        let content = getContent(url!)
        
        var lines = getLines(content!)
        
        lines.remove(at: lines.count-1)
        
        for line in lines{
            
            let parts = line.components(separatedBy: ": ")
            print(line)
            category.name = parts[0]
            category.words = parts[1].components(separatedBy: ", ")
            categories.append(category)
        }
        return categories
    }
}
