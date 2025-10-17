import 'package:e_commerce/pages/add_to_cart.dart';
import 'package:e_commerce/pages/details_page.dart';
import 'package:e_commerce/pages/model_class.dart';
import 'package:e_commerce/pages/profile_page.dart';
import 'package:e_commerce/pages/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {

  List<Model_class> myList =[

    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),
    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),
    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),
    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),
    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),
    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),
    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),
    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),
    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),
    Model_class(
        title: "i-phone13 pro",
        subtitle: "This is new i-phone brand, now popular fashion",
        image: "https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg",
        price: "15000",
        id: 1
    ),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,

        decoration: BoxDecoration(


        ),

        child: Column(
          children: [

            // app header container start now
            Container(

              padding: EdgeInsets.symmetric(horizontal: 20,),

              width: double.infinity,
              height: MediaQuery.of(context).size.height*.30,

              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue,
              ),

              child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  ListTile(

                    visualDensity: VisualDensity(horizontal: 0, vertical: 3),
                    contentPadding: EdgeInsets.only(top: 10,left: 0,right: 10,bottom: 10),

                    leading: CircleAvatar(

                      radius: 40,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsWEgVXJnWSJ-ml_E_C-xPGLlgAKPdfachug&s"),

                    ),

                    title: Text("Morsadul Islam",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600)),),
                      subtitle: Text("Welcome to EasyShop",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 15))),
                    trailing: Icon(Icons.notifications,color: Colors.white,size: 30,)
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [

                        Flexible(child: TextField(

                          decoration: InputDecoration(

                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Search here...",
                            prefixIcon: Icon(Icons.search),

                            border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,

                            )
                          ),
                        )
                        ),
                        SizedBox(width: 16,),


                      Container(

                        width: 40,
                        height: 50,

                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(12),

                          color: Colors.white,
                        ),
                        child: Icon(Icons.filter_list,color: Colors.blue,size: 30,),
                      )

                      ],
                    ),
                  )



                ],
              ),

            ),




            // Scrolling container start now body container

            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                
                
                  child: Column(
                    children: [
                
                      SizedBox(height: 20,),
                
                
                      Row(
                        children: [
                
                          Text("Categories",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold)),),
                          Spacer(),
                          Text("See All",style: GoogleFonts.poppins(textStyle: TextStyle(color:Colors.black54,fontSize: 15,fontWeight: FontWeight.bold)),),
                        ],
                      ),
                
                
                      SizedBox(height: 20,),
                
                      
                      // horizontal scrolling start now
                      SingleChildScrollView(
                
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                
                            Column(
                              children: [
                
                                CircleAvatar(
                                  radius: 40,
                
                                  backgroundImage: NetworkImage("https://bd-live-21.slatic.net/kf/S362f5f7b775644b393f53e6ae14d166aT.jpg",)
                                ),
                                SizedBox(height: 8,),
                                Text("Bag",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w700)),),
                
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                
                                CircleAvatar(
                                    radius: 40,
                
                                    backgroundImage: NetworkImage("https://cdn.mos.cms.futurecdn.net/M4nigVN3vvA5EEnNX9atxY-1200-80.jpg",)
                                ),
                                SizedBox(height: 8,),
                                Text("Phone",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w700)),),
                
                              ],
                            ),
                            
                            SizedBox(width: 10,),
                            Column(
                              children: [
                
                                CircleAvatar(
                                    radius: 40,
                
                                    backgroundImage: NetworkImage("https://img.drz.lazcdn.com/static/bd/p/6054adee2ea93e685e28ed7fd7344e9c.png_720x720q80.png",)
                                ),
                                SizedBox(height: 8,),
                                Text("T-Shirt",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w700)),),
                
                              ],
                            ),
                
                            SizedBox(width: 10,),
                            Column(
                              children: [
                
                                CircleAvatar(
                                    radius: 40,
                
                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKuRJfisPHxvvQDqKtTI2plMSEmWkTRathog&s",)
                                ),
                                SizedBox(height: 8,),
                                Text("Shirt",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w700)),),
                
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [

                                CircleAvatar(
                                    radius: 40,

                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKuRJfisPHxvvQDqKtTI2plMSEmWkTRathog&s",)
                                ),
                                SizedBox(height: 8,),
                                Text("Shirt",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w700)),),

                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [

                                CircleAvatar(
                                    radius: 40,

                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKuRJfisPHxvvQDqKtTI2plMSEmWkTRathog&s",)
                                ),
                                SizedBox(height: 8,),
                                Text("Shirt",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w700)),),

                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [

                                CircleAvatar(
                                    radius: 40,

                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKuRJfisPHxvvQDqKtTI2plMSEmWkTRathog&s",)
                                ),
                                SizedBox(height: 8,),
                                Text("Shirt",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w700)),),

                              ],
                            ),
              
              
                          ],
                        ),
                      ),
                
                      SizedBox(height: 20,),
                
                      // offer banner container start now 
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height*.20,
                
                        decoration: BoxDecoration(
                
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blueAccent,
                          image: DecorationImage(image: NetworkImage("https://img.pikbest.com/origin/10/01/82/867pIkbEsTAIq.png!w700wp" ),fit: BoxFit.cover)
                        ),
                
                      ),



                      SizedBox(height: 16,),
                      Row(
                        children: [
                
                          Text("Recent Products",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold)),),
                          Spacer(),
                          Text("View More",style: GoogleFonts.poppins(textStyle: TextStyle(color:Colors.black54,fontSize: 15,fontWeight: FontWeight.bold)),),
                        ],
                      ),
                
                
                      SizedBox(height: 16,),


                      GridView.builder(

                        shrinkWrap: true,

                          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(

                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,

                          ) ,
                          itemCount: myList.length,
                          itemBuilder: (context,index){
                            return InkWell(

                              onTap: () {


                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>details_page(

                                  title: myList[index].title,
                                  subtitle: myList[index].subtitle,
                                  image: myList[index].image,
                                  price: myList[index].price,
                                  id: myList[index].id,

                                )));

                              },


                              child: Stack(

                                children: [

                                  Container(

                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [

                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 6,
                                          offset: Offset(0,2),
                                        )

                                      ],
                                      image: DecorationImage(
                                        image: NetworkImage("${myList[index].image}"),
                                        fit: BoxFit.cover,
                                      )
                                    ),
                                  ),

                                  Positioned(
                                    top: 0,
                                      left: 0,

                                      child: Container(

                                        padding: EdgeInsets.all(8),

                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(12),

                                        ),
                                        child: Text("\$${myList[index].price}",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),),
                                  )
                                  ),
                                  
                                  Positioned(
                                      top: 0,
                                      right: 0,
                                      child:Icon(Icons.favorite,color: Colors.black54,)
                                  ),

                                  Positioned(
                                      bottom: 2,
                                      left: 0,
                                      child:Container(

                                        padding: EdgeInsets.symmetric(horizontal: 7,),

                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Text("${myList[index].title}",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),),
                                      )
                                  ),
                                  
                                  Positioned(
                                    bottom: 2,
                                      right: 0,
                                    child: Icon(Icons.shopping_cart,color: Colors.orange,),),

                                ],


                              ),
                            );
                            
                            
                          }
                          ),
              
                
                
                
                
                
                    ],
                  ),
                ),
              ),
            )
            
            





          ],
        ),
      ),


      //bottom navigation bar start now

      bottomNavigationBar: BottomNavigationBar(

          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black54,
          currentIndex: 0,


          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],

        onTap:(index) {

          if(index==1){

            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>add_to_cart()));

          }else if(index==2){

            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>profile_page()));
          }

        },

      ),



    );
  }
}
