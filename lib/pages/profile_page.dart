
import 'package:e_commerce/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';


class profile_page extends StatefulWidget {
  const profile_page({super.key});

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Text("Profile Page"),
      // ),

      body: 
      
      SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        
              //profile image setup start now
              InkWell(
        
                onTap: () {
        
                  pickImage();
                },
                child: Stack(
                  children:[ Container(
        
        
                    decoration: BoxDecoration(
        
                      border: Border.all(color: Colors.grey,width: 2,),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: _imageBytes == null
                          ? const NetworkImage(
                          "https://www.shutterstock.com/image-vector/new-photo-icon-camera-add-260nw-1043730142.jpg")
                          : MemoryImage(_imageBytes!) as ImageProvider,
                    ),
        
                  ),
        
                    Positioned(
                        bottom: 0,
                        right: 0,
        
                        child:CircleAvatar(
                          backgroundColor: Colors.blue,
                            child: Icon(Icons.camera_alt,color:Colors.white,size: 30,))
        
                    )
                ]
                ),
              ),
        
              SizedBox(height: 16,),
        
              Text("Md Morsadul Islam",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff2c3e50),fontSize: 25,fontWeight: FontWeight.w500)),),
        
              Text("mdmorshadulislam275@gmail.com",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w500)),),
        
              SizedBox(height: 16,),
        
              MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                minWidth: 150,
                height: 40,
                color: Colors.blue,
                onPressed: (){},
              child: Text("Edit Profile",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500)),),
              
              ),
        
              SizedBox(height: 16,),
              
              //orders, wishlist, reviews section start now
              Row(
        
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
                children: [
        
                  Column(
        
                    children: [
        
                      Icon(Icons.shopping_bag,size: 30,color: Colors.grey,),
                      SizedBox(height: 4,),
                      Text("10",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff2c3e50),fontSize: 16,fontWeight: FontWeight.w500)),),
                      SizedBox(height: 4,),
                      Text("Orders",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w500)),),
        
                    ],
                  ),
                  Column(
        
                    children: [
        
                      Icon(Icons.favorite,size: 30,color: Colors.grey,),
                      SizedBox(height: 4,),
                      Text("5",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff2c3e50),fontSize: 16,fontWeight: FontWeight.bold)),),
                      SizedBox(height: 4,),
                      Text("Wishlist",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w500)),),
        
                    ],
                  ),
                  Column(
        
                    children: [
        
                      Icon(Icons.tag,size: 30,color: Colors.grey,),
                      SizedBox(height: 4,),
                      Text("3",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff2c3e50),fontSize: 16,fontWeight: FontWeight.bold)),),
                      SizedBox(height: 4,),
                      Text("Cuopons",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w500)),),
        
                    ],
                  ),
        
                ],
              ),
              SizedBox(height: 16,),
              

        
              SizedBox(height: 12,),
        

        // recent orders section start now
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Text("Recent Orders",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff2c3e50),fontSize: 20,fontWeight: FontWeight.w500)),),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://cdn.mos.cms.futurecdn.net/eX6Rte42SVcQ6hYNiRAXx5.jpg"),
                    ),
                    title: Text("i-phone13 pro",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff2c3e50),fontSize: 16,fontWeight: FontWeight.w500)),),
                    subtitle: Text("Quantity: 1",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w500)),),
                    trailing: Text("\$150000",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff2c3e50),fontSize: 16,fontWeight: FontWeight.w500)),),
                  ),
        
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKuRJfisPHxvvQDqKtTI2plMSEmWkTRathog&s"),
                    ),
                    title: Text("White Shirt",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff2c3e50),fontSize: 16,fontWeight: FontWeight.w500)),),
                    subtitle: Text("Quantity: 3",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w500)),),
                    trailing: Text("\$2500",style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xff2c3e50),fontSize: 16,fontWeight: FontWeight.w500)),),
                  ),



                  SizedBox(height: 12,),

                  Text("Account Settings",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black87,fontSize: 22,fontWeight: FontWeight.w500)),),


                  Column(
                    children: [
                      
                      ListTile(
                        
                        leading: Icon(Icons.location_on,color: Colors.black54,size: 25,),
                        title: Text("Address",style: TextStyle(color: Colors.black87,fontSize: 18),),

                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                      ),

                      ListTile(

                        leading: Icon(Icons.payment,color: Colors.black54,size: 25,),
                        title: Text("Payment",style: TextStyle(color: Colors.black87,fontSize: 18),),

                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                      ),
                      ListTile(

                        leading: Icon(Icons.notification_important_rounded,color: Colors.black54,size: 25,),
                        title: Text("Notification",style: TextStyle(color: Colors.black87,fontSize: 18),),

                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                      ),

                      ListTile(

                        leading: Icon(Icons.help,color: Colors.black54,size: 25,),
                        title: Text("Help",style: TextStyle(color: Colors.black87,fontSize: 18),),

                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                      ),


                      SizedBox(height: 12,),

                      MaterialButton(
                        onPressed: (){

                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login_page()));
                        },
                        color: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        minWidth: double.infinity,
                        child: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 18)),
                      ),

                      SizedBox(height: 8,),



                    ],
                  )

                  



                ],
              ),
              
              SizedBox(height: 12,),
              

        
        
        
        
        
        
            ],
          ),
        ),
      ),
    );
  }

  //dart code here for pick image function

  Uint8List? _imageBytes;

  Future<void> pickImage()async {

    final ImagePicker picker = ImagePicker();

    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if(image != null){

      final bytes = await image.readAsBytes();

      setState(() {
        _imageBytes = bytes;
      });

    }



  }


}
