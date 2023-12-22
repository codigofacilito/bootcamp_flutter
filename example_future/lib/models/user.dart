class User{
  //Creamos los atributos del usuario
  int userId;
  String name;
  String lastName;

//Constructor para recibir los datos e inicializamos para no tener errores con null
  User({this.userId=0,this.name="",this.lastName=""});

  //Contructor para poder recibir los datos y rellenar la plantilla
  factory User.toObject(Map map){
    return User(
      userId: map["user_id"],
      name: map["name"],
      lastName: map["lastName"] ,
    );
  }
//Creamos un map para convertir nuestro objeto en map y poder
  Map<String, dynamic> toMap() =>
      {'user_id': userId, 'name': name, 'lastName': lastName, };
}