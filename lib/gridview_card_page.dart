import 'package:flutter/material.dart';

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
          children: List.generate(6, (index) {
            return Card(
              color: Colors.orangeAccent,
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
                    Icon(Icons.person,size: 62,color: Colors.white),
                    Text("MENU-1",style: TextStyle(color: Colors.white))
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
