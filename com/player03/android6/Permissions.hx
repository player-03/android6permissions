package com.player03.android6;

import lime.app.Application;
import lime.app.Event;

#if android
import lime.system.JNI;
#end

#if target.threaded
import sys.thread.Deque;
#end

class Permissions {
	public static inline var ACCEPT_HANDOVER:String         = "android.permission.ACCEPT_HANDOVER";
	public static inline var ACCESS_BACKGROUND_LOCATION:String = "android.permission.ACCESS_BACKGROUND_LOCATION";
	public static inline var ACCESS_COARSE_LOCATION:String  = "android.permission.ACCESS_COARSE_LOCATION";
	public static inline var ACCESS_FINE_LOCATION:String    = "android.permission.ACCESS_FINE_LOCATION";
	public static inline var ACCESS_MEDIA_LOCATION:String   = "android.permission.ACCESS_MEDIA_LOCATION";
	public static inline var ACTIVITY_RECOGNITION:String    = "android.permission.ACTIVITY_RECOGNITION";
	public static inline var ADD_VOICEMAIL:String           = "com.android.voicemail.permission.ADD_VOICEMAIL";
	public static inline var ANSWER_PHONE_CALLS:String      = "android.permission.ANSWER_PHONE_CALLS";
	public static inline var BLUETOOTH_ADVERTISE:String     = "android.permission.BLUETOOTH_ADVERTISE";
	public static inline var BLUETOOTH_CONNECT:String       = "android.permission.BLUETOOTH_CONNECT";
	public static inline var BLUETOOTH_SCAN:String          = "android.permission.BLUETOOTH_SCAN";
	public static inline var BODY_SENSORS:String            = "android.permission.BODY_SENSORS";
	public static inline var BODY_SENSORS_BACKGROUND:String = "android.permission.BODY_SENSORS_BACKGROUND";
	public static inline var CALL_PHONE:String              = "android.permission.CALL_PHONE";
	public static inline var CAMERA:String                  = "android.permission.CAMERA";
	public static inline var GET_ACCOUNTS:String            = "android.permission.GET_ACCOUNTS";
	public static inline var NEARBY_WIFI_DEVICES:String     = "android.permission.NEARBY_WIFI_DEVICES";
	public static inline var POST_NOTIFICATIONS:String      = "android.permission.POST_NOTIFICATIONS";
	public static inline var PROCESS_OUTGOING_CALLS:String  = "android.permission.PROCESS_OUTGOING_CALLS";
	public static inline var READ_CALENDAR:String           = "android.permission.READ_CALENDAR";
	public static inline var READ_CALL_LOG:String           = "android.permission.READ_CALL_LOG";
	public static inline var READ_CONTACTS:String           = "android.permission.READ_CONTACTS";
	public static inline var READ_EXTERNAL_STORAGE:String   = "android.permission.READ_EXTERNAL_STORAGE";
	public static inline var READ_MEDIA_AUDIO:String        = "android.permission.READ_MEDIA_AUDIO";
	public static inline var READ_MEDIA_IMAGES:String       = "android.permission.READ_MEDIA_IMAGES";
	public static inline var READ_MEDIA_VIDEO:String        = "android.permission.READ_MEDIA_VIDEO";
	public static inline var READ_PHONE_NUMBERS:String      = "android.permission.READ_PHONE_NUMBERS";
	public static inline var READ_PHONE_STATE:String        = "android.permission.READ_PHONE_STATE";
	public static inline var READ_SMS:String                = "android.permission.READ_SMS";
	public static inline var RECEIVE_MMS:String             = "android.permission.RECEIVE_MMS";
	public static inline var RECEIVE_SMS:String             = "android.permission.RECEIVE_SMS";
	public static inline var RECEIVE_WAP_PUSH:String        = "android.permission.RECEIVE_WAP_PUSH";
	public static inline var RECORD_AUDIO:String            = "android.permission.RECORD_AUDIO";
	public static inline var SEND_SMS:String                = "android.permission.SEND_SMS";
	public static inline var USE_SIP:String                 = "android.permission.USE_SIP";
	public static inline var UWB_RANGING:String             = "android.permission.UWB_RANGING";
	public static inline var WRITE_CALENDAR:String          = "android.permission.WRITE_CALENDAR";
	public static inline var WRITE_CALL_LOG:String          = "android.permission.WRITE_CALL_LOG";
	public static inline var WRITE_CONTACTS:String			= "android.permission.WRITE_CONTACTS";
	public static inline var WRITE_EXTERNAL_STORAGE:String  = "android.permission.WRITE_EXTERNAL_STORAGE";
	
