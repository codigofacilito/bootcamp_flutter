class Account{
//Creamos nuestros atributos
  int accountId;
  String email;
  String password;
  int userId;

//Constructor para recibir los datos e inicializamos para no tener errores con null
  Account({this.accountId=0,this.email="",this.password="",this.userId=0});

//Constructor con nombre, este regresara una instancia osea una copia con datos.
  factory Account.toObject(Map map){
    return Account(
        accountId: map["account_id"],
        email: map["email"],
        password: map["password"],
        userId: map["user_id"]
    );
  }
//Creamos un map para convertir nuestro objeto en map y poder
  Map<String, dynamic> toMap()=>
      {"account_id":accountId,"email": email,"password":password, "user_id":userId };
}