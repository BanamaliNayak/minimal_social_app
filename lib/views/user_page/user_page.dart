import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:newapp/components/my_list_tile.dart';
import 'package:newapp/helper/helper_functions.dart';

import '../../components/my_back_button.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("Users").snapshots(),
          builder: (context, snapshot) {
            // any errors
            if (snapshot.hasError) {
              displayMessageToUser("Something went wrong", context);
            }

            // show loading circle
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.data == null) {
              return const Text('No data');
            }

            // get all users
            final users = snapshot.data!.docs;

            return Column(
              children: [
                // Back button
                const Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 25.0),
                  child: Row(
                    children: [
                      MyBackButton(),
                    ],
                  ),
                ),

                // list of users in the app
                Expanded(
                  child: ListView.builder(
                      itemCount: users.length,
                      padding: const EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        // get individual user
                        final user = users[index];
                        
                        // get data from each user
                        String username = user['username'];
                        String email = user['email'];
                        return MyListTile(title: username, subTitle: email);
                      }),
                ),
              ],
            );
          }),
    );
  }
}
