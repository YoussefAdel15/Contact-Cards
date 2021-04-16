import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            actions: <Widget>[
              IconButton(icon:Icon(Icons.add), onPressed:()=>Contact(
              ),
              ),

            ],
          title: Text('Contacts'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
          body: Container(
            child: Column(
              children: [
                Contact(
                  name: 'Youssef Adel Farag',
                  phone: '01568484464',
                  email: 'youssefadel22022@gmail.com',
                  icon: 'https://www.pngitem.com/pimgs/m/78-786293_1240-x-1240-0-avatar-profile-icon-png.png',
                ),
                Contact(
                  name: 'Another Contact 1',
                  phone: '056181648',
                  email: 'hdvwaidvihvawd@gmail.com',
                  icon: 'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
                ),
                Contact(
                  name: 'Another Contact 2',
                  phone: '16519811',
                  email: 'jafnoneaofoanf@yahoo.com',
                  icon: 'https://cdn0.iconfinder.com/data/icons/social-media-network-4/48/male_avatar-512.png',
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

class Contact extends StatelessWidget {
  String name , phone , email , icon ;
  Contact({this.name,this.phone,this.email, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 150.0,
      margin: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white70,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(this.icon)
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 250.0,
                    ),
                    Icon(Icons.edit),
                  ],
                ),
                Text(this.name,
                  style: TextStyle(
                   fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                ),
                Row(
                  children: [
                    Icon(Icons.phone_android_outlined),
                    Text(this.phone,
                    style: TextStyle(
                        fontSize: 17.0,
                    )
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.mail_outline_outlined),
                    Text(this.email,
                    style: TextStyle(
                        fontSize: 17.0,
                    ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}