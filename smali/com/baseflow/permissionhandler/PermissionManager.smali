.class final Lcom/baseflow/permissionhandler/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;,
        Lcom/baseflow/permissionhandler/PermissionManager$ActivityResultListener;,
        Lcom/baseflow/permissionhandler/PermissionManager$ErrorCallback;,
        Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;,
        Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;,
        Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;
    }
.end annotation


# instance fields
.field private ongoing:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    return-void
.end method

.method private checkNotificationPermissionStatus(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$requestPermissions$0(Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    .line 2
    invoke-interface {p1, p2}, Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;->onResult(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baseflow/permissionhandler/PermissionManager;->lambda$requestPermissions$0(Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;Ljava/util/Map;)V

    return-void
.end method

.method checkPermissionStatus(ILandroid/content/Context;Landroid/app/Activity;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "permission",
            "context",
            "activity"
        }
    .end annotation

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/PermissionManager;->checkNotificationPermissionStatus(Landroid/content/Context;)I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-static {p2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "permissions_handler"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No android specific permissions needed for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_2

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permissions found in manifest for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 6
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x0

    const/16 v5, 0x17

    if-lt v1, v5, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v1, :cond_4

    const/16 v7, 0xf

    if-ne p1, v7, :cond_7

    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "power"

    .line 9
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 10
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v5, :cond_6

    if-eqz p2, :cond_5

    .line 11
    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v3

    :cond_6
    const/4 p1, 0x2

    return p1

    .line 12
    :cond_7
    invoke-static {p2, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9

    .line 13
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_8

    .line 14
    invoke-static {p3, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->isNeverAskAgainSelected(Landroid/app/Activity;I)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    return p1

    :cond_8
    return v3

    :cond_9
    if-eqz v6, :cond_4

    return v4

    :cond_a
    return v2
.end method

.method requestPermissions(Ljava/util/List;Landroid/app/Activity;Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;Lcom/baseflow/permissionhandler/PermissionManager$ErrorCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "permissions",
            "activity",
            "activityRegistry",
            "permissionRegistry",
            "resultCallback",
            "errorCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;",
            "Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;",
            "Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;",
            "Lcom/baseflow/permissionhandler/PermissionManager$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    if-eqz v0, :cond_0

    const-string v0, "ERROR_ALREADY_REQUESTING_PERMISSIONS"

    const-string v1, "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time)."

    .line 2
    invoke-interface {p6, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager$ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "permissions_handler"

    const-string p2, "Unable to detect current Activity."

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ERROR_ANDROID_ACTIVITY_MISSING"

    const-string p2, "Unable to detect current Android Activity."

    .line 4
    invoke-interface {p6, p1, p2}, Lcom/baseflow/permissionhandler/PermissionManager$ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p2}, Lcom/baseflow/permissionhandler/PermissionManager;->checkPermissionStatus(ILandroid/content/Context;Landroid/app/Activity;)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 9
    invoke-interface {p6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 12
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_5

    .line 14
    new-instance v1, Lcom/baseflow/permissionhandler/PermissionManager$ActivityResultListener;

    invoke-direct {v1, p5}, Lcom/baseflow/permissionhandler/PermissionManager$ActivityResultListener;-><init>(Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;)V

    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;->addListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 15
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x568da1

    .line 19
    invoke-virtual {p2, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 21
    :cond_6
    :goto_1
    invoke-interface {p6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const/4 p1, 0x0

    new-array p3, p1, [Ljava/lang/String;

    .line 23
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 25
    new-instance p1, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;

    new-instance v0, Lcom/baseflow/permissionhandler/e;

    invoke-direct {v0, p0, p5}, Lcom/baseflow/permissionhandler/e;-><init>(Lcom/baseflow/permissionhandler/PermissionManager;Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;)V

    invoke-direct {p1, p2, p6, v0}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;-><init>(Landroid/app/Activity;Ljava/util/Map;Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;)V

    invoke-interface {p4, p1}, Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;->addListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 26
    iput-boolean v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    const/16 p1, 0x18

    .line 27
    invoke-static {p2, p3, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 28
    :cond_8
    iput-boolean p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    .line 29
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 30
    invoke-interface {p5, p6}, Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;->onResult(Ljava/util/Map;)V

    :cond_9
    :goto_2
    return-void
.end method

.method shouldShowRequestPermissionRationale(ILandroid/app/Activity;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permission",
            "activity"
        }
    .end annotation

    const-string v0, "permissions_handler"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p1, "Unable to detect current Activity."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2
    :cond_0
    invoke-static {p2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No android specific permissions needed for: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No permissions found in manifest for: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " no need to show request rationale"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
