import 'package:flutter/material.dart';
import 'package:flutter_rivesion/sqlit_tut/db_handeler.dart';
import 'package:flutter_rivesion/sqlit_tut/model.dart';

class SQLhome extends StatefulWidget {
  const SQLhome({Key? key}) : super(key: key);

  @override
  State<SQLhome> createState() => _SQLhomeState();
}

class _SQLhomeState extends State<SQLhome> {
  DBhelper? dBhelper;
  late Future<List<NoteModel>> notesList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dBhelper = DBhelper();
    loadData();
  }

  loadData() async {
    notesList = dBhelper!.getNotesList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQLit"),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: notesList,
                builder: (context, AsyncSnapshot<List<NoteModel>> snapshot) {

                  if(snapshot.hasData){
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        // reverse: true,
                        // shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Dismissible(
                            direction: DismissDirection.endToStart,
                            background: Container(
                              child: Icon(Icons.delete_forever),
                              color: Colors.orangeAccent,
                            ),
                            onDismissed: (DismissDirection direction) {
                              setState(() {
                                dBhelper!.delete(snapshot.data![index].id!);
                                notesList = dBhelper!.getNotesList();
                                snapshot.data!.remove(snapshot.data![index]);
                              });
                            },
                            key: ValueKey<int>(snapshot.data![index].id!),
                            child: Card(
                              child: ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:
                                Text(snapshot.data![index].titel.toString()),
                                subtitle: Text(
                                    snapshot.data![index].description.toString()),
                                trailing:
                                Text(snapshot.data![index].age.toString()),
                              ),
                            ),
                          );
                        });
                  }else{
                    return CircularProgressIndicator();
                  }

                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dBhelper!
              .insert(NoteModel(
                  titel: "Seconde Sqlit",
                  age: 22,
                  description: "this is first Sqlit app biugiu",
                  email: "prajapati@gmail.com"))
              .then((value) {
            print("Data Added");
            setState(() {
              notesList = dBhelper!.getNotesList();
            });
          }).onError((error, stackTrace) {
            print(error.toString());
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
