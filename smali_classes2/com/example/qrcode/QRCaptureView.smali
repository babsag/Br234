.class public final Lcom/example/qrcode/QRCaptureView;
.super Ljava/lang/Object;
.source "QRCaptureView.kt"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/qrcode/QRCaptureView$Companion;,
        Lcom/example/qrcode/QRCaptureView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0002./B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0008\u0010%\u001a\u00020\"H\u0016J\u0008\u0010&\u001a\u00020\'H\u0016J\u0008\u0010(\u001a\u00020\u001cH\u0002J\u0018\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020+2\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010,\u001a\u00020\"H\u0002J\u0008\u0010-\u001a\u00020\"H\u0002R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u00060"
    }
    d2 = {
        "Lcom/example/qrcode/QRCaptureView;",
        "Lio/flutter/plugin/platform/PlatformView;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "registrar",
        "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
        "id",
        "",
        "(Lio/flutter/plugin/common/PluginRegistry$Registrar;I)V",
        "activity",
        "Landroid/app/Activity;",
        "kotlin.jvm.PlatformType",
        "barcodeView",
        "Lcom/journeyapps/barcodescanner/BarcodeView;",
        "getBarcodeView",
        "()Lcom/journeyapps/barcodescanner/BarcodeView;",
        "setBarcodeView",
        "(Lcom/journeyapps/barcodescanner/BarcodeView;)V",
        "cameraPermissionContinuation",
        "Ljava/lang/Runnable;",
        "getCameraPermissionContinuation",
        "()Ljava/lang/Runnable;",
        "setCameraPermissionContinuation",
        "(Ljava/lang/Runnable;)V",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "getChannel",
        "()Lio/flutter/plugin/common/MethodChannel;",
        "requestingPermission",
        "",
        "getRequestingPermission",
        "()Z",
        "setRequestingPermission",
        "(Z)V",
        "checkAndRequestPermission",
        "",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "dispose",
        "getView",
        "Landroid/view/View;",
        "hasCameraPermission",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "pause",
        "resume",
        "CameraRequestPermissionsListener",
        "Companion",
        "qrcode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CAMERA_REQUEST_ID:I = 0x1e9aed64

.field public static final Companion:Lcom/example/qrcode/QRCaptureView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/journeyapps/barcodescanner/BarcodeView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Landroid/app/Activity;

.field private d:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Z

.field private final f:Lio/flutter/plugin/common/MethodChannel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/qrcode/QRCaptureView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/qrcode/QRCaptureView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/qrcode/QRCaptureView;->Companion:Lcom/example/qrcode/QRCaptureView$Companion;

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;I)V
    .locals 3
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$Registrar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "registrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/qrcode/QRCaptureView;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 2
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/example/qrcode/QRCaptureView;->c:Landroid/app/Activity;

    .line 3
    new-instance v0, Lcom/example/qrcode/QRCaptureView$a;

    invoke-direct {v0, p0}, Lcom/example/qrcode/QRCaptureView$a;-><init>(Lcom/example/qrcode/QRCaptureView;)V

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 4
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "plugins/qr_capture/method_"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/qrcode/QRCaptureView;->f:Lio/flutter/plugin/common/MethodChannel;

    .line 5
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    const/4 p2, 0x0

    .line 6
    invoke-direct {p0, p2}, Lcom/example/qrcode/QRCaptureView;->a(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 7
    new-instance p2, Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/journeyapps/barcodescanner/BarcodeView;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object p2, p0, Lcom/example/qrcode/QRCaptureView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 9
    new-instance v0, Lcom/example/qrcode/QRCaptureView$1;

    invoke-direct {v0, p0}, Lcom/example/qrcode/QRCaptureView$1;-><init>(Lcom/example/qrcode/QRCaptureView;)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeContinuous(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    .line 11
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/CameraPreview;->resume()V

    .line 12
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/example/qrcode/QRCaptureView$2;

    invoke-direct {p2, p0}, Lcom/example/qrcode/QRCaptureView$2;-><init>(Lcom/example/qrcode/QRCaptureView;)V

    .line 14
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private final a(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "cameraPermission"

    const-string v2, "Camera permission request ongoing"

    .line 2
    invoke-interface {p1, v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/example/qrcode/a;

    invoke-direct {v0, p0, p1}, Lcom/example/qrcode/a;-><init>(Lcom/example/qrcode/QRCaptureView;Lio/flutter/plugin/common/MethodChannel$Result;)V

    iput-object v0, p0, Lcom/example/qrcode/QRCaptureView;->d:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/example/qrcode/QRCaptureView;->e:Z

    .line 5
    invoke-direct {p0}, Lcom/example/qrcode/QRCaptureView;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/example/qrcode/QRCaptureView;->d:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 7
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_4

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/example/qrcode/QRCaptureView;->e:Z

    .line 9
    iget-object p1, p0, Lcom/example/qrcode/QRCaptureView;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 10
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x1e9aed64

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static final synthetic access$getRegistrar$p(Lcom/example/qrcode/QRCaptureView;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/qrcode/QRCaptureView;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-object p0
.end method

.method private static final b(Lcom/example/qrcode/QRCaptureView;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/example/qrcode/QRCaptureView;->d:Ljava/lang/Runnable;

    .line 2
    invoke-direct {p0}, Lcom/example/qrcode/QRCaptureView;->c()Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cameraPermission"

    const-string v1, "MediaRecorderCamera permission not granted"

    .line 3
    invoke-interface {p1, p0, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final c()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView;->c:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic d(Lcom/example/qrcode/QRCaptureView;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/qrcode/QRCaptureView;->b(Lcom/example/qrcode/QRCaptureView;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->pause()V

    :goto_0
    return-void
.end method

.method private final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->resume()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->pause()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/example/qrcode/QRCaptureView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    return-void
.end method

.method public final getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    return-object v0
.end method

.method public final getCameraPermissionContinuation()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getChannel()Lio/flutter/plugin/common/MethodChannel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView;->f:Lio/flutter/plugin/common/MethodChannel;

    return-object v0
.end method

.method public final getRequestingPermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/example/qrcode/QRCaptureView;->e:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic onFlutterViewAttached(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/flutter/plugin/platform/d;->a(Lio/flutter/plugin/platform/PlatformView;Landroid/view/View;)V

    return-void
.end method

.method public synthetic onFlutterViewDetached()V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugin/platform/d;->b(Lio/flutter/plugin/platform/PlatformView;)V

    return-void
.end method

.method public synthetic onInputConnectionLocked()V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugin/platform/d;->c(Lio/flutter/plugin/platform/PlatformView;)V

    return-void
.end method

.method public synthetic onInputConnectionUnlocked()V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugin/platform/d;->d(Lio/flutter/plugin/platform/PlatformView;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "checkAndRequestPermission"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/example/qrcode/QRCaptureView;->a(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 4
    :cond_0
    iget-object p2, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v0, "resume"

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/example/qrcode/QRCaptureView;->f()V

    .line 7
    :cond_1
    iget-object p2, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v0, "pause"

    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/example/qrcode/QRCaptureView;->e()V

    .line 10
    :cond_2
    iget-object p2, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v0, "setTorchMode"

    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 13
    iget-object p2, p0, Lcom/example/qrcode/QRCaptureView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->setTorch(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setBarcodeView(Lcom/journeyapps/barcodescanner/BarcodeView;)V
    .locals 0
    .param p1    # Lcom/journeyapps/barcodescanner/BarcodeView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/example/qrcode/QRCaptureView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    return-void
.end method

.method public final setCameraPermissionContinuation(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/example/qrcode/QRCaptureView;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public final setRequestingPermission(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/example/qrcode/QRCaptureView;->e:Z

    return-void
.end method
