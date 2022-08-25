import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  // var _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 30),
              alignment: AlignmentDirectional.bottomStart,
              child: Text("Email ",
                style: TextStyle(color: Colors.grey[700], fontSize: 15),),),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.only(right: 30,left: 30),
              height: 45,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(left: 30),
              alignment: AlignmentDirectional.bottomStart,
              child: Text("Password", style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700],
              ),),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(right: 30,left: 30),
              height: 45,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 5,),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff1ABC00)
                      ),
                      onPressed: () {}
                      , child: Text("Login", style: TextStyle(
                    fontSize: 15,
                  ),))
              ),
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 40,
                  ),
                  width: 130,
                  child: Expanded(
                    child: Divider(thickness: 2, endIndent: 10,),),
                ),
                Text("or countinue with ", style: TextStyle(fontSize: 12,
                    color: Colors.grey),),
                Container(
                    padding: EdgeInsets.only(left: 4),
                    width: 105,
                    child: Expanded(
                      child: Divider(thickness: 2, endIndent: 10,),)),
              ],
            ),
            // SizedBox(
            //   height: 60,
            // ),
            Container(
              padding: EdgeInsets.only(left: 130),
              child: Row(
                children: [
                  Transform.scale(
                      scale: .7,
                      child: IconButton(onPressed: () {},
                        icon: Image.asset("assets/google.png"),)),
                  // SizedBox(width: 3,),

                  Transform.scale(
                    scale: .7,
                    child: IconButton(onPressed: () {},
                      icon: Image.asset("assets/facbook.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 63,),
            Align(alignment: Alignment.bottomLeft,child: Image (image: const AssetImage('assets/image 68 (Traced)2.png')))
          ],),
      ),);
  }
}