	#if target.threaded
	private static var grantedPermissions:Deque<Array<String>> = new Deque<Array<String>>();
	private static var deniedPermissions:Deque<Array<String>> = new Deque<Array<String>>();
	#end
	
	/**
	 * Checks whether the app already has the given permission.
	 */
	public static inline function hasPermission(permission:String):Bool {
		#if android
		return hasPermissionJNI(permission);
		#else
		return false;
		#end
	}
	
	/**
	 * Displays a dialog requesting the given permission. This dialog will
	 * be displayed even if the user already granted the permission,
	 * allowing them to disable it if they like.
	 */
	public static inline function requestPermission(permission:String):Void {
		requestPermissions([permission]);
	}
	
	/**
	 * Displays a dialog requesting all of the given permissions at once.
	 * This dialog will be displayed even if the user already granted the
	 * permissions, allowing them to disable them if they like.
	 */
	public static function requestPermissions(permissions:Array<String>):Void {
		#if android
		init();
		requestPermissionsJNI(permissions);
		#else
		onPermissionsGranted.dispatch(permissions);
		#end
	}
	
	/**
	 * Lets you know if you should explain why you need this permission. If so,
	 * display a message to the user before calling requestPermission().
	 * 
	 * https://developer.android.com/training/permissions/requesting.html#explain
	 */
	public static inline function shouldShowRequestPermissionRationale(permission:String):Bool {
		#if android
		return shouldShowRequestPermissionRationaleJNI(permission);
		#else
		return false;
		#end
	}
	
	public static var onPermissionsGranted(default, null) = new Event<Array<String>->Void>();
	public static var onPermissionsDenied(default, null) = new Event<Array<String>->Void>();
	
	#if android
	private static var initialized:Bool = false;
	private static function init() {
		if(!initialized) {
			initialized = true;
			JNI.createStaticMethod("com.player03.android6.Permissions", "init", "(Lorg/haxe/lime/HaxeObject;)V")
				(new Permissions());
		}
	}
	#end
	
	private inline function new() {
		Application.current.onUpdate.add(update);
	}
	
	private function onRequestPermissionsResult(permissions:Array<String>, status:Array<Bool>):Void {
		var granted:Array<String> = [];
		var denied:Array<String> = [];
		for(i => permission in permissions) {
			if(status[i]) {
				granted.push(permission);
			} else {
				denied.push(permission);
			}
		}
		
		if(granted.length > 0) {
			grantedPermissions.add(granted);
		}
		if(denied.length > 0) {
			deniedPermissions.add(denied);
		}
	}
	
	private function update(dt:Int):Void {
		var permissions:Array<String> = grantedPermissions.pop(false);
		if(permissions != null) {
			onPermissionsGranted.dispatch(permissions);
		}
		
		permissions = deniedPermissions.pop(false);
		if(permissions != null) {
			onPermissionsDenied.dispatch(permissions);
		}
	}
	
	#if android
	private static var hasPermissionJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "hasPermission", "(Ljava/lang/String;)Z");
	private static var requestPermissionsJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "requestPermissions", "([Ljava/lang/String;)V");
	private static var shouldShowRequestPermissionRationaleJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "shouldShowRequestPermissionRationale", "(Ljava/lang/String;)Z");
	#end
}
