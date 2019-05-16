package com.jiang.flutter_live;

import android.os.Bundle;

import com.amap.api.maps.MapView;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    ViewRegistrant.registerWith(this,new MapView(this));
  }
}
