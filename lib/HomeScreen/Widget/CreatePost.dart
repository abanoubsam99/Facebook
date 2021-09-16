import 'package:flutter/material.dart';
class CreatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return       Container(
        width: MediaQuery.of(context).size.width,
        height: 115,
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: NetworkImage("https://image.freepik.com/free-photo/handsome-young-businessman-shirt-eyeglasses_85574-6228.jpg"),fit: BoxFit.cover)
                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                child: Container(height: 40,
                  decoration:BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Text("What\'s on your mind?"),
                  )

                  ,),
              ),
              SizedBox(width: 5,),
            ],),
          ),
          Divider(color: Colors.grey,height: 5,),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [
                    Icon(Icons.camera_alt,color: Colors.redAccent,),
                    Text("Live")
                  ],),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: VerticalDivider(color: Colors.grey,width: 5,),
                  ),                Row(children: [
                    Icon(Icons.photo_library_outlined,color: Colors.green,),
                    Text("Photo")
                  ],),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: VerticalDivider(color: Colors.grey,width: 5,),
                  ),
                  Row(children: [
                    Icon(Icons.photo_camera_front,color: Colors.deepPurpleAccent,),
                    Text("Room")
                  ],),
                ],),
            ),
          ),

        ],)
    );
  }
}
