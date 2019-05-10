package com.player03.android6;

#if (android && openfl)

import lime.system.JNI;

class Permissions {
	public static inline var READ_CALENDAR:String           = "android.permission.READ_CALENDAR";
	public static inline var WRITE_CALENDAR:String          = "android.permission.WRITE_CALENDAR";
	public static inline var CAMERA:String                  = "android.permission.CAMERA";
	public static inline var READ_CONTACTS:String           = "android.permission.READ_CONTACTS";
	public static inline var WRITE_CONTACTS:String          = "android.permission.WRITE_CONTACTS";
	public static inline var GET_ACCOUNTS:String            = "android.permission.GET_ACCOUNTS";
	public static inline var ACCESS_FINE_LOCATION:String    = "android.permission.ACCESS_FINE_LOCATION";
	public static inline var ACCESS_COARSE_LOCATION:String  = "android.permission.ACCESS_COARSE_LOCATION";
	public static inline var RECORD_AUDIO:String            = "android.permission.RECORD_AUDIO";
	public static inline var READ_PHONE_STATE:String        = "android.permission.READ_PHONE_STATE";
	public static inline var CALL_PHONE:String              = "android.permission.CALL_PHONE";
	public static inline var READ_CALL_LOG:String           = "android.permission.READ_CALL_LOG";
	public static inline var WRITE_CALL_LOG:String          = "android.permission.WRITE_CALL_LOG";
	public static inline var ADD_VOICEMAIL:String           = "com.android.voicemail.permission.ADD_VOICEMAIL";
	public static inline var USE_SIP:String                 = "android.permission.USE_SIP";
	public static inline var PROCESS_OUTGOING_CALLS:String  = "android.permission.PROCESS_OUTGOING_CALLS";
	public static inline var BODY_SENSORS:String            = "android.permission.BODY_SENSORS";
	public static inline var SEND_SMS:String                = "android.permission.SEND_SMS";
	public static inline var RECEIVE_SMS:String             = "android.permission.RECEIVE_SMS";
	public static inline var READ_SMS:String                = "android.permission.READ_SMS";
	public static inline var RECEIVE_WAP_PUSH:String        = "android.permission.RECEIVE_WAP_PUSH";
	public static inline var RECEIVE_MMS:String             = "android.permission.RECEIVE_MMS";
	public static inline var READ_EXTERNAL_STORAGE:String   = "android.permission.READ_EXTERNAL_STORAGE";
	public static inline var WRITE_EXTERNAL_STORAGE:String  = "android.permission.WRITE_EXTERNAL_STORAGE";
	
	/**
	 * If this returns false, you must call requestPermission() before
	 * attempting to use the permission.
	 */
	public static inline function hasPermission(permission:String):Bool {
		return hasPermissionJNI(permission);
	}
	
	/**
	 * Displays a dialog requesting the given permission. This dialog will
	 * be displayed even if the user already granted the permission,
	 * allowing them to disable it if they like.
	 * 
	 * No confirmation event is available because OpenFL doesn't implement
	 * onRequestPermissionsResult().
	 */
	public static inline function requestPermission(permission:String):Void {
		return requestPermissionJNI(permission);
	}
	
	/**
	 * Displays a dialog requesting all of the given permissions at once.
	 * This dialog will be displayed even if the user already granted the
	 * permissions, allowing them to disable them if they like.
	 * 
	 * No confirmation event is available because OpenFL doesn't implement
	 * onRequestPermissionsResult().
	 */
	public static inline function requestPermissions(permissions:Array<String>):Void {
		return requestPermissionsJNI(permissions);
	}
	
	/**
	 * Lets you know if you should explain why you need this permission. If
	 * this returns true, it's your job to display a message to the user before
	 * calling requestPermission() again. If you don't, the user may decline
	 * the permission.
	 * 
	 * https://developer.android.com/training/permissions/requesting.html#explain
	 */
	public static inline function shouldShowRequestPermissionRationale(permission:String):Bool {
		return shouldShowRequestPermissionRationaleJNI(permission);
	}
	
	private static var hasPermissionJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "hasPermission", "(Ljava/lang/String;)Z");
	private static var requestPermissionJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "requestPermission", "(Ljava/lang/String;)V");
	private static var requestPermissionsJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "requestPermissions", "([Ljava/lang/String;)V");
	private static var shouldShowRequestPermissionRationaleJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "shouldShowRequestPermissionRationale", "(Ljava/lang/String;)Z");
}

#else

class Permissions {
	public static inline var READ_CALENDAR:String           = null;
	public static inline var WRITE_CALENDAR:String          = null;
	public static inline var CAMERA:String                  = null;
	public static inline var READ_CONTACTS:String           = null;
	public static inline var WRITE_CONTACTS:String          = null;
	public static inline var GET_ACCOUNTS:String            = null;
	public static inline var ACCESS_FINE_LOCATION:String    = null;
	public static inline var ACCESS_COARSE_LOCATION:String  = null;
	public static inline var RECORD_AUDIO:String            = null;
	public static inline var READ_PHONE_STATE:String        = null;
	public static inline var CALL_PHONE:String              = null;
	public static inline var READ_CALL_LOG:String           = null;
	public static inline var WRITE_CALL_LOG:String          = null;
	public static inline var ADD_VOICEMAIL:String           = null;
	public static inline var USE_SIP:String                 = null;
	public static inline var PROCESS_OUTGOING_CALLS:String  = null;
	public static inline var BODY_SENSORS:String            = null;
	public static inline var SEND_SMS:String                = null;
	public static inline var RECEIVE_SMS:String             = null;
	public static inline var READ_SMS:String                = null;
	public static inline var RECEIVE_WAP_PUSH:String        = null;
	public static inline var RECEIVE_MMS:String             = null;
	public static inline var READ_EXTERNAL_STORAGE:String   = null;
	public static inline var WRITE_EXTERNAL_STORAGE:String  = null;
	
	public static inline function hasPermission(permission:String):Bool {
		return true;
	}
	
	public static inline function requestPermission(permission:String):Void {
	}
	
	public static inline function requestPermissions(permissions:Array<String>):Void {
	}
	
	public static inline function shouldShowRequestPermissionRationale(permission:String):Bool {
		return false;
	}
}

#end
