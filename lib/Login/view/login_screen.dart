import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            child: Column(
              children: [
                SizedBox(
                  height: 163.h,
                ),
                SizedBox(
                  height: 117.h,
                  width: 140.w,
                  child: Image.asset(
                    "assets/images/acute_university_logo.png",
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                Text(
                  "Acute",
                  style: _textTheme.headlineMedium?.copyWith(
                      fontSize: 24.spMax, fontWeight: FontWeight.bold),
                ),
                Text(
                  "University",
                  style: _textTheme.headlineMedium?.copyWith(
                      fontSize: 24.spMax, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 64.h,
                ),
                TextFormField(
                  // controller: ,
                  decoration: InputDecoration(hintText: "Email Address"),
                ),
                SizedBox(
                  height: 34.h,
                ),
                TextFormField(
                  
                  decoration: InputDecoration(hintText: "Password"),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: _textTheme.bodySmall?.copyWith(
                          fontSize: 16.sp, color: const Color(0xFF828282)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 44.h,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => MainScreen(),
                          // ));
                        },
                        child: Text("Login"))),
                SizedBox(height: 40.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: _textTheme.bodyMedium?.copyWith(
                          color: const Color(0xFF828282), fontSize: 16.sp),
                    ),
                    SizedBox(width: 5.w,),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  SignUpScreen,));
                      },
                      child: Text(
                        "Sign Up",
                        style: _textTheme.displayMedium?.copyWith(
                             fontSize: 16.sp, fontWeight: FontWeight.bold),
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
