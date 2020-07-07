import 'package:flutter/material.dart';
import 'package:houseapp/data/model.dart';
import 'package:houseapp/widgets/iconlist.dart';

class Detailed extends StatefulWidget {
  final Model mydetails;
  const Detailed({Key key, this.mydetails}) : super(key: key);

  @override
  _DetailedState createState() => _DetailedState();
}

class _DetailedState extends State<Detailed> {
    String info ='The arrangement and layout of the villa maximizes natural light , opening to elegant private balconis, which provide residents whit outdoor liverage agile framework to provide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(26),
                    bottomLeft: Radius.circular(26),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        widget.mydetails.img

                      ))),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40.0, right: 15, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                                                  child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                                size: 17,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.notifications_none,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 220.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.mydetails.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  widget.mydetails.location,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 26,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
           // SizedBox(height: 10,),
            Expanded(
              child: Container(
           //     color: Colors.red,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 15.0 , left: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                   //   color: Colors.blue,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 66,
                            height: 66,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                      //        color: Colors.red,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/charcter.jpg')
                              )
                            ),
                          ),
                          SizedBox(width: 17.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 16,),
                              Text(
                             widget.mydetails.ownername,   // owner name
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Property Owner',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            ],
                          ),
                          SizedBox(width: 20.0),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Colors.grey.withOpacity(.4),
                                width: 1,
                              )
                            ),
                            child: Center(
                              child: Icon(Icons.phone_in_talk ,size: 17, color: Colors.pinkAccent,),
                            ),
                          ),SizedBox(width: 10,),
                           Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Colors.grey.withOpacity(.4),
                                width: 1,
                              )
                            ),
                            child: Center(
                              child: Icon(Icons.mail ,size: 17, color: Colors.green.withOpacity(.7),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10 , left: 25 , right: 8 , bottom: 3) , 
                    child: Row(
                      children: <Widget>[
                        Text(
                          '\$ ${widget.mydetails.price}'
                  ,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .30),
                Container(
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
                ),SizedBox(width: 10,),
                Container(
                  width: 60,
                  height: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.star , color: Colors.white , size: 14,),
                        Text(
                      "${widget.mydetails.rate}",
                      style: TextStyle(
                        color: Colors.white , fontWeight: FontWeight.w600 , fontSize: 13
                      ),
                      )
                      ]
                    )
                  ),
                )
                      ],
                    ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 22 , top: 18 , right: 18),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .17,
                    //  color: Colors.green,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(info , style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.black.withOpacity(.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.only(left: 16),
                      width: MediaQuery.of(context).size.width,
                      height:90,
                 //     color: Colors.blueAccent,
                      child: IconsList(),
                    )
                  ],
                ),
              )
              )
          ],
        ),
      ),
    );
  }
}
