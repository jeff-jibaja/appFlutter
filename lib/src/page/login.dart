
import 'package:app_avi/src/page/perfil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



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
                 height: altura/1.60,
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
      height: altura/2.3,
      child: Container(
        margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Form(
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[                
                    TextFormField(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign:TextAlign.center,
                      decoration:  InputDecoration(
                        labelText: "USUARIO"
                        
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(fontSize: 30,color: Colors.white),
                      decoration:  InputDecoration(
                        labelText: "CONTRASEÑA",
                      ),
                    ),
                    RaisedButton(
                      
                      child: Text("I n g r e s a r"),
                      color: Colors.red,
                      elevation: null,
                      textTheme: ButtonTextTheme.normal,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>PerfilPage()                            
                          )
                        );
                      },
                    )
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: altura/11.8,
                alignment: Alignment.center,                
                width: MediaQuery.of(context).size.width/2,
                child: Text( "Gmail",style: TextStyle(fontSize:25,color: Colors.white),),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Container(
               height: altura/11.8,
               alignment: Alignment.center,
                width: MediaQuery.of(context).size.width/2,
                child: Text("Facebook",style: TextStyle(fontSize:25,color: Colors.white),),
              )
            ],
          )
        ],
      ),
    )
  );

}
