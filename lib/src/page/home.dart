
import 'package:app_avi/src/page/login.dart';
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
                        _panelOpciones(context,tamanoHorizontalOpcion)
                      ],
                    
                    ),
                    
                  ],
                ),
           ),
    );

}

Widget _panelOpciones(context,tamanoHorizontalOpcion) => Container(
    child: Stack(
     children: <Widget>[
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                   opcionMenuHome(context,tamanoHorizontalOpcion,"GUIA VIRTUAL",Icon(Icons.accessibility,size: 40))

                ],
                 
              ),
              Column(
                children: <Widget>[
                   opcionMenuHome(context,tamanoHorizontalOpcion,"REALIDAD AUMENTADA",Icon(Icons.access_alarm,size: 40))
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                   opcionMenuHome(context,tamanoHorizontalOpcion,"RESEÑAS",Icon(Icons.accessibility,size: 40))
                ],
              ),
              Column(
                children: <Widget>[
                   opcionMenuHome(context,tamanoHorizontalOpcion,"INICIAR SESION",Icon(Icons.perm_identity,size: 40))
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
         BoxShadow(
          color: Colors.grey,
          offset: new Offset(0.0, 2.0), 
          blurRadius: 5.0,
          spreadRadius: 1.0          
        )
     ]
        
     
    ),               
                   
  );
 
Widget _panelbanner(context) => Container(
    height: 280.0, 
    width:  MediaQuery.of(context).size.width,
    padding: EdgeInsets.only(
      top: 50,
      bottom: 0
    ),
    decoration : BoxDecoration(
      
      image: DecorationImage(
        image: NetworkImage(
        "http://www.travelonews.com/wp-content/uploads/2016/06/centros-arqueologicos-lambayeque.jpg"),
        alignment: Alignment.topCenter,
    ),
    
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
                   Navigator.push(
                     context,
                      MaterialPageRoute(
                         builder:(context)=>LoginPage()
                           
                      ),
                  );
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
