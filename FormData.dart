import 'package:flutter/material.dart';
import 'package:flutter_app/product.dart';

class FormData extends StatelessWidget {
  final Product product;
  FormData({Key key,this.product}):super(key:key);

  @override
 
  Widget build(BuildContext context) {
    
   return Scaffold(
        appBar: AppBar(
          title:Text("Save Data"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
          ],
        ),
        body: SafeArea(
                  child: Container(
          child: Container(
            child: ListView(
              children: <Widget>[
                Card(
                    child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      
                    ),
                    title: Row(
                      children: <Widget>[
                        Text(product.firstname),
                        SizedBox(width:10.0),
                        Text(product.lastname)
                      ],
                    ),
                    subtitle: Text(product.email),
                    trailing: Text(product.password),
                  ),
                ),

                 Card(
                      child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      
                    ),
                    title: Row(
                      children: <Widget>[
                        Text(product.firstname),
                        SizedBox(width:10.0),
                        Text(product.lastname)
                      ],
                    ),
                    subtitle: Text(product.email),
                    trailing: Text(product.password),
                  ),
                ),

                 Card(
                    child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      
                    ),
                    title: Row(
                      children: <Widget>[
                        Text(product.firstname),
                        SizedBox(width:10.0),
                        Text(product.lastname)
                      ],
                    ),
                    subtitle: Text(product.email),
                    trailing: Text(product.password),
                  ),
                ),
              ],
            ),
          )
      ),
        ),
   );
  }
}

