import 'package:flutter/material.dart';


class HomeSeven extends StatelessWidget {
  HomeSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //fingerprint button
                const SizedBox(height: 16,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: shadows,
                      image: const DecorationImage(
                        image: NetworkImage('https://img.freepik.com/free-vector/finger-print-fingerprint-lock-secure-security-logo-icon-template_7688-1386.jpg')
                      )
                    ),
                  ),
                ),

                //hello and welcome text
                const SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                //username and password textField
                const SizedBox(height: 50,),
                Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: shadows,
                        ),
                        child: const TextField(
                          cursorColor: Colors.orange,
                          decoration: InputDecoration(
                              hintText: 'Username',
                              fillColor: Colors.white,
                              filled: true,
                            border: OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16,),

                    Card(
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: shadows,
                        ),
                        child: const TextField(
                          keyboardType: TextInputType.visiblePassword,
                          cursorColor: Colors.orange,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //login button
                const SizedBox(height: 30,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 50,
                    width: size.width*0.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        boxShadow: shadows,
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  final List<BoxShadow> shadows=[
    const BoxShadow(
      color: Colors.deepOrange,
      blurRadius: 10,
      offset: Offset(4, 4),
      spreadRadius: 1
    ),
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        blurRadius: 10,
        offset: const Offset(-4, -4),
        spreadRadius: 1
    )
  ];
}
