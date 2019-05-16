package com.jiang.flutter_live;

import android.content.Context;
import android.view.View;

import com.amap.api.maps.MapView;

import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class AMapViewFactory extends PlatformViewFactory{
    private MapView mapView;
    public AMapViewFactory(MessageCodec<Object> createArgsCodec,MapView mapView) {
        super(createArgsCodec);
        this.mapView=mapView;
    }

    @Override
    public PlatformView create(Context context, int i, Object o) {
        return new PlatformView() {
            @Override
            public View getView() {
                return mapView;
            }

            @Override
            public void dispose() {

            }
        };
    }
}
