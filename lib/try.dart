import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cal_sgpa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        print('CGPA');
                      },
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.netclipart.com/pp/m/16-165662_graduation-icons-clipart-graduation-hat-icon-png.png'),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 10),
                                ),
                              ],
                            ),
                            height: 140,
                            width: 200,
//                        child: Stack(
//                          children: <Widget>[
//                            Container(
//                              child: Image.network(
//                                'https://www.netclipart.com/pp/m/16-165662_graduation-icons-clipart-graduation-hat-icon-png.png',
//                              ),
//                            ),
//                          ],
//                        ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 110, left: 80),
                            child: Text('CGPA',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Text('CGPA'),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => calSgpaPage(),
                      ));
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.netclipart.com/pp/m/16-165662_graduation-icons-clipart-graduation-hat-icon-png.png'),
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 15.0,
                                offset: Offset(0.0, 10),
                              ),
                            ],
                          ),
                          height: 140,
                          width: 200,
//                        child: Stack(
//                          children: <Widget>[
//                            Container(
//                              child: Image.network(
//                                'https://www.netclipart.com/pp/m/16-165662_graduation-icons-clipart-graduation-hat-icon-png.png',
//                              ),
//                            ),
//                          ],
//                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 110, left: 80),
                          child: Text('CGPA',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
                  ),
                  //Text('SGPA'),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.black,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
