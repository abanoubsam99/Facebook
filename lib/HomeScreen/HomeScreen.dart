import 'dart:math';

import 'package:facebook/HomeScreen/Widget/CreatePost.dart';
import 'package:facebook/HomeScreen/Widget/CreateRoom.dart';
import 'package:facebook/HomeScreen/Widget/PostImage&Text.dart';
import 'package:facebook/HomeScreen/Widget/PostMultiImage&Text.dart';
import 'package:facebook/HomeScreen/Widget/PostText.dart';
import 'package:facebook/HomeScreen/Widget/Story.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(0),
      children: [
        CreatePost(),
      SizedBox(height: 10,),
        CreateRoom(),
      SizedBox(height: 10,),
        Story(),
      SizedBox(height: 10,),
      PostImageText(
        title: "ده تيست مشابه للشغل اللي بيتعمل في الشركه حاليا ممكن تجهزه و تبعتلي تاني علي الواتس وهانحدد ميعاد نتكلم فيه عن الشغل اللي اتعمل في التيست واللي بناء عليه نقدر نحدد امكانيه الشغل معانااخر ميعاد لتقديم الكود يوم الخميس ١٦/٩",
        userName: "Abanoub Samy",
        commentNmb: "180",
        imageUser:"https://image.freepik.com/free-photo/excited-young-girl-yellow-sweater-fooling-around-studio-jumping-with-fluttering-hair-isolated-yellow-wall_273443-4610.jpg" ,
        likeNumb: "500K",
        image: "https://image.freepik.com/free-photo/three-young-beautiful-smiling-girls-trendy-summer-casual-jeans-clothes-sexy-carefree-women-posing-positive-models-sunglasses_158538-4730.jpg",
          date:"May 29 ."
      ),
        SizedBox(height: 10,),
        PostImageText(
            title: "ده تيست مشابه للشغل اللي بيتعمل في الشركه حاليا ممكن تجهزه و تبعتلي تاني علي الواتس وهانحدد ميعاد نتكلم فيه عن الشغل اللي اتعمل في التيست واللي بناء عليه نقدر نحدد امكانيه الشغل معانااخر ميعاد لتقديم الكود يوم الخميس ١٦/٩",
            userName: "Sara Maher",
            commentNmb: "25",
            imageUser:"https://img.freepik.com/free-photo/group-beautiful-girls-boys-pastel-wall_155003-10578.jpg?size=338&ext=jpg" ,
            likeNumb: "50",
            image: "https://image.freepik.com/free-photo/closeup-shot-young-european-female-turquoise-blouse_181624-49974.jpg",
            date:"February 1 ."
        ),
        SizedBox(height: 10,),
        PostImageText(
          title: "ده تيست مشابه للشغل اللي بيتعمل في الشركه حاليا ممكن تجهزه و تبعتلي تاني علي الواتس وهانحدد ميعاد نتكلم فيه عن الشغل اللي اتعمل في التيست واللي بناء عليه نقدر نحدد امكانيه الشغل معانااخر ميعاد لتقديم الكود يوم الخميس ١٦/٩",
          userName: "Mena Emad",
          commentNmb: "369",
          imageUser:"https://image.freepik.com/free-photo/stylish-man-hat-sunglasses_136403-4135.jpg" ,
          likeNumb: "580",
          image: "https://img.freepik.com/free-photo/young-handsome-man-choosing-clothes-shop_1303-19720.jpg?size=338&ext=jpg",
            date:"Aug 29 ."
        ),
        SizedBox(height: 10,),
        PostText(
            title: "ده تيست مشابه للشغل اللي بيتعمل في الشركه حاليا ممكن تجهزه و تبعتلي تاني علي الواتس وهانحدد ميعاد نتكلم فيه عن الشغل اللي اتعمل في التيست واللي بناء عليه نقدر نحدد امكانيه الشغل معانااخر ميعاد لتقديم الكود يوم الخميس ١٦/٩",
            userName: "Menna Hasan",
            commentNmb: "637",
            imageUser:"https://image.freepik.com/free-photo/full-length-shot-glad-curly-woman-striped-pants-jumping-purple-wall-indoor-portrait-wonderful-girl-sunglasses-fooling-around_197531-5125.jpg" ,
            likeNumb: "789",
            date:"Aug 29 ."
        ),
      SizedBox(height: 10,),
        PostText(
          title: "ده تيست مشابه للشغل اللي بيتعمل في الشركه حاليا ممكن تجهزه و تبعتلي تاني علي الواتس وهانحدد ميعاد نتكلم فيه عن الشغل اللي اتعمل في التيست واللي بناء عليه نقدر نحدد امكانيه الشغل معانااخر ميعاد لتقديم الكود يوم الخميس ١٦/٩",
          userName: "Maged Michel",
          commentNmb: "777",
          imageUser:"https://image.freepik.com/free-photo/guy-suit-sits-chair-holds-book_197531-23264.jpg" ,
          likeNumb: "982",
            date:"March 18 ."
        ),
      SizedBox(height: 10,),
        PostMultiImageText(
          title: "ده تيست مشابه للشغل اللي بيتعمل في الشركه حاليا ممكن تجهزه و تبعتلي تاني علي الواتس وهانحدد ميعاد نتكلم فيه عن الشغل اللي اتعمل في التيست واللي بناء عليه نقدر نحدد امكانيه الشغل معانااخر ميعاد لتقديم الكود يوم الخميس ١٦/٩",
          userName: "Mena Adli",
          commentNmb: "3K",
          imageUser:"https://image.freepik.com/free-photo/stylish-man-hat-sunglasses_136403-4135.jpg" ,
          likeNumb: "57K",
          image: "https://img.freepik.com/free-photo/young-handsome-man-choosing-clothes-shop_1303-19720.jpg?size=338&ext=jpg",
          image2: "https://img.freepik.com/free-photo/attractive-stylish-blonde-woman-beige-coat-walking-street-against-vintage-wall_285396-8100.jpg?size=338&ext=jpg",
          date:"May 15 ."
        ),
        SizedBox(height: 10,),
        PostMultiImageText(
            title: "ده تيست مشابه للشغل اللي بيتعمل في الشركه حاليا ممكن تجهزه و تبعتلي تاني علي الواتس وهانحدد ميعاد نتكلم فيه عن الشغل اللي اتعمل في التيست واللي بناء عليه نقدر نحدد امكانيه الشغل معانااخر ميعاد لتقديم الكود يوم الخميس ١٦/٩",
            userName: "Ahmed Ali",
            commentNmb: "1",
            imageUser:"https://image.freepik.com/free-photo/male-designer-leather-tailor-working-factory_1303-26305.jpg" ,
            likeNumb: "5",
            image: "https://img.freepik.com/free-photo/beautiful-men-fashion-wooden-background_74190-2613.jpg?size=338&ext=jpg",
            image2: "https://image.freepik.com/free-photo/young-handsome-bearded-man_1303-9969.jpg",
            date:"February 9 ."
        ),

    ],);
  }
}
