import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String kboyText = 'KBOY';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text('次のページ'),
          ),
          body: Consumer<MainModel>( builder: (context, model, child) {
              return Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      model.kboyText,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        // todo
                        model.changeKboyText();
                      },
                    )
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
