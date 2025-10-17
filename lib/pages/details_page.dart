import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class details_page extends StatefulWidget {
   details_page({this.title,this.price,this.id,this.image,this.subtitle});

  String? title;
  String? subtitle;
  String? image;
  String? price;
  int? id ;


  @override
  State<details_page> createState() => _details_pageState();
}

class _details_pageState extends State<details_page> {

  //dart code start now

  int counter =1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Container(

       child: Column(

         children: [


           Stack(

             children: [

               Container(
                 margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                 width: double.infinity,
                 height: MediaQuery.of(context).size.height*0.4,

                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                   // border: BoxBorder.all(color: Colors.blue,width: 2),
                   image: DecorationImage(image: NetworkImage("${widget.image}"),fit: BoxFit.fill),
                   // color: Colors.blue,
                 ),

               ),
                Positioned(
                    top: 20,
                    left: 12,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back,color: Colors.black,size: 30,),
                    )
                ),

                Positioned(

                  bottom: 0,


                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                    width: MediaQuery.of(context).size.width*4,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                    ),
                    child: Text("${widget.title}",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 22)),),
                  ),
                ),

             ],
           ),

            SizedBox(height: 20,),
           Container(
             width: double.infinity,
             margin: EdgeInsets.only(left: 20,right: 20),

             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [


                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Price : \$${widget.price}",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff192a56),fontWeight: FontWeight.w600,fontSize: 25)),),
                     
                     Row(
                       
                       children: [
                      
                         Text("4.5",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff192a56),fontWeight: FontWeight.w600,fontSize: 18)),),
                          SizedBox(width: 5,),
                         Icon(Icons.star,color: Colors.amber,size: 20,),
                         Icon(Icons.star,color: Colors.amber,size: 20,),
                         Icon(Icons.star,color: Colors.amber,size: 20,),
                         Icon(Icons.star,color: Colors.amber,size: 20,),
                         Icon(Icons.star_half,color: Colors.amber,size: 20,),
                      
                      
                       ],
                     ),
                     
                   ],
                 ),

                  SizedBox(height: 8,),
                  Text("${widget.subtitle}",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff192a56),fontWeight: FontWeight.w400,fontSize: 18)),),


                 SizedBox(height: 12,),
                 
                 Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     
                     Text("Quantity :",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff192a56),fontWeight: FontWeight.w600,fontSize: 20)),),

                     Container(

                       decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(8),
                       ),
                       child: Row(

                         children: [

                            IconButton(onPressed: (){

                              if(counter>1){
                                  setState(() {
                                    counter--;
                                  });
                              }
                            }, icon: Icon(Icons.remove,color: Colors.white,)),


                           Text(" $counter ",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20)),),


                           IconButton(onPressed: (){
                              setState(() {
                                counter++;
                              });
                           }, icon: Icon(Icons.add,color: Colors.white,)),

                         ],
                       ),
                     ),
                     SizedBox(height: 10,),
                   ],
                 ),

                 SizedBox(height: 16,),
                 MaterialButton(
                   onPressed: (){},
                   color: Colors.blue,
                   minWidth: double.infinity,
                   height: 50,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child: Text("Add to Cart",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18)),),
                 ),


               ],
             ),
           )


         ],

       ),
     ),




    );
  }
}
