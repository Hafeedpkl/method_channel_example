package com.example.method_channel_example

import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private  val channelName ="showToastByHafeed";
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        var channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger,channelName);
        channel.setMethodCallHandler{call,result->
            if(call.method == "showToast"){
                Toast.makeText(this,"this is the text toast text in the method channel",Toast.LENGTH_LONG).show();
            }
        }
    }
}
