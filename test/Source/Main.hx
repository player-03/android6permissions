package;

import openfl.Lib;
import com.player03.android6.Permissions;
import feathers.controls.Alert;
import feathers.controls.Button;
import feathers.controls.Form;
import feathers.controls.FormItem;
import feathers.controls.ListView;
import feathers.controls.TextArea;
import feathers.controls.TextCallout;
import feathers.data.ArrayCollection;
import feathers.data.ButtonBarItemState;
import feathers.layout.FormLayout;
import lime.system.ForegroundWorker;

class Main extends Form {
	private var permissions:ListView;
	private var rationale:TextArea;
	
	public function new() {
		super();
		
		var formLayout:FormLayout = new FormLayout();
		formLayout.paddingLeft = formLayout.paddingRight = stage.stageWidth * 0.05;
		formLayout.paddingTop = formLayout.paddingBottom = stage.stageHeight * 0.02;
		formLayout.gap = stage.stageHeight * 0.05;
		layout = formLayout;
		
		var samplePermissions:Array<String> = [
			Permissions.READ_CALENDAR,
			Permissions.WRITE_CALENDAR,
			Permissions.CAMERA,
			Permissions.READ_CONTACTS,
			Permissions.WRITE_CONTACTS,
			Permissions.GET_ACCOUNTS,
			Permissions.ACCESS_FINE_LOCATION,
			Permissions.ACCESS_COARSE_LOCATION,
			Permissions.RECORD_AUDIO,
			Permissions.READ_PHONE_STATE,
			Permissions.CALL_PHONE,
			Permissions.READ_CALL_LOG,
			Permissions.WRITE_CALL_LOG,
			Permissions.ADD_VOICEMAIL,
			Permissions.USE_SIP,
			Permissions.PROCESS_OUTGOING_CALLS,
			Permissions.BODY_SENSORS,
			Permissions.SEND_SMS,
			Permissions.RECEIVE_SMS,
			Permissions.READ_SMS,
			Permissions.RECEIVE_WAP_PUSH,
			Permissions.RECEIVE_MMS,
			Permissions.READ_EXTERNAL_STORAGE,
			Permissions.WRITE_EXTERNAL_STORAGE
		];
		permissions = new ListView(new ArrayCollection(
			[for(permission in samplePermissions) { permission: permission }]
		));
		permissions.itemToText = function(permission:{ permission:String }):String return permission.permission;
		permissions.allowMultipleSelection = true;
		permissions.height = stage.stageHeight * 0.5;
		addChild(new FormItem("Permission(s) to request:", permissions));
		
		rationale = new TextArea("[Insert explanation here.]");
		rationale.width = stage.stageWidth * 0.8;
		rationale.height = stage.stageHeight * 0.2;
		addChild(new FormItem("Rationale to show to the user:", rationale));
		
		submitButton = new Button("Request permission(s)");
		addChild(submitButton);
		
		var listener = new PermissionListener();
		listener.init();
	}
	
	public override function submit():Void {
		if(permissions.selectedItems.length == 0) {
			TextCallout.show("Select a permission.", permissions);
			return;
		}
		
		var permissionsAlreadyGranted:Array<String> = [];
		var permissionsNeeded:Array<String> = [];
		var rationaleNeeded:Bool = false;
		for(item in permissions.selectedItems) {
			var permission:String = permissions.itemToText(item);
			if(Permissions.hasPermission(permission)) {
				permissionsAlreadyGranted.push(permission);
			} else {
				permissionsNeeded.push(permission);
				
				if(!rationaleNeeded && Permissions.shouldShowRequestPermissionRationale(permission)) {
					rationaleNeeded = true;
				}
			}
		}
		
		super.submit();
		
		if(rationaleNeeded) {
			if(rationale.text.length == 0) {
				TextCallout.show("Provide a rationale.", rationale);
			} else {
				Alert.show(rationale.text, "Rationale", ["Ok", "Cancel"], (state:ButtonBarItemState) -> {
					if(state.text == "Ok") {
						Permissions.requestPermissions(permissionsNeeded);
					}
				});
			}
		} else {
			if(permissionsNeeded != null && permissionsNeeded.length > 0) {
				Permissions.requestPermissions(permissionsNeeded);
			}
		}
		
		if(permissionsAlreadyGranted.length > 0) {
			PermissionListener.alert(permissionsAlreadyGranted.join("\n"),
				'Permission${permissionsAlreadyGranted.length == 1 ? "" : "s"} already granted');
		}
	}
}

class PermissionListener {
	public static function alert(message:String, header:String):Void {
		Alert.show(message, header, ["Ok"])
			.width = Lib.current.stage.stageWidth * 0.6;
	}
	
	public inline function new() {
	}
	
	public function init():Void {
		Permissions.onPermissionsGranted.add(onPermissionsGranted);
		Permissions.onPermissionsDenied.add(onPermissionsDenied);
	}
	
	public function destroy():Void {
		Permissions.onPermissionsGranted.remove(onPermissionsGranted);
		Permissions.onPermissionsDenied.remove(onPermissionsDenied);
	}
	
	public function onPermissionsGranted(permissions:Array<String>):Void {
		alert(permissions.join("\n"),
			'Permission${permissions.length == 1 ? "" : "s"} granted');
		
		if(!ForegroundWorker.onMainThread()) {
			alert("onPermissionsGranted called from the wrong thread",
				"Potential thread safety issue!");
		}
	}
	
	public function onPermissionsDenied(permissions:Array<String>):Void {
		alert(permissions.join("\n"),
			'Permission${permissions.length == 1 ? "" : "s"} denied');
		
		if(!ForegroundWorker.onMainThread()) {
			alert("onPermissionsDenied called from the wrong thread",
				"Potential thread safety issue!");
		}
	}
}
