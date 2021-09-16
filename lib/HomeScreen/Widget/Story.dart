import 'package:flutter/material.dart';
class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return       Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _storyList.length,
          itemBuilder: (context, i) {
            return
              i==0?
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 10),
                child: Container(
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.1, .1), //(x,y)
                          blurRadius: 1.0,
                        ),
                      ]
                  ),
                  child: Stack(children: [
                    Container(
                      width: 90,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                          image: DecorationImage(image: NetworkImage("https://image.freepik.com/free-photo/young-woman-suit-standing-by-scooter_1303-11931.jpg")
                              ,fit: BoxFit.cover)
                      ),
                    ),
                    Positioned(
                        top: 105,
                        right: 30,
                        left: 30,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(child: Icon(Icons.add,color: Colors.white,),),
                        )),

                    Positioned(
                        bottom: 5,
                        right: 5,
                        left: 5,
                        child: Text("Create Story",))

                  ],),
                ),
              )
                  :Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage(_storyList2[i])
                          ,fit: BoxFit.cover)
                  ),child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue[800]),
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(image: NetworkImage(_storyList[i])
                                  ,fit: BoxFit.cover)
                          )
                      ),
                      Text("Mira Samy",style: TextStyle(color: Colors.white),)
                    ],),
                ),
                ),
              );
          }),
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

final List<String> _storyList2 = [
  'https://image.freepik.com/free-photo/attractive-woman-stylish-outfit-walking-city-street-fashion-spring-summer-trend-smiling-happy-mood-wearing-pink-jacket-blouse-spinning-around-exited-fashionista-shopping_285396-4492.jpg',
  "https://image.freepik.com/free-photo/excited-young-girl-yellow-sweater-fooling-around-studio-jumping-with-fluttering-hair-isolated-yellow-wall_273443-4610.jpg",
  'https://image.freepik.com/free-photo/young-handsome-bearded-man_1303-9969.jpg',
  'https://img.freepik.com/free-photo/portrait-charismatic-beaded-guy-white-sweater-assure-you-winking-showing-okay-sign-guar_1258-64213.jpg?size=338&ext=jpg',
  'https://image.freepik.com/free-photo/blithesome-caucasian-woman-with-trendy-makeup-posing-with-smile-indoor-shot-adorable-white-lady-vintage-clothes_197531-11511.jpg',
  "https://image.freepik.com/free-photo/excited-young-girl-yellow-sweater-fooling-around-studio-jumping-with-fluttering-hair-isolated-yellow-wall_273443-4610.jpg",
  'https://image.freepik.com/free-photo/young-handsome-bearded-man_1303-9969.jpg',
  'https://img.freepik.com/free-photo/portrait-charismatic-beaded-guy-white-sweater-assure-you-winking-showing-okay-sign-guar_1258-64213.jpg?size=338&ext=jpg',
  'https://image.freepik.com/free-photo/blithesome-caucasian-woman-with-trendy-makeup-posing-with-smile-indoor-shot-adorable-white-lady-vintage-clothes_197531-11511.jpg',
  'https://image.freepik.com/free-photo/cheerful-laughing-girl-with-cute-flower-light-brown-hair-posing-horizon-views-gorgeous-young-woman-white-outfit-enjoying-her-vacation-resort-spending-time-fresh-air_197531-3197.jpg',
  'https://image.freepik.com/free-photo/stylish-happy-attractive-smiling-woman-posing-desert-sand-dressed-white-clothes-wearing-straw-hat-sunglasses-sunset_285396-9188.jpg'
 'https://image.freepik.com/free-photo/cheerful-laughing-girl-with-cute-flower-light-brown-hair-posing-horizon-views-gorgeous-young-woman-white-outfit-enjoying-her-vacation-resort-spending-time-fresh-air_197531-3197.jpg',
  'https://image.freepik.com/free-photo/stylish-happy-attractive-smiling-woman-posing-desert-sand-dressed-white-clothes-wearing-straw-hat-sunglasses-sunset_285396-9188.jpg'
      'https://image.freepik.com/free-photo/attractive-woman-stylish-outfit-walking-city-street-fashion-spring-summer-trend-smiling-happy-mood-wearing-pink-jacket-blouse-spinning-around-exited-fashionista-shopping_285396-4492.jpg'
];