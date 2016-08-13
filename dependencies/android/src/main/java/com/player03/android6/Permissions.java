package com.player03.android6;

import org.haxe.extension.Extension;

import java.lang.String;

import android.content.pm.PackageManager;
import android.Manifest;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;

public class Permissions extends Extension {
	public static boolean hasPermission(String permission) {
		return ContextCompat.checkSelfPermission(Extension.mainContext, permission)
			== PackageManager.PERMISSION_GRANTED;
	}
	
	public static void requestPermission(String permission) {
		requestPermissions(new String[]{permission});
	}
	
	public static void requestPermissions(String[] permissions) {
		ActivityCompat.requestPermissions(Extension.mainActivity, permissions, 0);
	}
	
	public static boolean shouldShowRequestPermissionRationale(String permission) {
		return ActivityCompat.shouldShowRequestPermissionRationale(Extension.mainActivity, permission);
	}
}