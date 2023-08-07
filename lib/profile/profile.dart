import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/services/auth.dart';
import 'package:quizapp/services/models.dart';
import 'package:quizapp/shared/loading.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var report = Provider.of<Report>(context);
    var user = AuthService().user;

    if(user != null) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(user.displayName ?? 'Guest'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(user.photoURL ?? 'https://www.gravatar.com/avatar/placeholder'),
                  ),
                ),
              ),
              Text(
                user.email ?? 'N/A',
                style: Theme.of(context).textTheme.headline6,
              ),
              const Spacer(),
              Text(
                '${report.total}',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'Quizzes Completed',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const Spacer(),
              ElevatedButton(
                child: const Text('Logout'),
                onPressed: () async {
                  await AuthService().signOut();
                  Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    } else {
      return const Loader();
    }
  }
}