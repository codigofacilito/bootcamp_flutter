class Product {
  //Creamos nuestros atributos
  int productId;
  String name;
  int size;
  double price;

//Constructor para recibir los datos e inicializamos para no tener errores con null
  Product({this.productId = 0, this.name = "", this.size = 0, this.price = 0.0});

  factory Product.toObject(Map map) {
    return Product(
        productId: map["product_id"],
        name: map["name"],
        size: map["size"],
        price: map["price"]);
  }
//Creamos un map para convertir nuestro objeto en map y poder

  Map<String, dynamic> toMap() =>
      {"product_id": productId, "name": name, "size": size, "price": price};


  static List<Product> toListObject(var mapsProducts){
    return (mapsProducts as List)
        .map((map) => Product.toObject(map)).toList();
  }

}
