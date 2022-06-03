# Android 6 Permissions
A utility to check for (and request) permissions in Android 6.0 and later.

Sample usage:

```haxe
import com.player03.android6.Permissions;

//...

var permission:String = Permissions.READ_EXTERNAL_STORAGE;

//If we already have the permission, go ahead and use it.
if(Permissions.hasPermission(permission)) {
    loadFromFile(file);
} else {
    //Before requesting the permission, we may want to explain why we need it.
    if(Permissions.shouldShowRequestPermissionRationale(permission)) {
        showRationale().then(Permissions.requestPermission.bind(permission));
    } else {
        //If that isn't necessary, we can request it immediately.
        Permissions.requestPermission(permission);
    }
}

//Once the permission is granted, immediately start loading.
Permissions.onPermissionsGranted.add(function(permissions:Array<String>) {
    if(permissions.indexOf(Permissions.READ_EXTERNAL_STORAGE) >= 0) {
        loadFromFile(file);
    }
});
```
