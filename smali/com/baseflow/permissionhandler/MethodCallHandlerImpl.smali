.class final Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private activity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private activityRegistry:Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final appSettingsManager:Lcom/baseflow/permissionhandler/AppSettingsManager;

.field private final applicationContext:Landroid/content/Context;

.field private final permissionManager:Lcom/baseflow/permissionhandler/PermissionManager;

.field private permissionRegistry:Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final serviceManager:Lcom/baseflow/permissionhandler/ServiceManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baseflow/permissionhandler/AppSettingsManager;Lcom/baseflow/permissionhandler/PermissionManager;Lcom/baseflow/permissionhandler/ServiceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "appSettingsManager",
            "permissionManager",
            "serviceManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->appSettingsManager:Lcom/baseflow/permissionhandler/AppSettingsManager;

    .line 4
    iput-object p3, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/permissionhandler/PermissionManager;

    .line 5
    iput-object p4, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->serviceManager:Lcom/baseflow/permissionhandler/ServiceManager;

    return-void
.end method

.method static synthetic lambda$onMethodCall$0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "requestPermissions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "openAppSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "checkPermissionStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "shouldShowRequestPermissionRationale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "checkServiceStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_1

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/permissionhandler/PermissionManager;

    iget-object v2, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->activityRegistry:Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;

    iget-object v4, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->permissionRegistry:Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/baseflow/permissionhandler/a;

    invoke-direct {v5, p2}, Lcom/baseflow/permissionhandler/a;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v6, Lcom/baseflow/permissionhandler/d;

    invoke-direct {v6, p2}, Lcom/baseflow/permissionhandler/d;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/baseflow/permissionhandler/PermissionManager;->requestPermissions(Ljava/util/List;Landroid/app/Activity;Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;Lcom/baseflow/permissionhandler/PermissionManager$ErrorCallback;)V

    goto :goto_1

    .line 7
    :pswitch_1
    iget-object p1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->appSettingsManager:Lcom/baseflow/permissionhandler/AppSettingsManager;

    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/baseflow/permissionhandler/AppSettingsManager;->openAppSettings(Landroid/content/Context;)Z

    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :pswitch_2
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 10
    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/permissionhandler/PermissionManager;

    iget-object v1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Lcom/baseflow/permissionhandler/PermissionManager;->checkPermissionStatus(ILandroid/content/Context;Landroid/app/Activity;)I

    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :pswitch_3
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 14
    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/permissionhandler/PermissionManager;

    iget-object v1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->shouldShowRequestPermissionRationale(ILandroid/app/Activity;)Z

    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :pswitch_4
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 18
    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->serviceManager:Lcom/baseflow/permissionhandler/ServiceManager;

    iget-object v1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/baseflow/permissionhandler/ServiceManager;->checkServiceStatus(ILandroid/content/Context;)I

    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5c086121 -> :sswitch_4
        -0x3ca2ffb7 -> :sswitch_3
        -0x22583c37 -> :sswitch_2
        0x14b278ba -> :sswitch_1
        0x637dca75 -> :sswitch_0
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

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setActivityRegistry(Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;)V
    .locals 0
    .param p1    # Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityRegistry"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->activityRegistry:Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;

    return-void
.end method

.method public setPermissionRegistry(Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;)V
    .locals 0
    .param p1    # Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionRegistry"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->permissionRegistry:Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;

    return-void
.end method
