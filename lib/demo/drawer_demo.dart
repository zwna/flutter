import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              '刘彪',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              '3123848646@qq.com',
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1543928897&di=5049931ad043b5c2b6ce817736f182ae&src=http://hbimg.b0.upaiyun.com/764905ead01e7eca298fdadb745b3c4fd9031e2839a0d-Hdjzwh_fw658"),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1543939120815&di=37ff25b716594fbd7fc3438e4600d693&imgtype=0&src=http%3A%2F%2Fs16.sinaimg.cn%2Fmw690%2F003OBxcnzy7jF079J7N7f%26690')
                ,fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.5), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text('Message',textAlign: TextAlign.end,),
            trailing: Icon(Icons.message,color: Colors.red,size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite',textAlign: TextAlign.end,),
            trailing: Icon(Icons.favorite,color: Colors.red,size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings',textAlign: TextAlign.end,),
            trailing: Icon(Icons.settings,color: Colors.red,size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}