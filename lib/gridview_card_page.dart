import 'package:flutter/material.dart';

class Menu{
  final String? title;
  final IconData? icon;
  final Color? bkColor;

  const Menu({this.title, this.icon, this.bkColor});
}

List<Menu> menus = [
  const Menu(title:'MENU-1', icon:Icons.person, bkColor:Colors.orangeAccent),
  const Menu(title:'MENU-2', icon:Icons.wifi, bkColor:Colors.green),
  const Menu(title:'MENU-3', icon:Icons.history_edu, bkColor:Colors.purple),
  const Menu(title:'MENU-4', icon:Icons.cabin, bkColor:Colors.blue),
  const Menu(title:'MENU-5', icon:Icons.catching_pokemon, bkColor:Colors.red),
];

class GridViewCardPage extends StatelessWidget {
  const GridViewCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Menu"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: List.generate(menus.length, (index) {
            return Card(
              color: menus[index].bkColor,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(menus[index].icon,size: 62,color: Colors.white),
                    Text(menus[index].title!,style: TextStyle(color: Colors.white))
                  ],
                ),
                onTap: (){},
              ),
            );
          }),
        ),
      ),
    );
  }
}
