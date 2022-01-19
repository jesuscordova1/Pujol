import Foundation
import UIKit

class RestaurantOptionView : UIView{
    
    var icon : UIImageView?
    var title : UILabel?
    
        
    init(iconName: String, titleString: String, frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = .systemGray6
        self.layer.cornerRadius = 20
        self.layer.borderColor = CGColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.layer.borderWidth = 2
        
        icon = UIImageView(frame: CGRect(x: 10, y: 10, width: 70, height: 60))
        icon?.image = UIImage(named: iconName)
        icon?.contentMode = .scaleAspectFit
        
        title = UILabel(frame: CGRect(x: 90, y: 0, width: frame.width-100, height: 80))
        title?.text = titleString
        title?.textAlignment = .center
        title?.textColor = .systemIndigo
        title?.font = UIFont(name: "Helvetica", size: 21)
        
        self.addSubview(icon!)
        self.addSubview(title!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
