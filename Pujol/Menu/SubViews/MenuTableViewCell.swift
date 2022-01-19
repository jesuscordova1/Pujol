import Foundation
import UIKit

class MenuTableViewCell : UITableViewCell{
    var nameProduct : UILabel?
    var desctiptionProduct : UILabel?
    var priceProduct : UILabel?
    var addButton : UIButton?
    var imageProduct: UIImageView?
    
    var producto : Producto?

    init(producto: Producto){
        super.init(style: .default, reuseIdentifier: nil)
        self.producto = producto
        
        initUI()
    }
    
    func initUI(){
        nameProduct = UILabel(frame: CGRect(x: 10, y: 10, width: frame.width, height: 20))
        nameProduct?.text = producto?.nombre
        nameProduct?.backgroundColor = .white
        
        self.addSubview(nameProduct!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
