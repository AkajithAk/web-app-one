
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class One extends StatefulWidget {
  const One({ Key? key }) : super(key: key);

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  late WebViewController _controller;

  goBack()async{
    if(await _controller.canGoBack()){
      await _controller.goBack();
    }
  }

  // goForware()async{
  //   if(await _controller.canGoForward()){
  //     await _controller.goForward();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: goBack, icon: Icon(Icons.arrow_back)),
        // SizedBox(width: 300,),
        // IconButton(onPressed:goForware, icon: Icon(Icons.arrow_forward)),
      ],),
      body: WebView(
        initialUrl: "https://pay.namenayou.com/",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewcontroller){
          _controller=webViewcontroller;
        },
      ),
    );
  }
}