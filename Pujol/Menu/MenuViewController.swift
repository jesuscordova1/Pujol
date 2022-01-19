
import UIKit

class MenuViewController: UIViewController {

    var tableView : UITableView?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var dataSource : MenuObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        initUI()
        getData()
    }
    
    func initUI(){
        tableView = UITableView(frame: CGRect(x: 10, y: 20, width: width-20, height: height-100))
        tableView?.backgroundColor = .white
        tableView?.delegate = self
        tableView?.dataSource = self
        
        view.addSubview(tableView!)
    }
    
    func getData(){
        // MARK: - Productos
            // MARK: - Desayuno
            let huevito = Producto(nombre: "Huevito", descripcion: "Huevos revueltos con tortilla", precio: 50, imagen: "huevito", peso: 250, calorias: 350)
            let cereales = Producto(nombre: "Cereales", descripcion: "Plato de cereales con leche a tu elección", precio: 30.0, imagen: "Cereales", peso: 100, calorias: 200)
            let omelet = Producto(nombre: "Omelet Clasico", descripcion: "Huevito revuelto con jamon de pavo", precio: 60.0, imagen: "omelet", peso: 475, calorias: 630)
            let pan = Producto(nombre: "Pieza de pan", descripcion: "Pieza de pan a tu elección", precio: 10.0, imagen: "pan", peso: 20, calorias: 300)

            // MARK: - Comida
            let hamburguesa = Producto(nombre: "Hamburguesa", descripcion: "Delicioso sandwich de carne molida con pan gourmet", precio: 89.99, imagen: "hamburguesa", peso: 380, calorias: 750)
            let caldoDeRes = Producto(nombre: "caldo de res", descripcion: "Caldo con carne de res y verduras", precio: 120.0, imagen: "caldo de res", peso: 0.200, calorias: 300)
            // MARK: - Cena
            let pizza = Producto(nombre: "Pizza", descripcion: "disco de masa salada con queso y carne", precio: 150.0, imagen: "image", peso: 0.300, calorias: 500)
            // MARK: - Bebidas
            let limonadanatural = Producto(nombre: "Limonada Natural", descripcion: "limonada a base de jugo natural de limon", precio: 25.0, imagen: "limonada", peso: 255, calorias: 1000)
            let aguaDeldia = Producto(nombre: "Agua de horchata", descripcion: "Agua a base de arroz con infusion de leche y coronado con canela", precio: 99, imagen: "horchatita", peso: 250.0, calorias: 100)
            // MARK: - Bebidas Alcoholicas
            let cervezaCorona = Producto (nombre: "Cerveza Corona", descripcion: "Grande", precio: 50.0, imagen: "###!", peso: 500, calorias: 100)
            let vino = Producto(nombre: "Vino", descripcion: "Bebida obtenida de la fermentación alcohólica total del zumo de uvas maduras", precio: 50.0, imagen: "vinoImagen", peso: 250, calorias: 200)
            let vodka = Producto(nombre: "Vodka", descripcion: "Alcohol blanco que resulta de la destilación de un jugo fermentado", precio: 45, imagen: "vodkaImagen", peso: 230, calorias: 400)
            // MARK: - Postres
            let flan = Producto(nombre: "Flan", descripcion: "Porcion de flan con caramelo", precio: 80, imagen: "flan", peso: 200, calorias: 500)
            let pastel = Producto(nombre: "Pastel", descripcion: "Rebanada de pastel de chocolate", precio: 90, imagen: "pastelImagen", peso: 100, calorias: 600)
            let jericalla = Producto(nombre: "jericalla", descripcion: "postre elaborado con leche, huevo, canela, azucar", precio: 20.0, imagen: "jericalla", peso: 0.200, calorias: 500)


        // MARK: - Categorias
        let bebidas = Categoria(nombre: "Bebidas", productos: [aguaDeldia,limonadanatural])
        let bebidasAlcoholicas = Categoria (nombre: "Bebidas Alcoholicas", productos: [cervezaCorona,vodka,vino])
        let desayuno = Categoria(nombre: "Desayuno", productos: [huevito,cereales,pan,omelet])
        let postres = Categoria(nombre: "Postres", productos: [flan,pastel,jericalla])
        let comida = Categoria(nombre: "Comida", productos: [hamburguesa,caldoDeRes])
        let cena = Categoria(nombre: "Cena", productos: [pizza])
        
        // MARK: - Menu
        let menu = MenuObject(categorias: [desayuno,bebidas,bebidasAlcoholicas,comida,postres,cena], titulo: "Menu Pujol")
        dataSource = menu
    }

}


extension MenuViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("estoy en la seccion \(indexPath.section+1) en la celda \(indexPath.row+1)")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource?.categorias?[section].productos?.count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource?.categorias?.count ?? 0
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dataSource?.categorias?[section].nombre
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = dataSource?.categorias?[indexPath.section].productos?[indexPath.row]
        let cell = MenuTableViewCell(producto: product!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        let color = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        view.backgroundColor = color
        
        let image = UIImageView(frame: CGRect(x: 2, y: 2, width: 20, height: 20))
        image.image = UIImage(named: "menu-2")
        view.addSubview(image)
        
        let label = UILabel(frame: CGRect(x: 25, y: 2, width: 200, height:20))
        label.text = dataSource?.categorias?[section].nombre ?? ""
        label.textColor = .white
        view.addSubview(label)
    
        return view
    }

}
