import 'package:flutter/material.dart';
import 'package:sabak9/text.dart';
import 'package:sabak9/user_data.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late String userTodo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Кыргыз токмо акындары'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ContentPage(
                          users: users[index],
                        )),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: Color.fromARGB(255, 131, 170, 243),
              child: ListTile(
                title: Text(users[index].aty),
                subtitle: Text(users[index].kesibi),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(users[index].profilesurot),
                  radius: 30.0,
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          );
        },
      ),
    );
  }
}
