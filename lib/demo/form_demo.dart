import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormDemo"),
      ),
      body: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.blue,
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                TextFieldDemo()
              RegisterForm()
              ],
            ),
          )
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = "在座各位";
    textEditingController.addListener((){
      debugPrint("textEditingController == ${textEditingController.text}");
    });
  }


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
//      onChanged: (value){
//        debugPrint("input value:$value");
//      },
      onSubmitted: (value){
        debugPrint("submit:$value");
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: '请输入密码',
//        border: InputBorder.none,
      border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.amber,
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final registerFormKey = GlobalKey<FormState>();

  String userName,password;

  bool autovalidate = false;

  submitUserInfo(){
    if(registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();
      debugPrint("username:$userName,password:$password");

      Scaffold.of(context).showSnackBar(
         SnackBar(content: Text('注册成功!!!'))
      );
    }else{
      setState(() {
        autovalidate = true;
      });
    }

  }

  String validateUserName(value){
    if(value.isEmpty){
      return "UserName is required";
    }
    return null;
  }

  String validatePassword(value){
    if(value.isEmpty){
      return "Password is required";
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'UserName',
              helperText: "",
            ),
            onSaved: (value){
              userName = value;
            },
            validator: validateUserName,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: "",
            ),
            onSaved: (value){
              password = value;
            },
            validator: validatePassword,
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.amberAccent,
              child: Text(
                '点击注册',
                style: TextStyle(
                  color:Colors.blueAccent,
                ),
              ),
              elevation: 0.0,
              onPressed: submitUserInfo,
            ),
          ),
        ],
      ),
    );
  }
}



