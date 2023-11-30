import 'package:flutter/material.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen>{
  int splashtime = 5;

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context){
            return Home();
          }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            alignment: Alignment.center,
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //vertically align center
                children:<Widget>[
                  Container(
                    child:SizedBox(
                        height:200,width:200,
                        child:Image.asset("assets/images/logo.png")
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:30),
                    //margin top 30
                    child:Text("Smart Home", style: TextStyle(
                      fontSize: 30,
                    ),),
                  ),
                  Container(
                    margin:EdgeInsets.only(top:15),
                    child:Text("Version: 1.0", style:TextStyle(
                      color:Colors.black45,
                      fontSize: 20,
                    )),
                  ),
                ]
            )
        )
    );
  }
}