import 'package:flutter/material.dart';
import 'package:houseapp/data/model.dart';
import 'package:houseapp/screens/detailed.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    scrollDirection: Axis.horizontal,
      itemCount: itemlist.length,
      itemBuilder: (context , i){
        return GestureDetector(
          onTap: (){
            Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Detailed(mydetails: itemlist[i]),
          )
          );
          },
                  child: Stack(
      children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 14 , right: 10 , top: 20),
            width: 170,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.33),
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset: Offset(0, 1)
                )
              ]
          
            ),
            child: Column(
              children: <Widget>[
                Container(
              width: 170,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                 topRight: Radius.circular(25),
                 topLeft: Radius.circular(25)
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    itemlist[i].img
                  )
                )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              width: 140,
              height: 90,
             // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemlist[i].name,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on , color: Colors.grey,),SizedBox(width: 4,),
                      Text(
                    itemlist[i].location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                    ),
                  ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    '\$ ${ itemlist[i].price}',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    ),
                  ),

                ],
              ),
            )
              ],
            ),
          ),
          Positioned(
            top: 130,
            left: 30,
            child: Container(
                  width: 60,
                  height: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      'sale',style: TextStyle(
                        color: Colors.white , fontWeight: FontWeight.w600 , fontSize: 13
                      ),

                    ),
                  ),
                )
            ),
          Positioned(
            bottom: 40.5,
            right: 10.5,
            child: Container(
              width: 50,
              height: 40,
              
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(20),
                )
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward , color: Colors.white,
                ),
              ),
            )
            )


      ],
    ),
        );
      }
      );
  }
}