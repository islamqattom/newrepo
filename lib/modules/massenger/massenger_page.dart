import 'package:flutter/material.dart';

class MassengerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.red,
            ),
            SizedBox(width: 10,),
            Text('Chats',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),

          ],
        ),
        actions: [
          IconButton(icon:CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child:Icon(
            Icons.camera_alt,
              size: 20,
              color: Colors.white,
          ),), onPressed:(){}),
          IconButton(icon: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 20,
            child: Icon(
              Icons.edit,
              size: 20,
              color: Colors.white,
            ),
          ), onPressed: (){})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10,),
                    Text('Search'),
                  ],
                ),
          ),
              SizedBox(height: 10,),
              Container(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder:(context,index)=>BuildStoryItems(),
                      separatorBuilder:(context,index)=>SizedBox(width: 20,),
                      itemCount: 7),
                ), 
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap:true,
                    itemBuilder:(context,index)=>BuildChatItems(),
                    separatorBuilder: (contex,index)=>SizedBox(height: 20,),
                    itemCount: 15),
            ],
          ),
        ),
      )
    );
  }
}

Widget BuildChatItems()=>Row(
  children: [
    CircleAvatar(
      radius: 30,
      backgroundColor: Colors.red,

    ),
    SizedBox(width: 5,),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('islam qattom',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Expanded(
                child: Text('my name is islam tariq qattom islam tariq qattom',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.blue,
                ),
              ),
              Text('2:00 pm',
                maxLines: 1,),
            ],
          )

        ],
      ),
    )
  ],
);
Widget BuildStoryItems()=>Container(
  width: 60,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.red,
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: Colors.green,
          )
        ],
      ),
      Text('abdullah mansour ali mansour',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  ),
);