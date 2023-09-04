.class public Lcom/baseflow/location_permissions/LocationPermissionsPlugin;
.super Ljava/lang/Object;
.source "LocationPermissionsPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;,
        Lcom/baseflow/location_permissions/LocationPermissionsPlugin$ServiceStatus;,
        Lcom/baseflow/location_permissions/LocationPermissionsPlugin$PermissionStatus;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "location_permissions"

.field private static final PERMISSION_CODE:I = 0x19

.field private static final PERMISSION_STATUS_DENIED:I = 0x1

.field private static final PERMISSION_STATUS_GRANTED:I = 0x2

.field private static final PERMISSION_STATUS_RESTRICTED:I = 0x3

.field private static final PERMISSION_STATUS_UNKNOWN:I = 0x0

.field private static final SERVICE_STATUS_DISABLED:I = 0x1

.field private static final SERVICE_STATUS_ENABLED:I = 0x2

.field private static final SERVICE_STATUS_NOT_APPLICABLE:I = 0x3

.field private static final SERVICE_STATUS_UNKNOWN:I


# instance fields
.field private mEventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;

.field private final mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

.field private mResult:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method private constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mRegistrar"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 3
    new-instance p1, Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;-><init>(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;Lcom/baseflow/location_permissions/LocationPermissionsPlugin$1;)V

    iput-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mReceiver:Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    const-string p1, "android.location.MODE_CHANGED"

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic access$100(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->handlePermissionsRequest([Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->isLocationServiceEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->emitLocationServiceStatus(Z)V

    return-void
.end method

.method private static checkPermissionStatus(Landroid/content/Context;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->getManifestNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "location_permissions"

    if-nez v0, :cond_0

    const-string p0, "No android specific permissions needed for: $permission"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string p0, "No permissions found in manifest for: $permission"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-nez p0, :cond_2

    return v4

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    const/4 v5, 0x1

    if-lt v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 7
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5

    return v5

    :cond_5
    if-eqz v3, :cond_4

    return v4

    :cond_6
    return v1
.end method

.method private static checkServiceStatus(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->isLocationServiceEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private emitLocationServiceStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mEventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static getManifestNames(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    invoke-static {v1, p0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->hasPermissionInManifest(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 4
    invoke-static {v1, p0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->hasPermissionInManifest(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v1, p0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->hasPermissionInManifest(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private handlePermissionsRequest([Ljava/lang/String;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez v0, :cond_0

    const-string p1, "location_permissions"

    const-string p2, "Flutter result object is null."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->isLocationPermission(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    aget p1, p2, v1

    invoke-direct {p0, p1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->toPermissionStatus(I)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->processResult(I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, v0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->processResult(I)V

    return-void
.end method

.method private static hasPermissionInManifest(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permission",
            "context"
        }
    .end annotation

    const-string v0, "location_permissions"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "Unable to get Package info, will not be able to determine permissions to request."

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Unable to check manifest for permission: "

    .line 8
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v1
.end method

.method private static isLocationPermission(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 4
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static isLocationServiceEnabled(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    .line 2
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-nez p0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    return p0

    :cond_1
    const/16 v2, 0x13

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v1

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_providers_allowed"

    .line 7
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method private static openAppSettings(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private processResult(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "com.baseflow.flutter/location_permissions"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lio/flutter/plugin/common/EventChannel;

    .line 4
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    const-string v3, "com.baseflow.flutter/location_permissions_events"

    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;

    invoke-direct {v2, p0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 6
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 7
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 8
    new-instance v0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin$1;

    invoke-direct {v0, v2}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin$1;-><init>(Lcom/baseflow/location_permissions/LocationPermissionsPlugin;)V

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method

.method private requestPermissions()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "location_permissions"

    const-string v2, "Unable to detect current Activity."

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, v1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->processResult(I)V

    return-void

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->checkPermissionStatus(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 5
    invoke-static {v0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->getManifestNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 8
    invoke-interface {v2}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x19

    .line 9
    invoke-static {v2, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->processResult(I)V

    return-void

    .line 11
    :cond_3
    invoke-direct {p0, v3}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->processResult(I)V

    :goto_1
    return-void
.end method

.method private static shouldShowRequestPermissionRationale(Landroid/app/Activity;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "location_permissions"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Unable to detect current Activity."

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->getManifestNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "No android specific permissions needed for: $permission"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "No permissions found in manifest for: $permission no need to show request rationale"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method private toPermissionStatus(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grantResult"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mEventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mReceiver:Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mEventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    :cond_0
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arguments",
            "events"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->isLocationServiceEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mReceiver:Lcom/baseflow/location_permissions/LocationPermissionsPlugin$LocationServiceBroadcastReceiver;

    iget-object v1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4
    iput-object p2, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mEventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Location service availability stream requires at least Android K."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "location_permissions"

    const-string v0, "Unable to detect current Activity or App Context."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ERROR_MISSING_CONTEXT"

    const-string v0, "Unable to detect current Activity or Active Context."

    .line 3
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "requestPermission"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "openAppSettings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "checkPermissionStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "shouldShowRequestPermissionRationale"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v3, "checkServiceStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 5
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_6

    const-string p1, "ERROR_ALREADY_REQUESTING_PERMISSIONS"

    const-string v0, "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time)."

    .line 7
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_6
    iput-object p2, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 9
    invoke-direct {p0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->requestPermissions()V

    goto :goto_1

    .line 10
    :pswitch_1
    invoke-static {v0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->openAppSettings(Landroid/content/Context;)Z

    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :pswitch_2
    invoke-static {v0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->checkPermissionStatus(Landroid/content/Context;)I

    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :pswitch_3
    iget-object p1, p0, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->shouldShowRequestPermissionRationale(Landroid/app/Activity;)Z

    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :pswitch_4
    invoke-static {v0}, Lcom/baseflow/location_permissions/LocationPermissionsPlugin;->checkServiceStatus(Landroid/content/Context;)I

    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c086121 -> :sswitch_4
        -0x3ca2ffb7 -> :sswitch_3
        -0x22583c37 -> :sswitch_2
        0x14b278ba -> :sswitch_1
        0x2c7fedbe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
