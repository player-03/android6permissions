package com.player03.android6;

import lime.app.Event;
import lime.system.JNI;

class Permissions implements JNISafety {
	inline public static var ACCEPT_HANDOVER = "android.permission.ACCEPT_HANDOVER";
	inline public static var ACCESS_BACKGROUND_LOCATION = "android.permission.ACCESS_BACKGROUND_LOCATION";
	inline public static var ACCESS_BLOBS_ACROSS_USERS = "android.permission.ACCESS_BLOBS_ACROSS_USERS";
	inline public static var ACCESS_CHECKIN_PROPERTIES = "android.permission.ACCESS_CHECKIN_PROPERTIES";
	inline public static var ACCESS_COARSE_LOCATION = "android.permission.ACCESS_COARSE_LOCATION";
	inline public static var ACCESS_FINE_LOCATION = "android.permission.ACCESS_FINE_LOCATION";
	inline public static var ACCESS_LOCATION_EXTRA_COMMANDS = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS";
	inline public static var ACCESS_MEDIA_LOCATION = "android.permission.ACCESS_MEDIA_LOCATION";
	inline public static var ACCESS_NETWORK_STATE = "android.permission.ACCESS_NETWORK_STATE";
	inline public static var ACCESS_NOTIFICATION_POLICY = "android.permission.ACCESS_NOTIFICATION_POLICY";
	inline public static var ACCESS_SUPPLEMENTAL_APIS = "android.permission.ACCESS_SUPPLEMENTAL_APIS";
	inline public static var ACCESS_WIFI_STATE = "android.permission.ACCESS_WIFI_STATE";
	inline public static var ACCOUNT_MANAGER = "android.permission.ACCOUNT_MANAGER";
	inline public static var ACTIVITY_RECOGNITION = "android.permission.ACTIVITY_RECOGNITION";
	inline public static var ADD_VOICEMAIL = "android.permission.ADD_VOICEMAIL";
	inline public static var ANSWER_PHONE_CALLS = "android.permission.ANSWER_PHONE_CALLS";
	inline public static var BATTERY_STATS = "android.permission.BATTERY_STATS";
	inline public static var BIND_ACCESSIBILITY_SERVICE = "android.permission.BIND_ACCESSIBILITY_SERVICE";
	inline public static var BIND_APPWIDGET = "android.permission.BIND_APPWIDGET";
	inline public static var BIND_AUTOFILL_SERVICE = "android.permission.BIND_AUTOFILL_SERVICE";
	inline public static var BIND_CALL_REDIRECTION_SERVICE = "android.permission.BIND_CALL_REDIRECTION_SERVICE";
	inline public static var BIND_CARRIER_MESSAGING_CLIENT_SERVICE = "android.permission.BIND_CARRIER_MESSAGING_CLIENT_SERVICE";
	inline public static var BIND_CARRIER_MESSAGING_SERVICE = "android.permission.BIND_CARRIER_MESSAGING_SERVICE";
	inline public static var BIND_CARRIER_SERVICES = "android.permission.BIND_CARRIER_SERVICES";
	inline public static var BIND_CHOOSER_TARGET_SERVICE = "android.permission.BIND_CHOOSER_TARGET_SERVICE";
	inline public static var BIND_COMPANION_DEVICE_SERVICE = "android.permission.BIND_COMPANION_DEVICE_SERVICE";
	inline public static var BIND_CONDITION_PROVIDER_SERVICE = "android.permission.BIND_CONDITION_PROVIDER_SERVICE";
	inline public static var BIND_CONTROLS = "android.permission.BIND_CONTROLS";
	inline public static var BIND_DEVICE_ADMIN = "android.permission.BIND_DEVICE_ADMIN";
	inline public static var BIND_DREAM_SERVICE = "android.permission.BIND_DREAM_SERVICE";
	inline public static var BIND_INCALL_SERVICE = "android.permission.BIND_INCALL_SERVICE";
	inline public static var BIND_INPUT_METHOD = "android.permission.BIND_INPUT_METHOD";
	inline public static var BIND_MIDI_DEVICE_SERVICE = "android.permission.BIND_MIDI_DEVICE_SERVICE";
	inline public static var BIND_NFC_SERVICE = "android.permission.BIND_NFC_SERVICE";
	inline public static var BIND_NOTIFICATION_LISTENER_SERVICE = "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE";
	inline public static var BIND_PRINT_SERVICE = "android.permission.BIND_PRINT_SERVICE";
	inline public static var BIND_QUICK_ACCESS_WALLET_SERVICE = "android.permission.BIND_QUICK_ACCESS_WALLET_SERVICE";
	inline public static var BIND_QUICK_SETTINGS_TILE = "android.permission.BIND_QUICK_SETTINGS_TILE";
	inline public static var BIND_REMOTEVIEWS = "android.permission.BIND_REMOTEVIEWS";
	inline public static var BIND_SCREENING_SERVICE = "android.permission.BIND_SCREENING_SERVICE";
	inline public static var BIND_TELECOM_CONNECTION_SERVICE = "android.permission.BIND_TELECOM_CONNECTION_SERVICE";
	inline public static var BIND_TEXT_SERVICE = "android.permission.BIND_TEXT_SERVICE";
	inline public static var BIND_TV_INPUT = "android.permission.BIND_TV_INPUT";
	inline public static var BIND_TV_INTERACTIVE_APP = "android.permission.BIND_TV_INTERACTIVE_APP";
	inline public static var BIND_VISUAL_VOICEMAIL_SERVICE = "android.permission.BIND_VISUAL_VOICEMAIL_SERVICE";
	inline public static var BIND_VOICE_INTERACTION = "android.permission.BIND_VOICE_INTERACTION";
	inline public static var BIND_VPN_SERVICE = "android.permission.BIND_VPN_SERVICE";
	inline public static var BIND_VR_LISTENER_SERVICE = "android.permission.BIND_VR_LISTENER_SERVICE";
	inline public static var BIND_WALLPAPER = "android.permission.BIND_WALLPAPER";
	inline public static var BLUETOOTH = "android.permission.BLUETOOTH";
	inline public static var BLUETOOTH_ADMIN = "android.permission.BLUETOOTH_ADMIN";
	inline public static var BLUETOOTH_ADVERTISE = "android.permission.BLUETOOTH_ADVERTISE";
	inline public static var BLUETOOTH_CONNECT = "android.permission.BLUETOOTH_CONNECT";
	inline public static var BLUETOOTH_PRIVILEGED = "android.permission.BLUETOOTH_PRIVILEGED";
	inline public static var BLUETOOTH_SCAN = "android.permission.BLUETOOTH_SCAN";
	inline public static var BODY_SENSORS = "android.permission.BODY_SENSORS";
	inline public static var BODY_SENSORS_BACKGROUND = "android.permission.BODY_SENSORS_BACKGROUND";
	inline public static var BROADCAST_PACKAGE_REMOVED = "android.permission.BROADCAST_PACKAGE_REMOVED";
	inline public static var BROADCAST_SMS = "android.permission.BROADCAST_SMS";
	inline public static var BROADCAST_STICKY = "android.permission.BROADCAST_STICKY";
	inline public static var BROADCAST_WAP_PUSH = "android.permission.BROADCAST_WAP_PUSH";
	inline public static var CALL_COMPANION_APP = "android.permission.CALL_COMPANION_APP";
	inline public static var CALL_PHONE = "android.permission.CALL_PHONE";
	inline public static var CALL_PRIVILEGED = "android.permission.CALL_PRIVILEGED";
	inline public static var CAMERA = "android.permission.CAMERA";
	inline public static var CAPTURE_AUDIO_OUTPUT = "android.permission.CAPTURE_AUDIO_OUTPUT";
	inline public static var CHANGE_COMPONENT_ENABLED_STATE = "android.permission.CHANGE_COMPONENT_ENABLED_STATE";
	inline public static var CHANGE_CONFIGURATION = "android.permission.CHANGE_CONFIGURATION";
	inline public static var CHANGE_NETWORK_STATE = "android.permission.CHANGE_NETWORK_STATE";
	inline public static var CHANGE_WIFI_MULTICAST_STATE = "android.permission.CHANGE_WIFI_MULTICAST_STATE";
	inline public static var CHANGE_WIFI_STATE = "android.permission.CHANGE_WIFI_STATE";
	inline public static var CLEAR_APP_CACHE = "android.permission.CLEAR_APP_CACHE";
	inline public static var CONTROL_LOCATION_UPDATES = "android.permission.CONTROL_LOCATION_UPDATES";
	inline public static var DELETE_CACHE_FILES = "android.permission.DELETE_CACHE_FILES";
	inline public static var DELETE_PACKAGES = "android.permission.DELETE_PACKAGES";
	inline public static var DELIVER_COMPANION_MESSAGES = "android.permission.DELIVER_COMPANION_MESSAGES";
	inline public static var DIAGNOSTIC = "android.permission.DIAGNOSTIC";
	inline public static var DISABLE_KEYGUARD = "android.permission.DISABLE_KEYGUARD";
	inline public static var DUMP = "android.permission.DUMP";
	inline public static var EXPAND_STATUS_BAR = "android.permission.EXPAND_STATUS_BAR";
	inline public static var FACTORY_TEST = "android.permission.FACTORY_TEST";
	inline public static var FOREGROUND_SERVICE = "android.permission.FOREGROUND_SERVICE";
	inline public static var GET_ACCOUNTS = "android.permission.GET_ACCOUNTS";
	inline public static var GET_ACCOUNTS_PRIVILEGED = "android.permission.GET_ACCOUNTS_PRIVILEGED";
	inline public static var GET_PACKAGE_SIZE = "android.permission.GET_PACKAGE_SIZE";
	inline public static var GET_TASKS = "android.permission.GET_TASKS";
	inline public static var GLOBAL_SEARCH = "android.permission.GLOBAL_SEARCH";
	inline public static var HIDE_OVERLAY_WINDOWS = "android.permission.HIDE_OVERLAY_WINDOWS";
	inline public static var HIGH_SAMPLING_RATE_SENSORS = "android.permission.HIGH_SAMPLING_RATE_SENSORS";
	inline public static var INSTALL_LOCATION_PROVIDER = "android.permission.INSTALL_LOCATION_PROVIDER";
	inline public static var INSTALL_PACKAGES = "android.permission.INSTALL_PACKAGES";
	inline public static var INSTALL_SHORTCUT = "android.permission.INSTALL_SHORTCUT";
	inline public static var INSTANT_APP_FOREGROUND_SERVICE = "android.permission.INSTANT_APP_FOREGROUND_SERVICE";
	inline public static var INTERACT_ACROSS_PROFILES = "android.permission.INTERACT_ACROSS_PROFILES";
	inline public static var INTERNET = "android.permission.INTERNET";
	inline public static var KILL_BACKGROUND_PROCESSES = "android.permission.KILL_BACKGROUND_PROCESSES";
	inline public static var LAUNCH_MULTI_PANE_SETTINGS_DEEP_LINK = "android.permission.LAUNCH_MULTI_PANE_SETTINGS_DEEP_LINK";
	inline public static var LOADER_USAGE_STATS = "android.permission.LOADER_USAGE_STATS";
	inline public static var LOCATION_HARDWARE = "android.permission.LOCATION_HARDWARE";
	inline public static var MANAGE_DOCUMENTS = "android.permission.MANAGE_DOCUMENTS";
	inline public static var MANAGE_EXTERNAL_STORAGE = "android.permission.MANAGE_EXTERNAL_STORAGE";
	inline public static var MANAGE_MEDIA = "android.permission.MANAGE_MEDIA";
	inline public static var MANAGE_ONGOING_CALLS = "android.permission.MANAGE_ONGOING_CALLS";
	inline public static var MANAGE_OWN_CALLS = "android.permission.MANAGE_OWN_CALLS";
	inline public static var MANAGE_WIFI_AUTO_JOIN = "android.permission.MANAGE_WIFI_AUTO_JOIN";
	inline public static var MANAGE_WIFI_INTERFACES = "android.permission.MANAGE_WIFI_INTERFACES";
	inline public static var MASTER_CLEAR = "android.permission.MASTER_CLEAR";
	inline public static var MEDIA_CONTENT_CONTROL = "android.permission.MEDIA_CONTENT_CONTROL";
	inline public static var MODIFY_AUDIO_SETTINGS = "android.permission.MODIFY_AUDIO_SETTINGS";
	inline public static var MODIFY_PHONE_STATE = "android.permission.MODIFY_PHONE_STATE";
	inline public static var MOUNT_FORMAT_FILESYSTEMS = "android.permission.MOUNT_FORMAT_FILESYSTEMS";
	inline public static var MOUNT_UNMOUNT_FILESYSTEMS = "android.permission.MOUNT_UNMOUNT_FILESYSTEMS";
	inline public static var NEARBY_WIFI_DEVICES = "android.permission.NEARBY_WIFI_DEVICES";
	inline public static var NFC = "android.permission.NFC";
	inline public static var NFC_PREFERRED_PAYMENT_INFO = "android.permission.NFC_PREFERRED_PAYMENT_INFO";
	inline public static var NFC_TRANSACTION_EVENT = "android.permission.NFC_TRANSACTION_EVENT";
	inline public static var OVERRIDE_WIFI_CONFIG = "android.permission.OVERRIDE_WIFI_CONFIG";
	inline public static var PACKAGE_USAGE_STATS = "android.permission.PACKAGE_USAGE_STATS";
	inline public static var PERSISTENT_ACTIVITY = "android.permission.PERSISTENT_ACTIVITY";
	inline public static var POST_NOTIFICATIONS = "android.permission.POST_NOTIFICATIONS";
	inline public static var PROCESS_OUTGOING_CALLS = "android.permission.PROCESS_OUTGOING_CALLS";
	inline public static var QUERY_ALL_PACKAGES = "android.permission.QUERY_ALL_PACKAGES";
	inline public static var READ_ASSISTANT_APP_SEARCH_DATA = "android.permission.READ_ASSISTANT_APP_SEARCH_DATA";
	inline public static var READ_BASIC_PHONE_STATE = "android.permission.READ_BASIC_PHONE_STATE";
	inline public static var READ_CALENDAR = "android.permission.READ_CALENDAR";
	inline public static var READ_CALL_LOG = "android.permission.READ_CALL_LOG";
	inline public static var READ_CONTACTS = "android.permission.READ_CONTACTS";
	inline public static var READ_EXTERNAL_STORAGE = "android.permission.READ_EXTERNAL_STORAGE";
	inline public static var READ_HOME_APP_SEARCH_DATA = "android.permission.READ_HOME_APP_SEARCH_DATA";
	inline public static var READ_INPUT_STATE = "android.permission.READ_INPUT_STATE";
	inline public static var READ_LOGS = "android.permission.READ_LOGS";
	inline public static var READ_MEDIA_AUDIO = "android.permission.READ_MEDIA_AUDIO";
	inline public static var READ_MEDIA_IMAGE = "android.permission.READ_MEDIA_IMAGE";
	inline public static var READ_MEDIA_VIDEO = "android.permission.READ_MEDIA_VIDEO";
	inline public static var READ_NEARBY_STREAMING_POLICY = "android.permission.READ_NEARBY_STREAMING_POLICY";
	inline public static var READ_PHONE_NUMBERS = "android.permission.READ_PHONE_NUMBERS";
	inline public static var READ_PHONE_STATE = "android.permission.READ_PHONE_STATE";
	inline public static var READ_PRECISE_PHONE_STATE = "android.permission.READ_PRECISE_PHONE_STATE";
	inline public static var READ_SMS = "android.permission.READ_SMS";
	inline public static var READ_SYNC_SETTINGS = "android.permission.READ_SYNC_SETTINGS";
	inline public static var READ_SYNC_STATS = "android.permission.READ_SYNC_STATS";
	inline public static var READ_VOICEMAIL = "android.permission.READ_VOICEMAIL";
	inline public static var REBOOT = "android.permission.REBOOT";
	inline public static var RECEIVE_BOOT_COMPLETED = "android.permission.RECEIVE_BOOT_COMPLETED";
	inline public static var RECEIVE_MMS = "android.permission.RECEIVE_MMS";
	inline public static var RECEIVE_SMS = "android.permission.RECEIVE_SMS";
	inline public static var RECEIVE_WAP_PUSH = "android.permission.RECEIVE_WAP_PUSH";
	inline public static var RECORD_AUDIO = "android.permission.RECORD_AUDIO";
	inline public static var REORDER_TASKS = "android.permission.REORDER_TASKS";
	inline public static var REQUEST_COMPANION_PROFILE_APP_STREAMING = "android.permission.REQUEST_COMPANION_PROFILE_APP_STREAMING";
	inline public static var REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION = "android.permission.REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION";
	inline public static var REQUEST_COMPANION_PROFILE_COMPUTER = "android.permission.REQUEST_COMPANION_PROFILE_COMPUTER";
	inline public static var REQUEST_COMPANION_PROFILE_WATCH = "android.permission.REQUEST_COMPANION_PROFILE_WATCH";
	inline public static var REQUEST_COMPANION_RUN_IN_BACKGROUND = "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND";
	inline public static var REQUEST_COMPANION_SELF_MANAGED = "android.permission.REQUEST_COMPANION_SELF_MANAGED";
	inline public static var REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND = "android.permission.REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND";
	inline public static var REQUEST_COMPANION_USE_DATA_IN_BACKGROUND = "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND";
	inline public static var REQUEST_DELETE_PACKAGES = "android.permission.REQUEST_DELETE_PACKAGES";
	inline public static var REQUEST_IGNORE_BATTERY_OPTIMIZATIONS = "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS";
	inline public static var REQUEST_INSTALL_PACKAGES = "android.permission.REQUEST_INSTALL_PACKAGES";
	inline public static var REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE = "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE";
	inline public static var REQUEST_PASSWORD_COMPLEXITY = "android.permission.REQUEST_PASSWORD_COMPLEXITY";
	inline public static var RESTART_PACKAGES = "android.permission.RESTART_PACKAGES";
	inline public static var SCHEDULE_EXACT_ALARM = "android.permission.SCHEDULE_EXACT_ALARM";
	inline public static var SEND_RESPOND_VIA_MESSAGE = "android.permission.SEND_RESPOND_VIA_MESSAGE";
	inline public static var SEND_SMS = "android.permission.SEND_SMS";
	inline public static var SET_ALARM = "android.permission.SET_ALARM";
	inline public static var SET_ALWAYS_FINISH = "android.permission.SET_ALWAYS_FINISH";
	inline public static var SET_ANIMATION_SCALE = "android.permission.SET_ANIMATION_SCALE";
	inline public static var SET_DEBUG_APP = "android.permission.SET_DEBUG_APP";
	inline public static var SET_PREFERRED_APPLICATIONS = "android.permission.SET_PREFERRED_APPLICATIONS";
	inline public static var SET_PROCESS_LIMIT = "android.permission.SET_PROCESS_LIMIT";
	inline public static var SET_TIME = "android.permission.SET_TIME";
	inline public static var SET_TIME_ZONE = "android.permission.SET_TIME_ZONE";
	inline public static var SET_WALLPAPER = "android.permission.SET_WALLPAPER";
	inline public static var SET_WALLPAPER_HINTS = "android.permission.SET_WALLPAPER_HINTS";
	inline public static var SIGNAL_PERSISTENT_PROCESSES = "android.permission.SIGNAL_PERSISTENT_PROCESSES";
	inline public static var SMS_FINANCIAL_TRANSACTIONS = "android.permission.SMS_FINANCIAL_TRANSACTIONS";
	inline public static var START_FOREGROUND_SERVICES_FROM_BACKGROUND = "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND";
	inline public static var START_VIEW_APP_FEATURES = "android.permission.START_VIEW_APP_FEATURES";
	inline public static var START_VIEW_PERMISSION_USAGE = "android.permission.START_VIEW_PERMISSION_USAGE";
	inline public static var STATUS_BAR = "android.permission.STATUS_BAR";
	inline public static var SYSTEM_ALERT_WINDOW = "android.permission.SYSTEM_ALERT_WINDOW";
	inline public static var TRANSMIT_IR = "android.permission.TRANSMIT_IR";
	inline public static var UNINSTALL_SHORTCUT = "android.permission.UNINSTALL_SHORTCUT";
	inline public static var UPDATE_DEVICE_STATS = "android.permission.UPDATE_DEVICE_STATS";
	inline public static var UPDATE_PACKAGES_WITHOUT_USER_ACTION = "android.permission.UPDATE_PACKAGES_WITHOUT_USER_ACTION";
	inline public static var USE_BIOMETRIC = "android.permission.USE_BIOMETRIC";
	inline public static var USE_EXACT_ALARM = "android.permission.USE_EXACT_ALARM";
	inline public static var USE_FINGERPRINT = "android.permission.USE_FINGERPRINT";
	inline public static var USE_FULL_SCREEN_INTENT = "android.permission.USE_FULL_SCREEN_INTENT";
	inline public static var USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER = "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER";
	inline public static var USE_SIP = "android.permission.USE_SIP";
	inline public static var UWB_RANGING = "android.permission.UWB_RANGING";
	inline public static var VIBRATE = "android.permission.VIBRATE";
	inline public static var WAKE_LOCK = "android.permission.WAKE_LOCK";
	inline public static var WRITE_APN_SETTINGS = "android.permission.WRITE_APN_SETTINGS";
	inline public static var WRITE_CALENDAR = "android.permission.WRITE_CALENDAR";
	inline public static var WRITE_CALL_LOG = "android.permission.WRITE_CALL_LOG";
	inline public static var WRITE_CONTACTS = "android.permission.WRITE_CONTACTS";
	inline public static var WRITE_EXTERNAL_STORAGE = "android.permission.WRITE_EXTERNAL_STORAGE";
	inline public static var WRITE_GSERVICES = "android.permission.WRITE_GSERVICES";
	inline public static var WRITE_SECURE_SETTINGS = "android.permission.WRITE_SECURE_SETTINGS";
	inline public static var WRITE_SETTINGS = "android.permission.WRITE_SETTINGS";
	inline public static var WRITE_SYNC_SETTINGS = "android.permission.WRITE_SYNC_SETTINGS";
	inline public static var WRITE_VOICEMAIL = "android.permission.WRITE_VOICEMAIL";
	
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
	
	private inline function new() {}
	
	@:runOnMainThread
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
			onPermissionsGranted.dispatch(granted);
		}
		if(denied.length > 0) {
			onPermissionsDenied.dispatch(denied);
		}
	}
	
	#if android
	private static var hasPermissionJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "hasPermission", "(Ljava/lang/String;)Z");
	private static var requestPermissionsJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "requestPermissions", "([Ljava/lang/String;)V");
	private static var shouldShowRequestPermissionRationaleJNI = JNI.createStaticMethod("com.player03.android6.Permissions", "shouldShowRequestPermissionRationale", "(Ljava/lang/String;)Z");
	#end
}
