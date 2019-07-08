

import 'package:flutter/material.dart';

import 'package:app_avi/src/page/perfil.dart';
import 'package:app_avi/src/page/recover.dart';
import 'package:app_avi/src/page/registroUser.dart';
class LoginPage extends StatelessWidget {

@override
  Widget build(BuildContext context) {  
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(     
      body:Container(          
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
               Container(
                 height: altura/1.80,
                 decoration: BoxDecoration(
                   boxShadow: [ 
                     BoxShadow(
                      offset: new Offset(0.0, 2.0), 
                      blurRadius: 5.0,
                      spreadRadius: 1.0   ,
                        color: Color.fromRGBO(250,250,250,0.6),
                     )
                   ]
                 ),
                 child: Column(
                   children: <Widget>[
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         _panelHeaderLogeo(context,altura),
                       ],
                     ),
                     Row(
                       
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         
                        _panelMainLogeo(context,altura),
                       ],
                     ),
                     Row(
                       children: <Widget>[
                         _panelfooterLogeo(context, altura)
                       ],
                     )
                   ],
                 ), 
               ),
               
             ],
          ),          
         ) 
      ),
    );
  }

  Widget _panelHeaderLogeo(context,altura)=>(
    Container(
      width: MediaQuery.of(context).size.width,
     height: altura/12,
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      alignment: Alignment.center,
      child: Text(
        "B I E N V E N I D O",style: TextStyle(fontSize: 30,color: Colors.black,fontFamily: 'SansSerif',fontWeight: FontWeight.bold),
      ),
    )
  );

  Widget _panelMainLogeo(context,altura)=>(
    Container(
      width: MediaQuery.of(context).size.width,
      height: altura/2.8,
      child: Container(
        margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Form(
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  //caja de usuario
                      TextFormField(
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      textAlign:TextAlign.center,
                      decoration:  InputDecoration(
                        labelText: "USUARIO"
                      ),
                    ),
                   //caja de contraseña 
                    TextFormField(
                       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      decoration:  InputDecoration(
                        labelText: "CONTRASEÑA",
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                          color: Colors.blueGrey,
                          height: altura/18,
                          width: MediaQuery.of(context).size.width-30,                          
                          child: Center(
                           child:  InkWell(
                             child: Text("I N G R E S A R",style: TextStyle(fontSize: 25.0),),
                             onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=>PerfilPage()                            
                                  )
                                );
                             },
                           ),
                           
                          ),
                          

                        )
                      ],
                    ),         
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: <Widget>[

                        //boton ingresar 
                        Column(
                          children: <Widget>[
                            RaisedButton(
                              child: Text("Crear cuenta"),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=>RegistroPage()                            
                                  )
                                );
                              },
                            )
                          ],
                        ),
                        //boton crear cuenta
                        Column(                          
                          children: <Widget>[
                            RaisedButton(
                              child: Text("Olvido contraseña?"),
                              color: Color.fromRGBO(250,250,250,0.4),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=>RecoverPage()                            
                                  )
                                );
                              },
                            )
                          ],
                        ),
                         
                    
                      ],
                    ),
                   
                  ],  
                ),
        ),
      )
    )
  );

  Widget _panelfooterLogeo(context,altura)=>(
    Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: altura/11.8,
                width: MediaQuery.of(context).size.width/2,
                child: Row(                 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage("assets/img/gmail.png")),
                    Text( "   Gmail",style: TextStyle(fontSize:25,color: Colors.black),),
                  ],
                )
              )
            ],
          ),
          Column(
            children: <Widget>[
             Container(
                height: altura/11.8,
                width: MediaQuery.of(context).size.width/2,
                child: Row(                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage("assets/img/facebook.png"),),
                    Text( "   Facebook",style: TextStyle(fontSize:25,color: Colors.black),),
                  ],
                )
              )
            ],
          )
        ],
      ),
    )
  );

}
