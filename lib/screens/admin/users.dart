import 'package:dpm_aplicacion_flutter/microservices/catalogo/providers/provider_users.dart';
import 'package:dpm_aplicacion_flutter/screens/admin/user_details.dart';
import 'package:dpm_aplicacion_flutter/components.ui/navigation.dart';
import 'package:flutter/material.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  _UsersListScreenState createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  late Future<List<User>> futureUsers;
  final items = List.generate(30, (i) => i);
  String title = ('Usuarios');

  @override
  void initState() {
    super.initState();
    futureUsers = UsersDataModel().getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerNav(title: title, context: context),
      body: Center(
          child: FutureBuilder<List<User>>(
        future: futureUsers,
        builder: ((context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  User user = snapshot.data?[index];
                  String firstName = user.firstName;
                  String lastName = user.lastName;
                  return ListTile(
                      title: Text(user.email),
                      subtitle: Text('$firstName $lastName'),
                      trailing: const Icon(Icons.chevron_left_outlined),
                      onTap: (() => {openPage(context, user)}));
                },
                separatorBuilder: (context, index) {
                  return const Divider(color: Colors.blueAccent);
                },
                itemCount: snapshot.data!.length);
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          return const CircularProgressIndicator();
        }),
      )),
      drawer: drawerHeaderNav(title: title, context: context),
    );
  }
}

openPage(context, User user) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => UserDetails(
                user: user,
              )));
}
