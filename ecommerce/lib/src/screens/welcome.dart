import 'package:flutter/material.dart';
import 'home.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/wl.jpg',
            fit:BoxFit.fill,
            height:double.infinity,
            width:double.infinity,
          ),
          Align(alignment: Alignment.bottomCenter,
          child: Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient:LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.05),
                  Colors.black.withOpacity(0.025)
                ]
              ) 
             
            ),
          ),
          )

          ,Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
                Text(
                  "Enjoy the world",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                  ),
              
                ),
                SizedBox(
                  height: 5,
                ),
                Text("We will help you find the best \n experiences and adventures"
                ,style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Home()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
          ],)
        
        ],
      )
    );
  }
}
