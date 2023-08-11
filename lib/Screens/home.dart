import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            //alignment: text'in sayfada nerede yazılacağı seçilir.
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 50.0),
            color: Colors.red,
            child: Column(
              children: <Widget>[
                const Row(
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Text(
                      "Lenovo Laptop",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 22.0, decoration: TextDecoration.none),
                    ),
                    Expanded(
                        child: Text(
                      " 8 Gb Ram, 256 Gb SSD, Intel i5",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 22.0, decoration: TextDecoration.none),
                    )),
                  ],
                ),
                const Row(
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Text(
                      "HP Laptop",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 22.0, decoration: TextDecoration.none),
                    ),
                    Expanded(
                      child: Text(
                        " 8 Gb Ram, 256 Gb SSD, Intel i5",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.white, fontSize: 22.0, decoration: TextDecoration.none),
                      ),
                    )
                  ],
                ),
               Directionality( 
                textDirection: TextDirection.ltr, 
                child: DropdownButton(),
                )
              ],
            )));
  }

}

class DropdownButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: ElevatedButton(
        child: Text("Go to checkout"),       
        onPressed: () => {order(context)},
        )
    );
    return button;
  }

  order(BuildContext context){
    var alert = AlertDialog(
      title: Text("Go to checkout"),
      content: Text("I will go to checkout"),
    );
    
    showDialog(
      context: context, 
      builder: (BuildContext context) => alert
      );
  }
}

