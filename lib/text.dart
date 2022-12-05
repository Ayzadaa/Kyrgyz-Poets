import 'package:sabak9/user_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class ContentPage extends StatelessWidget {
  final User users;

  const ContentPage({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Басып откон жолу',
          style: TextStyle(color: Colors.white, fontFamily: 'Montserrat-Black'),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Card(
          margin: const EdgeInsets.all(10.0),
          color: const Color.fromARGB(255, 142, 204, 235),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(users.profilesurot),
                    radius: 60.0,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    users.aty,
                    style: const TextStyle(
                      fontFamily: 'Roboto-Black',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    users.kesibi,
                    style: const TextStyle(fontFamily: 'Roboto-Black'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(users.jashy),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      users.tajrybajolu,
                      style: const TextStyle(
                        fontFamily: 'Roboto-Italic',
                        fontSize: 15,
                        wordSpacing: 6.0,
                      ),
                    ),
                  ),
                  Link(
                    uri: Uri.parse('https://ky.wikipedia.org/wiki/'),
                    builder: (context, followLink) => TextButton(
                      onPressed: followLink,
                      child: const Text(
                        'Кененирээк... ',
                        style: TextStyle(
                            fontFamily: 'Satisfy-Regular',
                            color: Color.fromARGB(255, 80, 6, 6),
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
