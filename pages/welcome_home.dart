
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:second_app/pages/myMainHome.dart' as lkhra;
import 'package:second_app/pages/regiter.dart';
class home extends StatelessWidget{
  bool _remeberme=true;
  Widget _txtEmial(){
    return new TextFormField(
                      decoration: new InputDecoration(
                        prefixIcon:Icon(Icons.email,color:Colors.black38,),
                        labelText: "Enter Email",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if(val.length==0) {
                          
                          return "Email cannot be empty";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    );
  }
Widget _txtPassword(){

  return new TextFormField(
                         
                      decoration: new InputDecoration(
                        prefixIcon:Icon(Icons.lock,color:Colors.black38,),
                        labelText: "Enter Password",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if(val.length==0) {
                          return "Email cannot be empty";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    );
}
Widget _checkBoxR(){

  return new  Container(
                          child: new Row(
                            children: <Widget>[
                              Theme(data: ThemeData(unselectedWidgetColor: Colors.blue),
                              child: Checkbox(value: _remeberme,checkColor: Colors.white,activeColor: Colors.blue,onChanged: (value){
                                
                                  _remeberme=value;
                                
                              },),),
                              Text("Remember me!"),
                            ],
                          ),
                        );
}
Widget _forgetpass(){
  return new  Container(
                       alignment: Alignment.centerRight,
                     child: new Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         new InkWell(
                           child: new Text("Forget Password !"),onTap: ()=>debugPrint("something happend"),
                         )
                       ],
                     ),
                     )  ;
}
Widget _login(BuildContext context){
  return new  Container(
                         padding: EdgeInsets.symmetric(vertical: 20.0),
                         width: double.infinity,
                         child: RaisedButton(
                           elevation: 5.0,
                           onPressed: () {
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>lkhra.page1()),
            );
          },
                           padding: EdgeInsets.all(15.0),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30.0)
                           ),
                           color: Colors.white,
                           child: Text("Login",style:new TextStyle(
                             color: Colors.black,
                             letterSpacing: 1.5,
                             fontSize: 18.2,
                             fontWeight: FontWeight.bold,
                             fontFamily: "OpenSans",
                             )),
                         ),

                       );
}
Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

Widget _tlogin(){
  return new Column(
                        children: <Widget>[
                          new Text("_OR_",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "OpenSens",
                            fontSize: 18.0,
                            color: Colors.orange,
                          ),),
                          new Padding(padding: EdgeInsets.only(top: 15.0)),
                          new Text("Sing in With :",style:TextStyle(color: Colors.blue,))
                        ],
                      );
}
Widget _buildSignupBtn(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>register()
        ));
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _simpleloginform(BuildContext context){
     Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return     new Container(
      padding: const EdgeInsets.all(30.0),
       margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        width: MediaQuery.of(context).size.width,
                  child: new SingleChildScrollView(
                    child: new Column(
                      mainAxisSize: MainAxisSize.max,
                     children : [
                       new Padding(padding: EdgeInsets.only(top: 100.0)),
                       new Text('Sing In',
                       style: new TextStyle(color: hexToColor("#F2A03D"), fontSize: 25.0),),
                       new Padding(padding: EdgeInsets.only(top: 20.0)),
                       _txtEmial()
                        ,
                    new Padding(padding: EdgeInsets.only(top: 20.0)),
                       _txtPassword(),
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
                        _forgetpass()
                     ,
                      new Padding(padding: EdgeInsets.only(top: 15.0)),
                       _checkBoxR(),
                      _login(context),
                      _tlogin(),
                      Padding(padding: EdgeInsets.only(top: 15.0),),
                      new Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                           _buildSocialBtn(()=>print("you tap facebook"),new AssetImage("D:\SJMobile\Flutter_Apps\second_app\lib\pages\welcome_home.dart")
                     ),
                     new Padding(padding: EdgeInsets.all(10.0),)
                     ,
                      _buildSocialBtn(()=>print("you tap google"),new AssetImage("D:\SJMobile\Flutter_Apps\second_app\lib\pages\welcome_home.dart")
                     ),
                     new Padding(padding: EdgeInsets.all(10.0),)
                     ,
                     _buildSocialBtn(()=>print("you tap google"),new AssetImage("D:\SJMobile\Flutter_Apps\second_app\lib\pages\welcome_home.dart")),
                     

                        ],
                      )
                      ,
                      new Padding(padding: EdgeInsets.only(top:15.0),),
                    _buildSignupBtn(context),
                  
                     ]
                    )
                 ),
);
          
  }


@override

  Widget build(BuildContext context){
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: PageView(
          scrollDirection: Axis.vertical,
            children: <Widget>[
            _simpleloginform(context),
            
            ],
        ),
    );
   }






  // @override
  // Widget build(BuildContext context) {
  //   return new Scaffold(
  //     body: Stack(children: <Widget>[
  //       Container(
  //         height: double.infinity,
  //         width:  double.infinity,
  //         decoration: BoxDecoration(
  //           gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,
  //           colors: [
  //             Color(0xFF66BB6A),
  //             Color(0xFF43A047),
  //             Color(0xFF4CAF50),
  //             Color(0xFF66BB6A),
  //           ],
  //           stops: [0.1,0.4,0.8,0.9])
  //         ),
  //       ),
  //       Container( 
  //         height: double.infinity,
  //         child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),padding: EdgeInsets.symmetric(
  //           horizontal: 40.0,
  //           vertical: 120.0,
  //         ),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center  ,
  //           children: <Widget>[
  //             Text(
  //               "Sign In",style: new TextStyle(
  //                 color: Colors.white,fontFamily: "OpenSans",fontSize: 30.0,fontWeight:FontWeight.bold  ,
  //               ),
  //             ),
  //             SizedBox(height:30.0 ,),
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start  ,
  //             children: <Widget>[
  //               Text(
  //                 "Email",style: TextStyle(color: Colors.white),
  //               ),
  //               SizedBox(height: 10.0),
  //               Container(
  //                 alignment: Alignment.centerLeft,
  //             height: 60.0,
  //             child: TextField(
  //               keyboardType: TextInputType.emailAddress,
  //               style: TextStyle(color: Colors.white),
  //               decoration: InputDecoration(border: InputBorder.none,
  //               contentPadding: EdgeInsets.only(top:14.0)
  //               ,prefixIcon: Icon(Icons.email,color: Colors.white,),
  //             ),
  //               )
  //             ],
  //           )
  //           ],
  //         ),
  //         ),
  //       )
  //     ],),

  //   );







//     return new Container(
//       color: Colors.lightGreenAccent,
//       child: new Row(
//         children: <Widget>[
//  Text("item1",textDirection:TextDirection.ltr,style: new TextStyle(
//         fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white
//       )),
//       Text("item2",textDirection:TextDirection.ltr,style: new TextStyle(
//         fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white
//       )),
     
//       const Expanded(
//        child:const Text("item 4"),
//       )
          
//         ],
//       ) ,
     
//       // child: new Column(
//       //    mainAxisAlignment:MainAxisAlignment.center,
         
//       //   children: <Widget>[
//       //     Text("hello jamal cv !!",textDirection:TextDirection.ltr,style: new TextStyle(
//       //   fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white
//       // ),
//       // ),
//       // Text("bonjour !!",textDirection:TextDirection.ltr,style: new TextStyle(
//       //   fontSize: 18,fontWeight: FontWeight.w700,color: Colors.red
//       // ),
//       // ),
//       //   ],
//       // ),
//     );
  }
  
