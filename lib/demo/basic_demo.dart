import 'package:flutter/material.dart';
class BasicDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[100],
    decoration: BoxDecoration(
      image: DecorationImage(
          image:NetworkImage("http://n.sinaimg.cn/sinacn10/21/w547h274/20180705/ae49-hevauxk8204558.jpg"),
        alignment: Alignment.topCenter,
//        repeat: ImageRepeat.repeatY,
       fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.indigoAccent.withOpacity(1.0), BlendMode.hardLight),
      )
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0,color: Colors.white,),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(24.0),
            margin: EdgeInsets.all(16.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(color:Colors.indigoAccent[100], width:3.0,style: BorderStyle.solid,
//                  bottom: BorderSide(
//                    color:Colors.indigoAccent[100],
//                    width:3.0,
//                    style: BorderStyle.solid,
//                  )
              ),
//              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0),bottomRight: Radius.circular(32.0),topLeft: Radius.circular(8.0),topRight: Radius.circular(15.0)),
              boxShadow: [
                BoxShadow(
                   offset: Offset(15.0, 5.0),
                   color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 16.0,
                  spreadRadius: -5.0
                ),
              ],
              shape: BoxShape.circle,
//              gradient: RadialGradient(
//                colors:[
//                   Colors.white,
//                  Colors.red,
//                ]
//              ),
            gradient: LinearGradient(
                colors:[
              Colors.white,
              Colors.red,
            ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
            ),
          ),
        ],
      ),
    );
  }

}

class RichTextDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return RichText(
      textDirection: TextDirection.rtl,
      text: TextSpan(
          text: 'flutter',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,

          ),
          children:[
            TextSpan(
                text: '.net',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.red,
                )
            )
          ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget{

  final String _suthor = "不知名网友";
  final String _title = "不知名博客";

  final TextStyle _textStyle = TextStyle(
    fontSize: 20.0,

  );

  @override
  Widget build(BuildContext context) {
    return  Text(
      '<<$_title>> -$_suthor.Psiphon 3是一个从赛风公司的新翻墙工具，利用VPN, SSH和HTTP代理软件提供未经审查的访问互联网。Psiphon 3客户端将自动学习新的进入点，以最大绕过网络审查的机会。Psiphon 3旨在为您提供开放访问在线内容。Psiphon不会增加您的在线隐私权，并不应被用作在线安全工具。',
      textAlign: TextAlign.left,
      style:_textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}