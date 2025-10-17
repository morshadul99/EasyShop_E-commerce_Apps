import 'package:e_commerce/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class sign_up_page extends StatelessWidget {
  const sign_up_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        child: Column(
          children: [



            Container(
              padding: EdgeInsets.only(top: 30,left: 16,right: 16),
              height: MediaQuery.of(context).size.height*0.3,
              decoration: BoxDecoration(
                // color: Colors.blue,
              ),
              child: Image(
                image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Sign Up now",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ),

            SizedBox(height: 16),

            Container(

              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [


                  TextField(

                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        )
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        )
                      ),
                      hintText: "Full name",
                        prefixIcon: Icon(Icons.person_outline),

                      border: OutlineInputBorder()
                    ),


                  ),
                  SizedBox(height: 16),
                  TextField(

                    decoration: InputDecoration(

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            )
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )
                        ),
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email_outlined),

                        border: OutlineInputBorder()
                    ),


                  ),
                  SizedBox(height: 16),
                  TextField(

                    decoration: InputDecoration(

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            )
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )
                        ),
                        hintText: "Phone",
                        prefixIcon: Icon(Icons.phone_outlined),

                        border: OutlineInputBorder()
                    ),


                  ),
                  SizedBox(height: 16),
                  TextField(

                    decoration: InputDecoration(

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            )
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )
                        ),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_outlined),

                        border: OutlineInputBorder()
                    ),


                  ),

                  SizedBox(height: 20),

                  MaterialButton(onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sign_up_page()));

                  },
                    minWidth: double.infinity,
                    color: Colors.blue,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    textColor: Colors.white,
                    child: Text("SIGN UP"),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do you have an account?"),

                      TextButton(onPressed: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login_page()));

                      }, child: Text("Login",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.blue)),)),

                    ],
                  ),

                  SizedBox(height: 20),








                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}
