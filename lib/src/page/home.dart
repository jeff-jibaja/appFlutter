
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

@override
  Widget build(BuildContext context) {
   final tamanoHorizontalOpcion =  MediaQuery.of(context).size.width;
  
    return Scaffold(      
      body:  
              Container(
                height: MediaQuery.of(context).size.height,
               
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        _panelbanner(context),
                        _panelOpciones(tamanoHorizontalOpcion)
                      ],
                    
                    ),
                    
                  ],
                ),
           ),
    );

}

Widget _panelOpciones(tamanoHorizontalOpcion) => Container(
    child: Stack(
     children: <Widget>[
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                   opcionMenuHome(BuildContext,tamanoHorizontalOpcion,"GUIA VIRTUAL",Icon(Icons.accessibility,size: 40))

                ],
                 
              ),
              Column(
                children: <Widget>[
                   opcionMenuHome(BuildContext,tamanoHorizontalOpcion,"REALIDAD AUMENTADA",Icon(Icons.access_alarm,size: 40))
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                   opcionMenuHome(BuildContext,tamanoHorizontalOpcion,"RESEÑAS",Icon(Icons.accessibility,size: 40))
                ],
              ),
              Column(
                children: <Widget>[
                   opcionMenuHome(BuildContext,tamanoHorizontalOpcion,"INICIAR SESION",Icon(Icons.perm_identity,size: 40))
                ],
              ),
            ],
          )
        ],
      )
     ],
    ),
    height: 200.0,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        new BoxShadow(
          color: Colors.grey,
          offset: new Offset(0.0, 2.0), 
          blurRadius: 5.0,
          spreadRadius: 1.0          
        )
     ]
        
     
    ),               
                   
  );
 
Widget _panelbanner(context) => Container(
    height: 350.0, 
    width:  MediaQuery.of(context).size.width,
    color: Colors.black38,
    child: Center(
      child: 
      Text("Imagen de banner",style: TextStyle(fontSize: 30),),
      )
  );
  
Widget opcionMenuHome(context,tamanoHorizontalOpcion,String texto,Icon name)=> Container(
    height: 100,    
    width: tamanoHorizontalOpcion/2,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[            
         Row(                
           mainAxisAlignment: MainAxisAlignment.center,      
           children: <Widget>[                          
              name
           ],
          ),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,      
            children: <Widget>[             
               
             //  Text(texto,
               //     style: TextStyle(fontSize: 17),
                 //   ),
               RaisedButton(
                 
                 color: Colors.white,
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                 elevation: 0.0,
                 onPressed: (){
                   print("funciona");
                 },
                 child: Text(texto,
                          style: TextStyle(fontSize: 14),
                        ),
               )
                                 
           ],
          )
       ],
       ),
    
   
    
    
  );


}
