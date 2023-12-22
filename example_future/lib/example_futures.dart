import 'package:example_future/models/account.dart';
import 'package:example_future/models/product.dart';

import 'models/user.dart';

init() async {
  /*Cuando usamos async junto con await estamos convirtiendo nuestro metodo asincrono en
     Sincrono por lo que esperaremos a que se obtengan los datos de fetchAccount
     para continuar con fetchUser */
  Map mapNadia = await fetchAccount();
  Account account = Account.toObject(mapNadia);
  print(mapNadia);
  Map mapUser = await fetchUser(account.userId);
  User marines = User.toObject(mapUser);

  /*Cuando usamos then estamos manejando nuestro metodo asincrono por ejemplo
fetchNewProducts y fetchPopularProducts se estaran ejecutando y el que termine rapido
 mostrara los resultado, aqui un metodo no tiene que esperar que termine el otro*/
  
  fetchNewProducts().then((value) {
    print("maps new $value");
    List<Product> newProducts = Product.toListObject(value);
  }).catchError((error) {
    print("error $error");
  });

  fetchPopularProducts().then((value) {
    print("maps popular $value");
    List<Product> popularProducts = Product.toListObject(value);
  });
}

//Este es un ejemplo de como obtendriamos datos fake de internet o base de datos
//Esos datos siempre seran FUTURE porque tenemos que esperar en este caso 6 s
Future fetchPopularProducts() {
  return Future.delayed(
      const Duration(seconds: 6),
      () => [
            {"product_id": 1, "name": "Vans", "size": 23, "price": 1000.0},
            {"product_id": 2, "name": "Converse", "size": 26, "price": 2000.0},
            {"product_id": 3, "name": "Puma", "size": 28, "price": 2300.0}
          ]);
}

//Este es un ejemplo de como obtendriamos datos fake de internet o base de datos
//Esos datos siempre seran FUTURE porque tenemos que esperar en este caso 2 seg
Future fetchNewProducts() {
  return Future.delayed(
      const Duration(seconds: 2),
      () => [
            {"product_id": 1, "name": "Nike", "size": 23, "price": 1000.0},
            {"product_id": 2, "name": "NB", "size": 26, "price": 2000.0},
            {"product_id": 3, "name": "Adidas", "size": 28, "price": 2300.0}
          ]);
}

//Este es un ejemplo de como obtendriamos datos fake de internet o base de datos
//Esos datos siempre seran FUTURE porque tenemos que esperar  en este caso 5 seg
fetchAccount() {
  //Peticion future fake
  return Future.delayed(
      const Duration(seconds: 5),
      () => {
            "account_id": 1,
            "email": "marines@codigofacilito.com",
            "password": "54321",
            "user_id": 3
          });
}

//Este es un ejemplo de como obtendriamos datos fake de internet o base de datos
//Esos datos siempre seran FUTURE porque tenemos que esperar en este caso 3 seg
fetchUser(int userId) {
  //Peticion future fake
  return Future.delayed(
      const Duration(seconds: 3),
      () => {
            "user_id": 3,
            "name": "Marines",
            "lastName": "Mendez",
          });
}
