import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [
           const  SizedBox(height: 90,),
      //  Image.asset("assets/twitter.png"),
         const  SizedBox(height: 150,),
          const Text("Log in to Twitter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33),),
          Padding(
            padding:   EdgeInsets.only(left:30,right: 30,top: 50),
            child: Column(
              children: [
            
                TextFormField(
                      // controller: accountController,
                      // maxLength: 8,
                       decoration: InputDecoration(
                        labelText: "Phone, email or username",
                       // helperText: "helperTxt",
                        prefixIcon: const Icon(
                Icons.account_circle,
                color: Colors.black45,
                        ),
                //         suffixIcon:const  Icon(
                // Icons.account_box,
                // color: Colors.black45,
                //         ),
                        enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28.0),
                borderSide: const BorderSide(
                   color:Colors.blue,
                ),
                        ),
                       focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28.0),
                borderSide:const BorderSide(
                  color:Colors.blue,
                ),
                        ),
                        hintText: "Phone, email or username", 
                      ),
                    ),
                const SizedBox(height: 20,),
               
                TextFormField(
                      // controller: accountController,
                     //  maxLength: 8,
                       decoration: InputDecoration(
                        labelText: "Password",
                       // helperText: "helperTxt",
                        prefixIcon: const Icon(
                Icons.vpn_key_sharp,
                color: Colors.black45,
                        ),
                //         suffixIcon:const  Icon(
                // Icons.account_box,
                // color: Colors.black45,
                //         ),
                        enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28.0),
                borderSide: const BorderSide(
                   color:Colors.blue,
                ),
                        ),
                       focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28.0),
                borderSide:const BorderSide(
                  color:Colors.blue,
                ),
                        ),
                        hintText: "**********", 
                      ),
                    ),
                 const SizedBox(height: 20,),
                 
                    RichText(
              text: const TextSpan(
               // style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Remember me.',
                    style: TextStyle(fontSize: 18,),
                  ),
                  TextSpan(
                    text: 'Forgot password?',
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
 
              
                ],
              ),
            ),
          const  SizedBox(height: 30,),
             SizedBox(
              height: 75,
              width: 300,
               child: ElevatedButton(
               
                         child: Text('Log In', style: const TextStyle(
                          
                  color: Colors.white,
                   fontSize: 25, 
                   fontStyle: FontStyle.normal)),
                         style: ElevatedButton.styleFrom(
                 
                           primary: Colors.blue,
                           textStyle: const TextStyle(
                  color: Colors.white,
                   fontSize: 15, 
                   fontStyle: FontStyle.normal),
                         ),
                         onPressed: () {},
                       ),
             ),
const SizedBox(height: 25,),
                         RichText(
              text: const TextSpan(
               // style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Dont have an account? ',
                    style: TextStyle(fontSize: 18,),
                  ),
                  TextSpan(
                    text: 'Sign Up >',
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
 
              
                ],
              ),
            ),
              ],
            ),
          ),
        ],) ,) ;
  }
}