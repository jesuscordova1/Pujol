import Foundation
import UIKit

class MenuObject{
    var categorias : [Categoria]?
    var titulo : String?
    
    init(categorias: [Categoria], titulo: String){
        self.categorias = categorias
        self.titulo = titulo
    }
}

class Categoria{
    var nombre : String?
    var productos : [Producto]?
    
    init(nombre: String, productos: [Producto]){
        self.nombre = nombre
        self.productos = productos
    }
}

class Producto{
    var nombre : String?
    var descripcion : String?
    var precio : Float?
    var imagen : String?
    var peso : Float?
    var calorias : Int?
    
    init(nombre: String, descripcion: String, precio: Float, imagen: String, peso: Float, calorias: Int){
       
        self.nombre = nombre
        self.descripcion = descripcion
        self.precio = precio
        self.imagen = imagen
        self.peso = peso
        self.calorias = calorias
    }
}
