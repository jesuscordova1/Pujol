import UIKit

class ViewController: UIViewController {
    
    var menuOption : RestaurantOptionView?
    var inventarioOption : RestaurantOptionView?
    var pedidoOption : RestaurantOptionView?
    
    var width = UIScreen.main.bounds.width

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        initUI()
    }
    
    func initUI(){
        menuOption = RestaurantOptionView(iconName: "menu-2", titleString: "Menu Pujol", frame: CGRect(x: 20, y: 65, width: width-40, height: 80))
        view.addSubview(menuOption!)
        let tapMenu = UITapGestureRecognizer(target: self, action: #selector(goToMenu))
        menuOption?.addGestureRecognizer(tapMenu)
        
        inventarioOption = RestaurantOptionView(iconName: "inventario", titleString: "Inventario", frame: CGRect(x: 20, y: 165, width: width-40, height: 80))
        view.addSubview(inventarioOption!)
        let tapInventario = UITapGestureRecognizer(target: self, action: #selector(goToInventario))
        inventarioOption?.addGestureRecognizer(tapInventario)
        
        pedidoOption = RestaurantOptionView(iconName: "pedido-en-linea", titleString: "Realizar pedido", frame: CGRect(x: 20, y: 265, width: width-40, height: 80))
        view.addSubview(pedidoOption!)
        let tapPedido = UITapGestureRecognizer(target: self, action: #selector(goToPedido))
        pedidoOption?.addGestureRecognizer(tapPedido)
    }

    @objc func goToMenu(){
        let menuViewController = MenuViewController()
        present(menuViewController, animated: true, completion: nil)
    }
    
    @objc func goToInventario(){
        let inventarioViewController = InventarioViewController()
        present(inventarioViewController, animated: true, completion: nil)
    }
    
    @objc func goToPedido(){
        let pedidoViewController = PedidoViewController()
        present(pedidoViewController, animated: true, completion: nil)
    }
    
}

