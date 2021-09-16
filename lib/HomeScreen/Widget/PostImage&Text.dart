import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
class PostImageText extends StatefulWidget {
  String title;
  String imageUser;
  String userName;
  String commentNmb;
  String likeNumb;
  String image;
  String date;
  PostImageText(
      {this.title,
        this.date,
        this.imageUser,
      this.userName,
      this.commentNmb,
      this.image,
      this.likeNumb});

  @override
  _PostImageTextState createState() => _PostImageTextState();
}
class _PostImageTextState extends State<PostImageText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 600,
      color: Colors.white,
      child:Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                width: 40,
              height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: NetworkImage(widget.imageUser)
                        ,fit: BoxFit.cover)
                ),
              ),
                SizedBox(width: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(widget.userName,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(widget.date,style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                        Icon(Icons.public,size: 17,color: Colors.grey,)
                    ],)
                ],),
            ],),
            Icon(Icons.more_horiz,color: Colors.grey)
          ],),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.title
              ,textAlign: TextAlign.end,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("#I_Hope_Work_With_You",style: TextStyle(color: Theme.of(context).primaryColor)
           ),
        ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.image)
                    ,fit: BoxFit.cover)
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),child: Center(child: Icon(Icons.thumb_up_alt_outlined,color: Colors.white,size: 15,),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),child: Center(child: Icon(Icons.favorite_border,color: Colors.white,size: 15,),),
                  ),
                ),
                Text(widget.likeNumb)
              ],),
              Text("${widget.commentNmb} Comments")

            ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Divider(color: Colors.grey,height: 10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Row(children: [
                FlutterReactionButtonCheck(
                  onReactionChanged: (reaction, index, isChecked) {
                    print('reaction selected index: $index');
                    },
                  reactions: <Reaction>[
                    Reaction(
                        previewIcon:Image.asset('assets/like.gif',width: 30,height: 30,),
                        icon: Image.asset('assets/like.gif',width: 30,height: 30)
                    ),
                    Reaction(
                        previewIcon:Image.asset('assets/love.gif',width: 30,height: 30,),
                        icon: Image.asset('assets/love.gif',width: 30,height: 30)
                    ),
                    Reaction(
                      previewIcon:Image.asset('assets/sad.gif',width: 30,height: 30,),
                      icon: Image.asset('assets/sad.gif',width: 30,height: 30)
                    ),
                    Reaction(
                        previewIcon:Image.asset('assets/angry.gif',width: 30,height: 30,),
                        icon: Image.asset('assets/angry.gif',width: 30,height: 30)
                    ),
                    Reaction(
                        previewIcon:Image.asset('assets/happy.gif',width: 30,height: 30,),
                        icon: Image.asset('assets/happy.gif',width: 30,height: 30)
                    ),
                    Reaction(
                        previewIcon:Image.asset('assets/wow.gif',width: 30,height: 30,),
                        icon: Image.asset('assets/wow.gif',width: 30,height: 30)
                    ),
                    ],
                  initialReaction: Reaction(
                    icon:  Icon(Icons.thumb_up_alt_outlined,color:Colors.grey,size: 30)
                  ),
                  selectedReaction: Reaction(
                    icon: Image.asset('assets/like.gif',width: 30,height: 30,),
                  ),
                ),
                Text("Like",style: TextStyle(color:Colors.grey),),

              ],),
              Row(children: [
                Icon(Icons.mode_comment_outlined,color: Colors.grey,size: 30),
                Text("Comment",),
              ],),
              Row(children: [
                Icon(Icons.reply,color: Colors.grey,textDirection: TextDirection.rtl,size: 30,),
                Text("Share",),
              ],),
            ],),
          )
      ],),
    );
  }
}
