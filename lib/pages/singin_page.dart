import 'package:isacpay/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {


  String email;
  bool isPassword = false;

  Function onpressIcons() {
    return () {
      return isPassword = !isPassword;
    };
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 90.0, bottom: 30.0),
                    child: FlutterLogo(size: 150.0,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'IsacPay',
                      style: TextStyle(
                        color: secundaryBlue,
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                      ),
                    ),
                  ),
                  Text(
                    'Digital Wallet App',
                    style: TextStyle(
                      color: primaryGrey,
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontFamily: 'Hind',
                    ),
                  ),
                ],
              ),

              // inputs
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      autofocus: true,
                      onChanged: (e) {
                        setState(() {
                          email = e;
                        });
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        // enabledBorder: UnderlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: primaryGrey, 
                        //     width: 1.0, 
                        //     style: BorderStyle.solid 
                        //   ),
                        // ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: primaryGrey, 
                            width: 1.0, 
                            style: BorderStyle.solid 
                          ),
                        ),
                        suffixIcon: isChanged(),
                        // hintText: 'Enter your email',
                        // hintMaxLines: 2,
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: 'Hind'
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: primaryGrey, 
                              width: 1.0, 
                              style: BorderStyle.solid,
                            ),
                          ),
                          suffixIcon: viewPassword(),                          
                          hintMaxLines: 2,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.grey[400],
                            fontFamily: 'Hind',
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color: secundaryBlue,
                          fontFamily: 'Hind',
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      color: primaryBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        // side: BorderSide(color: Colors.red),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        child: Center(
                          child: Text(
                            'Sing In',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontFamily: 'Hind',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0,),
                      child: Text('Or'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Register a', style: TextStyle(
                          color: secundaryBlue,
                          fontFamily: 'Hind'
                        ),),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text(
                            'new account',
                            style: TextStyle(color: primaryBlue,),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget isChanged() {
    return email != null && email.length >= 8 ?
      Icon(
       Icons.check,
        size: 20.0,
        color: primaryBlue,
      )
      :
      Icon(
      Icons.alternate_email,
      size: 20.0,
      color: primaryBlue,
    );
  }

  Widget viewPassword() {
    return IconButton(
      onPressed: () => setState(() => isPassword = !isPassword),
      icon: isPassword == true ? Icon(
        Icons.remove_red_eye,
        size: 20.0,
        color: primaryBlue,
      ) : 
      Icon(
        Icons.visibility_off,
        size: 20.0,
        color: primaryBlue,
      ),
    );
  }
}
