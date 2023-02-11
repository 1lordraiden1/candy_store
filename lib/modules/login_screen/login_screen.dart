import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  var emailController = TextEditingController() ;
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text(
            'App',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.purple,

        ),

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    //color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    //decoration:
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value){
                    print(value);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (String value){
                    print(value);
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),

                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width:double.infinity ,
                  color: Colors.purple,
                  child: MaterialButton(
                    onPressed: (){
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white,),
                    ),
                  ),

                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        "Don't Have an Account ?"
                    ),
                    TextButton(
                      onPressed: (){}, child: const Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

      ),




    );
  }

}

/*class RootPage extends StatefulWidget{
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {

  }

}*/
