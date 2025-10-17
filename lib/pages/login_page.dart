import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 16, right: 12),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(),
              child: Image(
                image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Login now",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [


                  TextFormField(


                    decoration: InputDecoration(


                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue),
                      ),


                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),

                        // ← ক্লিক করলে (focus)
                      ),
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),


                  TextField(

                    decoration: InputDecoration(

                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_outline),

                      enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue)
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                        )

                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        )
                      )

                    ),
                  ),
                  
                  SizedBox(height: 20),
                  
                  MaterialButton(onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>home_page()));
                    
                  },
                    minWidth: double.infinity,
                    color: Colors.blue,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    textColor: Colors.white,
                    child: Text("LOGIN"),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),

                      TextButton(onPressed: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sign_up_page()));

                      }, child: Text("Sign Up",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.blue)),)),

                    ],
                  ),

                  SizedBox(height: 20),

                  TextButton(onPressed: (){}, child: Text("Forgot password?",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w600)),)),

                  

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
