import 'package:flutter/material.dart';
import 'package:vgts_login/web_view.dart';

class VGTSLogin {

  WebViewWidget? webView;

  Function(dynamic)? onSuccess;
  Function(String)? onFailure;

  VGTSLogin({this.onSuccess, this.onFailure}) {
    webView = new WebViewWidget(url: '',);
  }

  //http://accounts.dev.vgts.xyz/signin?mode=mobile

  signIn(BuildContext context) {
    Navigator.push(context,MaterialPageRoute(builder: (context) => WebViewWidget(url:"http://accounts.yoloworks.in/signin?mode=mobile",))).then((value){
      if(value!=null) {
        onSuccess!(value);
      }
      else {
        onFailure!("Error");
      }
   });
  }

  signUp(BuildContext context) {
    Navigator.push(context,MaterialPageRoute(builder: (context) => WebViewWidget(url:"http://accounts.yoloworks.in/register?mode=mobile"))).then((value){
      if(value!=null) {
        onSuccess!(value);
      }
      else {
        onFailure!("Error");
      }
    });
  }

}





