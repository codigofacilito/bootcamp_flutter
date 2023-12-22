void main() {
  //Mapa
  final mascotaMapa = {
    'name': 'Lena',
    'specie': 'cat',
    'age': 2,
    'canReproduce': true,
    'raza': 'VanTurco',
  };

  final mascotaMapa2 = {
    'name': 'Dahlia',
    'specie': 'dog',
    'age': 1,
    'canReproduce': true,
  };

  //Mascota
  //Positional Parameter
  //var mascota3 = Mascota(name, specie, age, canReproduce);

  //named parameters
  var mascotaObjeto = Mascota(
    name: 'Lena',
    age: 2,
    specie: 'feline',
  );

  print(
      'mi mascota se llama ${mascotaObjeto.name} y es un ${mascotaObjeto.specie}');

  //Pasamos de mapa a Objeto
  var myMascotaFromMap = Mascota.fromMap(mascotaMapa);

  //Pasamos de Objeto a mapa
  var objectToMap = myMascotaFromMap.toMap();
  print(objectToMap);

  //Conjunto
  //Un conjunto por definición NO tiene elementos repetidos, y si los hay los ignora
  Set mascotas = <String>{'Lena', 'Dahlia', 'Dahlia', 'yoyo', "michi"};
  print('Este es el conjunto de mascotas: $mascotas');

  //Listas
  final List<String> myListOfPets =
      []; //es una lista growable inicializada vacía

  //convierte el conjunto {mascotas} en lista:
  final List listOfPets = mascotas.toList();
  myListOfPets.addAll(
    listOfPets as Iterable<String>,
  ); //añade todos los elementos en {mascotas} a [myListOfPets]

  //un Iterable es una colección de objetos
  //la clase Lista implementa Iterable

  myListOfPets.add('rambo');

  //myListOfPets.clear(); //Deja la lista vacía
  print('the first element of myListOfPets is ${myListOfPets.first}');
  print('last element of myListOfPets is ${myListOfPets.last}');

  var pet = myListOfPets.firstWhere((element) => element.contains('D'));
  //va a imprimir Dahlia
  print(
    'El nombre de la mascota $pet contiene la letra D',
  );

  // Ciclos for
  print('______________________________________ el ultra famoso for:');
  for (var i = 0; i < myListOfPets.length; i++) {
    //print(myListOfPets[i]);
    print(myListOfPets.elementAt(i));
  }

  print('______________________________________ otro for muy bonito:');
  for (var pet in myListOfPets) {
    print(pet);
  }

  print('______________________________________ el tal forEach:');
  myListOfPets.forEach((pet) {
    print(pet);
  });
  print('_____________________________________________________');

  //Pasamos de lista de Mapas a Objetos
  final myPets = [mascotaMapa, mascotaMapa2];
  var mapsToObjects = Mascota.fromListOfMaps(myPets);
  print('tenía mapas pero ahora tengo una lista de objetos $mapsToObjects\n');

  for (final pet in mapsToObjects)
    print("una mascota se llama ${pet.name} y es ${pet.animalSpecie}\n");

  //Pasamos de lista de Objetos a Mapas
  var objectsToMaps = [];
  mapsToObjects.forEach((object) {
    objectsToMaps.add(object.toMap());
  });
  print('tenía objetos pero ahora tengo una lista de mapas $objectsToMaps\n');

  // if - else
  if (myListOfPets.isNotEmpty) {
    print(myListOfPets);
  } else {
    print('myListOfPets está vacía');
  }

  //While loop
  var number = 5;
  while (number > 0) {
    number--;
    print(number);
  }
  print("tenía $number pero si le sumo 10 tengo ${number + 10}");
}

abstract class Animal {
  Animal(this.specie);

  final String specie;

  String get animalSpecie => specie;
}

class Mascota implements Animal {
  Mascota({
    required this.name,
    required this.specie,
    this.age,
    this.canReproduce,
  });

  final String name;
  final String specie;
  final int? age;
  final bool? canReproduce;

  static Mascota fromMap(Map map) => Mascota(
        name: map['name'],
        specie: map['specie'],
        age: map['age'],
        canReproduce: map['canReproduce'],
      );

  static List<Mascota> fromListOfMaps(List list) => list
      .map(
        (item) => Mascota.fromMap(item),
      )
      .toList();

  Map<String, dynamic> toMap() => {
        'name': name,
        'specie': specie,
        'age': age,
      };

  @override
  String get animalSpecie => specie;
}
