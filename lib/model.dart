class Rick {
  String info;
  List<dynamic> results;

  Rick({this.info, this.results});

  factory Rick.fromJson(Map<String, dynamic> json) => Rick(
     // info: json['info'],
      results: json['results'].map((results) => Items.fromJson(results)).toList());

  Map<String, dynamic> toJson(Rick instance) => <String, dynamic>{
        'info': instance.info,
        'results': instance.results,
      };
}

class Items {
  int id;
  String name;
  String status;
  String species;
  String gender;
  String image;

  Items(
      {this.id, this.name, this.status, this.species, this.gender, this.image});

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        id: json['id'],
        name: json['name'],
        status: json['status'],
        species: json['species'],
        gender: json['gender'],
        image: json['image'],
      );

//  Map<String, dynamic> toJson(Items instance) => <String, dynamic>{
//    'id': instance.id,
//    'name': instance.name,
//    'status': instance.status,
//    'species': instance.species,
//    'gender': instance.gender,
//    'image': instance.image,
//
//  };
}


