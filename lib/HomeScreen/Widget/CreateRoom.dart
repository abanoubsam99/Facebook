import 'package:flutter/material.dart';
class CreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return       Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      height: 70,
      child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
            child: Text("Audio and Video Rooms",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _storyList.length,
                  itemBuilder: (context, i) {
                    return
                      i==0?
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 7),
                        child: Container(
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.blue.withOpacity(.1),
                          ),
                          child: Center(child: Text("Create Room",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold),),),
                        ),
                      )
                          :Padding(
                          padding: const EdgeInsets.all(5),
                          child: Stack(children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage(_storyList[i])
                                      ,fit: BoxFit.cover)
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                width: 17,
                                height: 17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white),
                              ),
                            ),
                            Positioned(
                              right: 1,
                              bottom: 1,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green),
                              ),
                            ),
                          ],)
                      );
                  }),
            ),
          )
        ],),
    );
  }
}
final List<String> _storyList = [
  "https://image.freepik.com/free-photo/excited-young-girl-yellow-sweater-fooling-around-studio-jumping-with-fluttering-hair-isolated-yellow-wall_273443-4610.jpg",
  'https://image.freepik.com/free-photo/young-handsome-bearded-man_1303-9969.jpg',
  'https://img.freepik.com/free-photo/portrait-charismatic-beaded-guy-white-sweater-assure-you-winking-showing-okay-sign-guar_1258-64213.jpg?size=338&ext=jpg',
  'https://image.freepik.com/free-photo/blithesome-caucasian-woman-with-trendy-makeup-posing-with-smile-indoor-shot-adorable-white-lady-vintage-clothes_197531-11511.jpg',
  'https://image.freepik.com/free-photo/cheerful-laughing-girl-with-cute-flower-light-brown-hair-posing-horizon-views-gorgeous-young-woman-white-outfit-enjoying-her-vacation-resort-spending-time-fresh-air_197531-3197.jpg',
  'https://image.freepik.com/free-photo/stylish-happy-attractive-smiling-woman-posing-desert-sand-dressed-white-clothes-wearing-straw-hat-sunglasses-sunset_285396-9188.jpg'
  'https://image.freepik.com/free-photo/attractive-woman-stylish-outfit-walking-city-street-fashion-spring-summer-trend-smiling-happy-mood-wearing-pink-jacket-blouse-spinning-around-exited-fashionista-shopping_285396-4492.jpg',
  "https://image.freepik.com/free-photo/excited-young-girl-yellow-sweater-fooling-around-studio-jumping-with-fluttering-hair-isolated-yellow-wall_273443-4610.jpg",
  'https://image.freepik.com/free-photo/young-handsome-bearded-man_1303-9969.jpg',
  'https://img.freepik.com/free-photo/portrait-charismatic-beaded-guy-white-sweater-assure-you-winking-showing-okay-sign-guar_1258-64213.jpg?size=338&ext=jpg',
  'https://image.freepik.com/free-photo/blithesome-caucasian-woman-with-trendy-makeup-posing-with-smile-indoor-shot-adorable-white-lady-vintage-clothes_197531-11511.jpg',
  'https://image.freepik.com/free-photo/cheerful-laughing-girl-with-cute-flower-light-brown-hair-posing-horizon-views-gorgeous-young-woman-white-outfit-enjoying-her-vacation-resort-spending-time-fresh-air_197531-3197.jpg',
  'https://image.freepik.com/free-photo/stylish-happy-attractive-smiling-woman-posing-desert-sand-dressed-white-clothes-wearing-straw-hat-sunglasses-sunset_285396-9188.jpg'
      'https://image.freepik.com/free-photo/attractive-woman-stylish-outfit-walking-city-street-fashion-spring-summer-trend-smiling-happy-mood-wearing-pink-jacket-blouse-spinning-around-exited-fashionista-shopping_285396-4492.jpg'
];
