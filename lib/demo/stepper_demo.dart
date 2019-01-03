import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {

  int _currentStep = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'StepperDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    primaryColor: Colors.black,
                  ),
                  child: Stepper(
                      currentStep:_currentStep,
                      onStepTapped: (int value){
                        setState(() {
                          _currentStep = value;
                        });
                      },
                      onStepContinue: (){
                        setState(() {
                          _currentStep < 2 ? _currentStep +=1:_currentStep = 0;
                        });
                      },
                      onStepCancel: (){
                        setState(() {
                          _currentStep > 0? _currentStep -= 1:_currentStep = 0;
                        });
                      },
                      steps: [
                    Step(title: Text('Login'), subtitle:Text('LoginFirst'),content: Text('先输入你的用户名和密码'),isActive: _currentStep == 0),
                    Step(title: Text('Register'), subtitle:Text('RegisterFirst'),content: Text('先输入你的用户名和手机号'),isActive: _currentStep == 1),
                    Step(title: Text('Choice'), subtitle:Text('ChoiceFirst'),content: Text('请选择您喜欢的项目'),isActive: _currentStep == 2),
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
