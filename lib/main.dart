import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: const Text('Diana Leyva Mat: 1071'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.home, color: Colors.white),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          const Icon(Icons.person, color: Colors.white, size: 30),
                          Positioned(
                            left: 2,
                            bottom: 2,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.add, size: 10, color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Container(
                        width: 20,
                        height: 2,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Icon(Icons.notifications, color: Colors.white),
                  const Icon(Icons.menu, color: Colors.white),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  UserCard(name: 'Junaid Durrani', role: 'Programmer', imageUrl: 'Captura.PNG'),
                  UserCard(name: 'Ahmed Khan', role: 'Data Scientist', imageUrl: 'Captura.PNG'),
                  UserCard(name: 'Aqib', role: 'Project Manager', imageUrl: 'Captura.PNG'),
                  UserCard(name: 'Zaid', role: 'Team Leader', imageUrl: 'Captura.PNG'),
                  UserCard(name: 'Saqib', role: 'Developer', imageUrl: 'Captura.PNG'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;

  const UserCard({super.key, required this.name, required this.role, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(role),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100],
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: const Text('Invite'),
        ),
      ),
    );
  }
}
