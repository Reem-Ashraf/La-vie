import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    alignment: AlignmentDirectional.bottomStart,
                    child: Text("First Name ",
                      style: TextStyle(color: Colors.grey[700], fontSize: 15),),),
                  const SizedBox(width: 51,),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    alignment: AlignmentDirectional.bottomStart,
                    child: Text("Second Name ",
                      style: TextStyle(color: Colors.grey[700], fontSize: 15),),),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children:[
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    width: 170,
                    height: 40,
                    child: TextFormField(
                      //keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.only(right: 30),
                    width: 170,
                    height: 40,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],),
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
                  decoration: InputDecoration(
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
              SizedBox(height: 5,),
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
                        onPressed: () {}, child: Text("Login", style: TextStyle(
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
              SizedBox(height: 10,),
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
              Container(
                alignment: AlignmentDirectional.bottomStart,
                child: Image(
                    image: AssetImage('assets/image 68 (Traced)2.png')),
              ),
            ],),),
      ),);}}