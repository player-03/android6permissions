package com.player03.android6;

import android.content.pm.PackageManager;
import android.Manifest;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import java.lang.String;
import org.haxe.extension.Extension;
import org.haxe.lime.HaxeObject;

public class Permissions extends Extension {
	private static final int REQUEST_CODE = 2; //SDL uses 1
	
	private static HaxeObject haxeCallbackHandler;
	
	public static void init(HaxeObject haxeCallbackHandler) {
		Permissions.haxeCallbackHandler = haxeCallbackHandler;
	}
	
	public static boolean hasPermission(String permission) {
		return ContextCompat.checkSelfPermission(Extension.mainContext, permission)
			== PackageManager.PERMISSION_GRANTED;
	}
	
	public static void requestPermissions(String[] permissions) {
		ActivityCompat.requestPermissions(Extension.mainActivity, permissions, REQUEST_CODE);
	}
	
	public static boolean shouldShowRequestPermissionRationale(String permission) {
		return ActivityCompat.shouldShowRequestPermissionRationale(Extension.mainActivity, permission);
	}
	
	@Override public boolean onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
		if(requestCode != REQUEST_CODE) {
			return true;
		}
		
		if(haxeCallbackHandler != null) {
			boolean[] granted = new boolean[grantResults.length];
			for(int i = 0; i < grantResults.length; i++) {
				granted[i] = grantResults[i] == PackageManager.PERMISSION_GRANTED;
			}
			haxeCallbackHandler.call2("onRequestPermissionsResult", permissions, granted);
		}
		return true;
	}
}
