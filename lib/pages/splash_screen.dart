import 'package:e_commerce/pages/login_page.dart';
import 'package:flutter/material.dart';


class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  
  
  @override
  void initState() {
    
    Future.delayed(Duration(seconds: 3),(){
      
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login_page()));
    
    });
    
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(


              height: MediaQuery.of(context).size.height*0.15,
              width: MediaQuery.of(context).size.height*0.15,

              child: Card(

                child: ClipOval(child: Image.network("https://img.icons8.com/?size=1200&id=SWaG0pWq5hiV&format=jpg",height: 250,width: 250,fit: BoxFit.fill,)),

              ),
            ),
            SizedBox(height: 5,),
            Text("Splash Screen",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),


          ],
        ),
      ),


    );
  }
}
