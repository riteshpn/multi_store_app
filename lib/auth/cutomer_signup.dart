import 'package:flutter/material.dart';
import 'package:multi_store_app/widgets/auth_widget.dart';

class CustomerRegister extends StatefulWidget {
  const CustomerRegister({Key? key}) : super(key: key);

  @override
  State<CustomerRegister> createState() => _CustomerRegisterState();
}

class _CustomerRegisterState extends State<CustomerRegister> {
  bool passwordVisibilty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AuthHeaderLabel(
                    headerLabel: 'Sign Up',
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 40,
                        ),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.purpleAccent,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                            child: IconButton(
                              onPressed: () {
                                print('pick image from camera');
                              },
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            child: IconButton(
                              onPressed: () {
                                print('pick image from gallery');
                              },
                              icon: const Icon(
                                Icons.photo,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      decoration: textFormDecorations.copyWith(
                        labelText: 'Full Name',
                        hintText: 'Enter Your Full Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: textFormDecorations.copyWith(
                        labelText: 'Enter Email Address',
                        hintText: 'Enter Your Email Address',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      obscureText: passwordVisibilty,
                      decoration: textFormDecorations.copyWith(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordVisibilty = !passwordVisibilty;
                              });
                            },
                            icon: Icon(
                              passwordVisibilty
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.purple,
                            )),
                        labelText: 'Enter Password',
                        hintText: 'Enter Your Password',
                      ),
                    ),
                  ),
                  HaveAccount(
                    haveAccount: 'already have account?',
                    actionLabel: 'Log In',
                    onPressed: () {},
                  ),
                  AuthMainButton(
                    authMainButton: 'Sign Up',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AuthMainButton extends StatelessWidget {
  final String authMainButton;
  final Function() onPressed;
  const AuthMainButton({
    Key? key,
    required this.authMainButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Material(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(25),
        child: MaterialButton(
          minWidth: double.infinity,
          onPressed: onPressed,
          child: Text(
            authMainButton,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// class HaveAccount extends StatelessWidget {
  // final String haveAccount;
  // final String actionLabel;
  // final Function() onPressed;
  // const HaveAccount({
    // Key? key,
    // required this.haveAccount,
    // required this.actionLabel,
    // required this.onPressed,
  // }) : super(key: key);
// 
  // @override
  // Widget build(BuildContext context) {
    // return Row(
      // mainAxisAlignment: MainAxisAlignment.end,
      // children: [
        // Text(
          // haveAccount,
          // style: const TextStyle(
            // fontSize: 16,
            // fontStyle: FontStyle.italic,
          // ),
        // ),
        // TextButton(
            // onPressed: onPressed,
            // child: Text(
              // actionLabel,
              // style: const TextStyle(
                // color: Colors.purple,
                // fontWeight: FontWeight.bold,
                // fontSize: 20,
              // ),
            // ))
      // ],
    // );
  // }
// }
// 
// class AuthHeaderLabel extends StatelessWidget {
  // final String headerLabel;
  // const AuthHeaderLabel({
    // Key? key,
    // required this.headerLabel,
  // }) : super(key: key);
// 
  // @override
  // Widget build(BuildContext context) {
    // return Padding(
      // padding: const EdgeInsets.all(16.0),
      // child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [
          // Text(
            // headerLabel,
            // style: const TextStyle(
              // fontSize: 40,
              // fontWeight: FontWeight.bold,
            // ),
          // ),
          // IconButton(
            // onPressed: () {
              // Navigator.pushReplacementNamed(context, '/welcome_screen');
            // },
            // icon: const Icon(
              // Icons.home_work,
            // ),
          // )
        // ],
      // ),
    // );
  // }
// }
// 
// var textFormDecorations = InputDecoration(
  // labelText: 'Full Name',
  // hintText: 'Enter your full name',
  // border: OutlineInputBorder(
    // borderRadius: BorderRadius.circular(25),
  // ),
  // enabledBorder: OutlineInputBorder(
    // borderSide: const BorderSide(
      // color: Colors.purple,
      // width: 1,
    // ),
    // borderRadius: BorderRadius.circular(25),
  // ),
  // focusedBorder: OutlineInputBorder(
    // borderSide: const BorderSide(color: Colors.deepPurpleAccent, width: 2),
    // borderRadius: BorderRadius.circular(25),
  // ),
// );
// 