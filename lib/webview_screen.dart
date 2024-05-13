
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';



class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {

  InAppWebViewController? webViewController;
  PullToRefreshController? refreshController;


  late var url ;
  var initialUrl  = "https://yaar.symbiosemarket.com/";

  double progress =  0  ;
  var  urlController  = TextEditingController();

  @override
  void  initState(){
    super.initState();
    refreshController =  PullToRefreshController(
      onRefresh: () {
        webViewController!.reload();

      },
    options: PullToRefreshOptions(
        color:  Colors.green,
        backgroundColor: Colors.white,
    )

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Expanded(child: InAppWebView(
            onLoadStop: (controller, url) {
              refreshController!.endRefreshing();
            },
            pullToRefreshController: refreshController,
            onWebViewCreated  : (controller) => webViewController  =  controller,
            initialUrlRequest: URLRequest(url: Uri.parse(initialUrl))

        ))],
      ),
    );
  }
}