import 'package:flutter/material.dart';
import 'package:second_app/pages/welcome_home.dart';
class register extends StatelessWidget  {
  Widget _fuck(){
    return new Container(
                      width: 165.0,
                                          child: Container(
                                            child: TextField(
                                              
                      decoration: new InputDecoration(
                        prefixIcon:Icon(Icons.face ,color:Colors.black38,),
                        labelText: "last Name",
                        fillColor: Colors.white,
                        
                        
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          
                          borderSide: new BorderSide(
                          

                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                     
                      
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                                            ),
                                          )
    );
  }
  Widget _fuck2(){
    return new Container(
        width: 165.0,
                                          child: Container(
                                            child: TextField(
                                              
                      decoration: new InputDecoration(
                        prefixIcon:Icon(Icons.face,color:Colors.black38,),
                        labelText: "First Name",
                        fillColor: Colors.white,
                        
                        
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          
                          borderSide: new BorderSide(
                          

                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                     
                      
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                                            ),
                                          )
    );
  }
  Widget _txtEmialR(){
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
  Widget _newpassword(String hints){
   return new TextFormField(
     
                      decoration: new InputDecoration(
                        prefixIcon:Icon(Icons.lock,color:Colors.black38,),
                        labelText: hints,
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

  List<DropdownMenuItem<int>> ListDrop=[];
  LoadData  (){
    ListDrop.add(new DropdownMenuItem(child: new Text("jamal"),value: 1,));
        ListDrop.add(new DropdownMenuItem(child: new Text("said"),value: 2,));
            ListDrop.add(new DropdownMenuItem(child: new Text("saad"),value: 3,));

    ListDrop.add(new DropdownMenuItem(child: new Text("hasan"),value: 4,));



  }
  String selected=null;
  Widget _comboboxCountry(){
    LoadData();
    return new Container(
    
child: new DropdownButton(
  
  value: selected,
  items: ListDrop,hint: new Text("Select your country")
,onChanged: (value){
  selected=value;
 
},),
    );
  }
 

Widget _sampleForm( BuildContext context){
  
    return Container(
       
     padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                    Form(
                        child: Column(
                          // mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                               new Container(
                              
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   mainAxisSize: MainAxisSize.max,
                                   children: <Widget>[
                                     new Padding(padding:EdgeInsets.only(top: 100.0,),),
                                     new Text("Sign Up",style: TextStyle(
                                       color: Colors.orange,fontSize: 25.0,
                                     ),),
                                     Padding(padding: EdgeInsets.only(top: 20.0),),
                                     //first and last name
                                     new Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[ 
                                        _fuck2(),
                                       _fuck()     ],
                                     ),
                                     Padding(padding: EdgeInsets.only(top: 20.0),),
                                    _txtEmialR(),
                                   
                                    Padding(padding:EdgeInsets.only(top: 20.0),),
                                    _comboboxCountry(),
                                    Padding(padding:EdgeInsets.only(top: 20.0),)
                                    ,
                                    _newpassword("Enter Password"),
                                    Padding(padding:EdgeInsets.only(top: 20.0),),
                                    _newpassword("Conform Password"),
                                   Padding(padding:EdgeInsets.only(top: 20.0),),
                                   _regesterBtn(context),
                                   
                                    

                                   ],
                                 ),
                               ),
                                
                            ],
                        ),
                    ),
                ],
            ),  
        ),
    );
}
Widget _regesterBtn(BuildContext context){
  return new  Container(
                         padding: EdgeInsets.symmetric(vertical: 20.0),
                         width: double.infinity,
                         child: RaisedButton(
                           elevation: 5.0,
                           onPressed: () {
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>home()),
            );
          },
                           padding: EdgeInsets.all(15.0),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30.0)
                           ),
                           color: Colors.white,
                           child: Text("Submit",style:new TextStyle(
                             color: Colors.black,
                             letterSpacing: 1.5,
                             fontSize: 18.2,
                             fontWeight: FontWeight.bold,
                             fontFamily: "OpenSans",
                             )),
                         ),

                       );
}
  @override
 
Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: PageView(
          scrollDirection: Axis.vertical,
            children: <Widget>[
            _sampleForm(context),
            
            ],
        ),
    );
}
  
  }

