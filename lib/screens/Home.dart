import 'package:flutter/material.dart';
import 'package:houseapp/widgets/list.dart';
import 'package:houseapp/widgets/shape.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        //  color: Colors.blueAccent,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .33,
            //  color: Colors.red,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                   //     color: Colors.blue,
                        height: MediaQuery.of(context).size.height * .25,
                        width: MediaQuery.of(context).size.width * .7,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/house7.jpg')
                          )
                        ),
                      )),
                  Positioned(
                      top: 25,
                      child: Container(
                        padding: EdgeInsets.only(right: 14, left: 14),
                  //      color: Colors.green,
                        height: MediaQuery.of(context).size.height * .1,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.dashboard,
                              size: 26,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.red,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/charcter.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                    left: -9,
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * .9,
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(40)),
                          color: Colors.pinkAccent.withOpacity(.8)),
                    ),
                  ),
                  Positioned(
                    left: -12,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0),
                      width: MediaQuery.of(context).size.width * .8,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(30)),
                          color: Colors.pinkAccent.withOpacity(.6)),
                      child: Center(
                        child: Text(
                          'Discover Your dream Property!',
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                              fontSize: 25),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width:MediaQuery.of(context).size.width * .92,
                          child: TextFormField(
                decoration: InputDecoration( 
                    suffixIcon: Icon(
                      Icons.search,
                      size: 24,
                    ),
                 //   fillColor: Colors.white.withOpacity(.4),
                 //   filled: true,
                    labelText: "Monterial , canda"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 9),
              padding: EdgeInsets.only(left: 10.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .06,
          //    color: Colors.red,
              child:Row(
                children: <Widget>[
                  Container(
                    width: 66,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: Colors.greenAccent
                    ),
                    child: Center(
                      child: Text('villa' , style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                  ),SizedBox(width: 10,),
                  Container(
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.greenAccent
                    ),
                    child:  Center(
                      child: Text('5-6 Beds' , style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                  ),SizedBox(width: 10,),
                  Icon(Icons.storage , color: Colors.grey,)
                ],
              ),
            ),
            Container(
               margin: EdgeInsets.only(top: 9),
              padding: EdgeInsets.only(left: 10.0 , right: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .07,
          //    color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('18 Result found' , 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                  ),),
                  Icon(Icons.linear_scale , color: Colors.black,)
                ],
              ),
            ),
            Expanded(
              child: Container(
             //   color: Colors.green,
                child: MyList(),
              )
              )
          ],
        ),
      ),
    );
  }
}
