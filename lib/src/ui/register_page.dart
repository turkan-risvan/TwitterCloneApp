import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
           const  SizedBox(height: 50,),
      //  Image.asset("assets/twitter.png"),
         const  SizedBox(height: 60,),
          const Text("Sign in to Twitter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33),),
          Padding(
            padding:   EdgeInsets.only(left:30,right: 30,top: 50),
            child: Column(
              children: [
            
                TextFormField(
                      // controller: accountController,
                      // maxLength: 8,
                       decoration: InputDecoration(
                        labelText: "Name",
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
                        hintText: "name", 
                      ),
                    ),
                const SizedBox(height: 20,),
               
                
                TextFormField(
                      // controller: accountController,
                     //  maxLength: 8,
                       decoration: InputDecoration(
                        labelText: "Last name",
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
                        hintText: "Last name", 
                      ),
                    ),
                const SizedBox(height: 20,),
               
                TextFormField(
                      // controller: accountController,
                     //  maxLength: 8,
                       decoration: InputDecoration(
                        labelText: "Email",
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
                        hintText: "Email", 
                      ),
                    ),
                 const SizedBox(height: 20,),
                 TextFormField(
                      // controller: accountController,
                       //maxLength: 8,
                       decoration: InputDecoration(
                        labelText: "Phone",
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
                
                 
                 
                 
              
          const  SizedBox(height: 30,),
             SizedBox(
              height: 75,
              width: 300,
               child: ElevatedButton(
               
                         child: Text('Sign In', style: const TextStyle(
                          
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
                    text: 'You have an account? ',
                    style: TextStyle(fontSize: 18,),
                  ),
                  TextSpan(
                    text: 'Sign in >',
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