import Foundation
import UIKit

class MenuTableViewCell : UITableViewCell{
    var ownContent : UIView?
    var nameProduct : UILabel?
    var desctiptionProduct : UILabel?
    var priceProduct : UILabel?
    var addButton : UIButton?
    var imageProduct: UIImageView?
    
    var producto : Producto?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height

    init(producto: Producto){
        super.init(style: .default, reuseIdentifier: nil)
        self.producto = producto
        self.backgroundColor = .clear
        
        
        initUI()
    }
    
    func initUI(){
        ownContent = UIView(frame: CGRect(x: 0, y: 5, width: width-20, height: height/6-10))
        ownContent?.backgroundColor = .white
        ownContent?.layer.cornerRadius = 10
        self.addSubview(ownContent!)
        
        nameProduct = UILabel(frame: CGRect(x: 10, y: 10, width: frame.width, height: 20))
        nameProduct?.text = producto?.nombre
        nameProduct?.backgroundColor = .white
        nameProduct?.font = .boldSystemFont(ofSize: 18)
        ownContent?.addSubview(nameProduct!)
        
        desctiptionProduct = UILabel(frame: CGRect(x: 10, y: 30, width: width/2, height: 70))
        desctiptionProduct?.text = producto?.descripcion
        desctiptionProduct?.numberOfLines = 0
        desctiptionProduct?.textAlignment = .left
        desctiptionProduct?.adjustsFontSizeToFitWidth = true
        ownContent?.addSubview(desctiptionProduct!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
