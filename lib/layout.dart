import 'package:flutter/material.dart';
import 'package:lavie/signup.dart';
import 'package:lavie/login.dart';


import 'login.dart';
class LayOut extends StatefulWidget {
  const LayOut({Key? key}) : super(key: key);

  @override
  State<LayOut> createState() => _LayOutState();
}
int currentPage = 0;
PageController controller = PageController();
// ignore: non_constant_identifier_names
List<Widget>Screens = [
  LoginPage(),
  const SignupPage()
];
class _LayOutState extends State<LayOut> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body:  SafeArea(
            child: Column(
              children:
              [
                Container(
                    height: 100,
                    child: const Align(alignment: Alignment.topRight,child: Image(image: AssetImage('assets/image 68 (Traced).png'),width: 100,))),
                Container(
                    width: 80,
                    child: const Image(image: AssetImage('assets/img.png'))),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.green,
                      tabs:  [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("login" , style: TextStyle(
                              fontSize: 20 ,
                              color:Colors.green
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("sign in " , style: TextStyle(
                              fontSize: 20 ,
                              color:Colors.green
                          ),),
                        ),
                      ]
                  ),
                ),

                Expanded(

                  child: TabBarView(
                    children: Screens,
                  ),
                ),

              ],

            ),
          )
      ),
    );
  }
}