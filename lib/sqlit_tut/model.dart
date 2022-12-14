class NoteModel {
  final int? id;
  final String titel;
  final int age;
  final String description;
  final String email;

  NoteModel({
    this.id,
    required this.titel,
    required this.age,
    required this.description,
    required this.email});

  NoteModel.fromMap(Map<String , dynamic> res):
        id = res['id'],
        titel = res['titel'],
        age = res['age'],
        description = res['description'],
        email = res['email'];

  Map<String, Object?> toMap(){
    return{
      'id' : id,
      'titel' : titel,
      'age' : age,
      'description' : description,
      'email' : email
    };
  }


}