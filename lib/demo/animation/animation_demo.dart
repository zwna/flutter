import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome> with TickerProviderStateMixin {

  AnimationController _animationController;

  Animation _animation;
  Animation _animationColor;
  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
//      lowerBound: 30.0,
//      upperBound: 100.0,
//      value: 32.0,
      duration: Duration(milliseconds: 5000),
      vsync:this,
    );

    _curvedAnimation = CurvedAnimation(parent: _animationController, curve: Curves.bounceOut);
    _animation = Tween(begin: 30.0,end: 100.0).animate(_curvedAnimation);
    _animationColor = ColorTween(begin: Colors.black,end: Colors.green).animate(_curvedAnimation);

//    _animation = Tween(begin: 30.0,end: 100.0).animate(_animationController);
//    _animationColor = ColorTween(begin: Colors.black,end: Colors.green).animate(_animationController);
    
    _animationController.addListener((){
//      debugPrint("${_animationController.value}");
    setState(() {

    });
    });

    _animationController.addStatusListener((AnimationStatus animationStatus){
         print(animationStatus);
    });

//    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedHeart(animation: [_animation,_animationColor],animationController: _animationController),
    );
  }
}

class AnimatedHeart extends AnimatedWidget {

  final List animation;
  final AnimationController animationController;

  AnimatedHeart({
    this.animation,
    this.animationController
}):super(listenable:animationController);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        color: animation[1].value,
        icon: Icon(Icons.favorite),
        iconSize: animation[0].value,
        onPressed: (){
          switch(animationController.status) {
            case AnimationStatus.completed:
              animationController.reverse();
              break;
            default:
              animationController.forward();
              break;
          }
        });
  }
}


