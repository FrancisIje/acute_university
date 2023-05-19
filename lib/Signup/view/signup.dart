import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.w),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 114.h,
              ),
              SizedBox(
                height: 72.h,
                width: 86.w,
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
                style: _textTheme.headlineMedium
                    ?.copyWith(fontSize: 24.spMax, fontWeight: FontWeight.bold),
              ),
              Text(
                "University",
                style: _textTheme.headlineMedium
                    ?.copyWith(fontSize: 24.spMax, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 64.h,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: "Full name"),
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                  height: 48.h,
                  width: double.maxFinite,
                  color: const Color(0xFFF2F2F2),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                    child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            items: [],
                            onChanged: null,
                            hint: Text("Department"))),
                  )),
              SizedBox(
                height: 18.h,
              ),
              Container(
                  height: 48.h,
                  width: double.maxFinite,
                  color: const Color(0xFFF2F2F2),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                    child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            items: [], onChanged: null, hint: Text("Course"))),
                  )),
              SizedBox(
                height: 18.h,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: "Mobile number"),
              ),
              SizedBox(
                height: 18.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              SizedBox(
                height: 36.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => MainScreen(),
                      // ));
                    },
                    child: Text("Sign up")),
              ),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  SignUpScreen(),));
                      },
                      child: Text(
                        "Log In",
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
    );
  }
}
