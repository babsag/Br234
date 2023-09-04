.class public Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FlutterFirebaseMessagingService.java"


# static fields
.field public static final ACTION_REMOTE_MESSAGE:Ljava/lang/String; = "io.flutter.plugins.firebasemessaging.NOTIFICATION"

.field public static final ACTION_TOKEN:Ljava/lang/String; = "io.flutter.plugins.firebasemessaging.TOKEN"

.field public static final EXTRA_REMOTE_MESSAGE:Ljava/lang/String; = "notification"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Lio/flutter/view/FlutterNativeView;

.field private static i:Lio/flutter/plugin/common/MethodChannel;

.field private static j:Ljava/lang/Long;

.field private static k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Lio/flutter/plugin/common/PluginRegistry$PluginRegistrantCallback;

.field private static m:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method public static getBackgroundMessageHandle(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "io.flutter.android_fcm_plugin"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "background_message_callback"

    const-wide/16 v1, 0x0

    .line 2
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->m(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private static m(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "remoteMessage",
            "latch"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->i:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lio/flutter/plugins/firebasemessaging/LatchResult;

    invoke-direct {v0, p2}, Lio/flutter/plugins/firebasemessaging/LatchResult;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0}, Lio/flutter/plugins/firebasemessaging/LatchResult;->getResult()Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object v0

    .line 3
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    sget-object v2, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->j:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 6
    invoke-static {p0}, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->getBackgroundMessageHandle(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->j:Ljava/lang/Long;

    .line 7
    :cond_1
    sget-object p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->j:Ljava/lang/Long;

    const-string v2, "handle"

    invoke-interface {p2, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p0

    const-string v2, "data"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p0

    const-string p1, "notification"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p0, "message"

    .line 12
    invoke-interface {p2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->i:Lio/flutter/plugin/common/MethodChannel;

    const-string p1, "handleBackgroundMessage"

    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "setBackgroundChannel was not called before messages came in, exiting."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static n(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "keyguard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v2, "activity"

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 5
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 7
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_1

    .line 8
    iget p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static onInitialized()V
    .locals 5

    .line 1
    sget-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->k:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->m:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/messaging/RemoteMessage;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->m(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setBackgroundChannel(Lio/flutter/plugin/common/MethodChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 1
    sput-object p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->i:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public static setBackgroundMessageHandle(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "handle"
        }
    .end annotation

    .line 1
    sput-object p1, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->j:Ljava/lang/Long;

    const-string v0, "io.flutter.android_fcm_plugin"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p1, "background_message_callback"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setBackgroundSetupHandle(Landroid/content/Context;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "setupBackgroundHandle"
        }
    .end annotation

    const-string v0, "io.flutter.android_fcm_plugin"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "background_setup_callback"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPluginRegistrant(Lio/flutter/plugin/common/PluginRegistry$PluginRegistrantCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    sput-object p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->l:Lio/flutter/plugin/common/PluginRegistry$PluginRegistrantCallback;

    return-void
.end method

.method public static startBackgroundIsolate(Landroid/content/Context;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callbackHandle"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/flutter/view/FlutterMain;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/flutter/view/FlutterMain;->findAppBundlePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, p2}, Lio/flutter/view/FlutterCallbackInformation;->lookupCallbackInformation(J)Lio/flutter/view/FlutterCallbackInformation;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "FlutterFcmService"

    const-string p1, "Fatal: failed to find callback"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    new-instance p2, Lio/flutter/view/FlutterNativeView;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lio/flutter/view/FlutterNativeView;-><init>(Landroid/content/Context;Z)V

    sput-object p2, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->h:Lio/flutter/view/FlutterNativeView;

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->l:Lio/flutter/plugin/common/PluginRegistry$PluginRegistrantCallback;

    if-eqz p0, :cond_1

    .line 7
    new-instance p0, Lio/flutter/view/FlutterRunArguments;

    invoke-direct {p0}, Lio/flutter/view/FlutterRunArguments;-><init>()V

    .line 8
    iput-object v0, p0, Lio/flutter/view/FlutterRunArguments;->bundlePath:Ljava/lang/String;

    .line 9
    iget-object p2, p1, Lio/flutter/view/FlutterCallbackInformation;->callbackName:Ljava/lang/String;

    iput-object p2, p0, Lio/flutter/view/FlutterRunArguments;->entrypoint:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lio/flutter/view/FlutterCallbackInformation;->callbackLibraryPath:Ljava/lang/String;

    iput-object p1, p0, Lio/flutter/view/FlutterRunArguments;->libraryPath:Ljava/lang/String;

    .line 11
    sget-object p1, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->h:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {p1, p0}, Lio/flutter/view/FlutterNativeView;->runFromBundle(Lio/flutter/view/FlutterRunArguments;)V

    .line 12
    sget-object p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->l:Lio/flutter/plugin/common/PluginRegistry$PluginRegistrantCallback;

    sget-object p1, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->h:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {p1}, Lio/flutter/view/FlutterNativeView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/PluginRegistry$PluginRegistrantCallback;->registerWith(Lio/flutter/plugin/common/PluginRegistry;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "PluginRegistrantCallback is not set."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->m:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lio/flutter/view/FlutterMain;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 4
    sget-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->m:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "io.flutter.android_fcm_plugin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "background_setup_callback"

    .line 6
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 7
    sget-object v2, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->m:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->startBackgroundIsolate(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "remoteMessage"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.flutter.plugins.firebasemessaging.NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notification"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService$a;

    invoke-direct {v2, p0, p1, v0}, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService$a;-><init>(Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;Lcom/google/firebase/messaging/RemoteMessage;Ljava/util/concurrent/CountDownLatch;)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FlutterFcmService"

    const-string v1, "Exception waiting to execute Dart callback"

    .line 11
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.flutter.plugins.firebasemessaging.TOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
