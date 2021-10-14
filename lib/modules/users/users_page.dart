import 'package:flutter/material.dart';
import 'package:training/models/user/user_model.dart';

class UsersPage extends StatelessWidget {
List<UserModel>users=[
  UserModel(id:1,
      name:'islam qattom',
      number:'0781404501',),
  UserModel(id:1,
    name:'islam om',
    number:'07804501',),
  UserModel(id:1,
    name:'iam qattom',
    number:'01404501',),
  UserModel(id:1,
    name:'islamqattom',
    number:'07814045',),
  UserModel(id:1,
    name:'islam qattom',
    number:'0781404501',),
  UserModel(id:1,
    name:'islam qattom',
    number:'0781404501',),
  UserModel(id:1,
    name:'islam qattom',
    number:'0781404501',),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Users',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:ListView.separated(itemBuilder:(context,index)=>BuildUserItems(users[index]),
            separatorBuilder: (context,index)=>Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey,
              ),
            ),
            itemCount: users.length) ,
      ),
      
    );
  }
}
Widget BuildUserItems(UserModel user)=>Row(
  children: [
    CircleAvatar(
      radius: 20,
      backgroundColor: Colors.blue,
      child:
      Text('${user.id}',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    SizedBox(width: 10,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('${user.name}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 5,),
        Text('${user.number}'),
      ],
    ),
  ],
);