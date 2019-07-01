
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

@override
  Widget build(BuildContext context) {  
    return Scaffold(     
      body:Container(
               
        height: MediaQuery.of(context).size.height,      
        child: Center(
          child: Stack(
             children: <Widget>[
               Container(
                 height: 300.0,
                 color:   Color.fromARGB(25, 0, 0, 0)      
               )
             ],
          ),          
         ) 
      ),
    );
  }


/*  Widget _panelLogeoRedes(context)=>(
    Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
    )
  );
  */
}
