import 'package:flutter/material.dart';
import 'package:flutter_app/FormData.dart';
import 'product.dart';

void main()=>runApp(
  MaterialApp(
    home: MyApp(title: "Form Demo"),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.pink,
    ),
));
class MyApp extends StatefulWidget {
  final String title;
  final Function validate;
  MyApp({Key key,this.title,this.validate}):super(key:key);
  @override
  _MyAppState createState() => _MyAppState();
  }


class _MyAppState extends State<MyApp> {

  final formKey=GlobalKey<FormState>();
  Product product=Product();
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
                  child: Container(
            margin: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            child:Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    width:MediaQuery.of(context).size.width,
                    child: TextFormField(
                  validator: (String val){
                    if(val.isEmpty)
                    {
                      return 'Enter Your First Name';
                    }
                    return null;
                  },
                  onSaved: (String val){
                    product.firstname=val;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your First Name",
                    border:OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    contentPadding: EdgeInsets.all(15.0),
                    fillColor:Colors.grey,
                  ),
                  keyboardType: TextInputType.text,
                    ),
                    ),
                    SizedBox(height:10.0),
                    Container(
                    alignment: Alignment.topCenter,
                    width:MediaQuery.of(context).size.width,
                    child: TextFormField(
                  onSaved: (String val){
                    product.lastname=val;
                  },
                  validator: (String val){
                    if(val.isEmpty)
                    {
                      return 'Enter Your Last Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your Last Name",
                    border:OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    contentPadding: EdgeInsets.all(15.0),
                    fillColor:Colors.grey,
                  ),
                  keyboardType: TextInputType.text,
                    ),
                    ),
                    SizedBox(height:10.0),
                   TextFormField(
                     onSaved: (String val){
                        product.email=val;
                      },
                     validator: (String val){
                        if(val.isEmpty)
                        {
                          return 'Enter Your Email Address';
                        }
                        return null;
                      },
                     decoration: InputDecoration(
                       hintText: "Enter Your Email Address",
                       border:OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                       contentPadding: EdgeInsets.all(15.0),
                       fillColor:Colors.grey,
                     ),
                     keyboardType: TextInputType.emailAddress,
                   ),
                        SizedBox(height:10.0),
                     TextFormField(
                       obscureText: true,
                       onSaved: (String val){
                        product.password=val;
                      },
                       validator: (String val){
                        if(val.length > 7)
                        {
                          return 'Password should be minimun 7 characters';
                        }
                        formKey.currentState.save();
                        return null;
                      },
                       decoration: InputDecoration(
                         hintText: "Enter Your Password.",
                         border:OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                         contentPadding: EdgeInsets.all(15.0),
                         fillColor:Colors.grey,
                       ),
                       keyboardType: TextInputType.number,
                     ),
                    SizedBox(height:10.0),
                     TextFormField(
                       obscureText: true,
                      
                       validator: (String val){
                        if(val.length > 7)
                        {
                          return 'Password should be minimun 7 characters';
                        }
                        
                          return null;
                      
                        
                      },
                       decoration: InputDecoration(
                         hintText: "Enter Your Confirm Password",
                         border:OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                         contentPadding: EdgeInsets.all(15.0),
                         fillColor:Colors.grey,
                       ),
                       keyboardType: TextInputType.number,
                     ),
                      SizedBox(height:10.0),
                    RaisedButton(
                      color: Colors.pink,
                      child: Text('Sign Up',style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        if(formKey.currentState.validate())
                        {
                          formKey.currentState.save();
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormData(product:this.product)));
                        }
                      },
                      ),
                ],
              ),
              ),
          ),
        ),
      ),
    );
  }
}