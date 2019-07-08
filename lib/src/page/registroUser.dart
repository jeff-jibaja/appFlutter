

import 'package:flutter/material.dart';
import 'package:app_avi/src/page/login.dart';
import 'package:flutter/rendering.dart';

class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
  final altura = MediaQuery.of(context).size.height;
  final ancho = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          height: altura,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/23187.jpg"),
              fit: BoxFit.fitHeight
            ),
          ),
      
        child: Center(
          child: Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: altura/1.75,
                      width: ancho,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                               Column(
                                children: <Widget>[
                                 Container(
                                   height: altura/12,
                                   width: 45,
                                   color: Colors.green,
                                   child: InkWell(
                                     child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context)=>LoginPage()                            
                                        )
                                      );
                                    },
                                  ) 
                                 )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: altura/12,
                                    width: ancho-45,
                                    color: Colors.green,
                                    child: Center(
                                      child: Text("Sing up",style: TextStyle(fontSize: 30,color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),
                             
                              
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  height: altura/2.4,
                                  width: ancho,
                                  child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Column(
                                        children: <Widget>[
                                            Container(
                                              height: 45.0,
                                              decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(5.0),   
                                             ),
                                            child: TextFormField(
                                               style: TextStyle(fontSize: 30.0),
                                               decoration:  InputDecoration.collapsed(hintText: "Nombre completo"))       
                                           ),
                                           Container(
                                             margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                             height: 45.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(5.0),
                                            ),
                                            child: TextFormField(
                                              style: TextStyle(fontSize: 30.0),
                                              decoration:  InputDecoration.collapsed(hintText: "Usuario"))      
                                           ),
                                            Container(
                                             margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                             height: 45.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(5.0),                                              
                                            ),
                                            child: TextFormField(
                                              style: TextStyle(fontSize: 30.0),
                                              decoration:  InputDecoration.collapsed(hintText: "Correo"))                                                
                                           ),
                                            Container(
                                             margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                             height: 45.0,
                                             decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(5.0),                                              
                                            ),
                                            child: TextFormField(
                                              style: TextStyle(fontSize: 30.0),
                                              decoration:  InputDecoration.collapsed(hintText: "Contraseña"))    
                                           ),
                                            Container(
                                             margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                             height: 45.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(5.0), 
                                            ),
                                            child: TextFormField(
                                              style: TextStyle(fontSize: 30.0),
                                              decoration:  InputDecoration.collapsed(hintText: "Repetir Contraseña"))
                                                
                                           )
                                        
                                        ],
                                      )
                                    
                                    )
                                  ],
                                  )
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                  height: altura/16,
                                  width: ancho,
                                  color: Colors.red,
                                  child: Center(
                                    child: Text("Sing up",style: TextStyle(fontSize: 30,color: Colors.grey),),
                                  ),
                              )
                            ],
                          )
                        ],
                      )
                      
                    )
                  ],
                )
              ],
          ),
        )
        
      ),
    );
  }
 
}