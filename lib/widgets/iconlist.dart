import 'package:flutter/material.dart';
import 'package:houseapp/data/model.dart';

class IconsList extends StatefulWidget {
  @override
  _IconsListState createState() => _IconsListState();
}

class _IconsListState extends State<IconsList> {
  int selectedicon;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: icons.length,
      itemBuilder: (context , index){
        return GestureDetector(
          onTap: (){
            setState(() {
              
              selectedicon=index;
            });
          },
                  child: Container(
            margin: EdgeInsets.only(left: 6),
            width: 65,
            height: 100,
         //   color: Colors.red,
            child: Column(
              children: <Widget>[
                Container(
                  width:60 ,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: selectedicon ==index ? iconscolor[index] : iconscolor[index].withOpacity(.1)
                  ),
                  child: Center(
                    child: Icon(
                      icons[index] , 
                      color:selectedicon ==index ? Colors.white : iconscolor[index],
                    ),
                  ),
                ),SizedBox(height: 4,),
                Text(
                  iconstags[index],style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13
                  ),

                )
              ],

            ),
          ),
        );
      },
      
    );
  }
}