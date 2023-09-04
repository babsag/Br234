.class final Lio/flutter/plugins/camera/j;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lio/flutter/plugin/common/BinaryMessenger;

.field private final c:Lio/flutter/plugins/camera/h;

.field private final d:Lio/flutter/plugins/camera/h$b;

.field private final e:Lio/flutter/view/TextureRegistry;

.field private final f:Lio/flutter/plugin/common/MethodChannel;

.field private final g:Lio/flutter/plugin/common/EventChannel;

.field private h:Lio/flutter/plugins/camera/Camera;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/camera/h;Lio/flutter/plugins/camera/h$b;Lio/flutter/view/TextureRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "messenger",
            "cameraPermissions",
            "permissionsAdder",
            "textureRegistry"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/camera/j;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/camera/j;->b:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    iput-object p3, p0, Lio/flutter/plugins/camera/j;->c:Lio/flutter/plugins/camera/h;

    .line 5
    iput-object p4, p0, Lio/flutter/plugins/camera/j;->d:Lio/flutter/plugins/camera/h$b;

    .line 6
    iput-object p5, p0, Lio/flutter/plugins/camera/j;->e:Lio/flutter/view/TextureRegistry;

    .line 7
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    const-string p3, "plugins.flutter.io/camera"

    invoke-direct {p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lio/flutter/plugins/camera/j;->f:Lio/flutter/plugin/common/MethodChannel;

    .line 8
    new-instance p3, Lio/flutter/plugin/common/EventChannel;

    const-string p4, "plugins.flutter.io/camera/imageStream"

    invoke-direct {p3, p2, p4}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p3, p0, Lio/flutter/plugins/camera/j;->g:Lio/flutter/plugin/common/EventChannel;

    .line 9
    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exception",
            "result"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CameraAccess"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method private b(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-string v0, "cameraName"

    .line 1
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "resolutionPreset"

    .line 2
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "enableAudio"

    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 4
    iget-object p1, p0, Lio/flutter/plugins/camera/j;->e:Lio/flutter/view/TextureRegistry;

    .line 5
    invoke-interface {p1}, Lio/flutter/view/TextureRegistry;->createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v3

    .line 6
    new-instance v4, Lio/flutter/plugins/camera/i;

    iget-object p1, p0, Lio/flutter/plugins/camera/j;->b:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v3}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v0

    invoke-direct {v4, p1, v0, v1}, Lio/flutter/plugins/camera/i;-><init>(Lio/flutter/plugin/common/BinaryMessenger;J)V

    .line 7
    new-instance p1, Lio/flutter/plugins/camera/Camera;

    iget-object v2, p0, Lio/flutter/plugins/camera/j;->a:Landroid/app/Activity;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lio/flutter/plugins/camera/Camera;-><init>(Landroid/app/Activity;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Lio/flutter/plugins/camera/i;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    .line 8
    invoke-virtual {p1, p2}, Lio/flutter/plugins/camera/Camera;->open(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private synthetic c(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/camera/j;->b(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/camera/j;->a(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-interface {p2, p3, p4, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic d(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/plugins/camera/j;->c(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/j;->f:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
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

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "stopImageStream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "startVideoRecording"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "takePicture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_4
    const-string v1, "startImageStream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "initialize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "pauseVideoRecording"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_7
    const-string v1, "stopVideoRecording"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_8
    const-string v1, "resumeVideoRecording"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_9
    const-string v1, "prepareForVideoRecording"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_a
    const-string v1, "availableCameras"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_1

    .line 3
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    invoke-virtual {p1}, Lio/flutter/plugins/camera/Camera;->startPreview()V

    .line 4
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/camera/j;->a(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    .line 6
    :pswitch_1
    iget-object p1, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    if-eqz p1, :cond_b

    .line 7
    invoke-virtual {p1}, Lio/flutter/plugins/camera/Camera;->dispose()V

    .line 8
    :cond_b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    iget-object v0, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    const-string v1, "filePath"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugins/camera/Camera;->startVideoRecording(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 10
    :pswitch_3
    iget-object v0, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugins/camera/Camera;->takePicture(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 11
    :pswitch_4
    :try_start_1
    iget-object p1, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    iget-object v1, p0, Lio/flutter/plugins/camera/j;->g:Lio/flutter/plugin/common/EventChannel;

    invoke-virtual {p1, v1}, Lio/flutter/plugins/camera/Camera;->startPreviewWithImageStream(Lio/flutter/plugin/common/EventChannel;)V

    .line 12
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/camera/j;->a(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 14
    :pswitch_5
    iget-object v0, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    if-eqz v0, :cond_c

    .line 15
    invoke-virtual {v0}, Lio/flutter/plugins/camera/Camera;->close()V

    .line 16
    :cond_c
    iget-object v0, p0, Lio/flutter/plugins/camera/j;->c:Lio/flutter/plugins/camera/h;

    iget-object v1, p0, Lio/flutter/plugins/camera/j;->a:Landroid/app/Activity;

    iget-object v2, p0, Lio/flutter/plugins/camera/j;->d:Lio/flutter/plugins/camera/h$b;

    const-string v3, "enableAudio"

    .line 17
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Lio/flutter/plugins/camera/f;

    invoke-direct {v4, p0, p1, p2}, Lio/flutter/plugins/camera/f;-><init>(Lio/flutter/plugins/camera/j;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/flutter/plugins/camera/h;->e(Landroid/app/Activity;Lio/flutter/plugins/camera/h$b;ZLio/flutter/plugins/camera/h$c;)V

    goto :goto_1

    .line 19
    :pswitch_6
    iget-object p1, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    invoke-virtual {p1, p2}, Lio/flutter/plugins/camera/Camera;->pauseVideoRecording(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 20
    :pswitch_7
    iget-object p1, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    invoke-virtual {p1, p2}, Lio/flutter/plugins/camera/Camera;->stopVideoRecording(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 21
    :pswitch_8
    iget-object p1, p0, Lio/flutter/plugins/camera/j;->h:Lio/flutter/plugins/camera/Camera;

    invoke-virtual {p1, p2}, Lio/flutter/plugins/camera/Camera;->resumeVideoRecording(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 22
    :pswitch_9
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 23
    :pswitch_a
    :try_start_2
    iget-object p1, p0, Lio/flutter/plugins/camera/j;->a:Landroid/app/Activity;

    invoke-static {p1}, Lio/flutter/plugins/camera/CameraUtils;->getAvailableCameras(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 24
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/camera/j;->a(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x796d551b -> :sswitch_a
        -0x4504d568 -> :sswitch_9
        0x682a543 -> :sswitch_8
        0xb200c58 -> :sswitch_7
        0x2decaf4c -> :sswitch_6
        0x33ebcb90 -> :sswitch_5
        0x38e6e6f9 -> :sswitch_4
        0x3caeea77 -> :sswitch_3
        0x42c3a0b8 -> :sswitch_2
        0x63a5261f -> :sswitch_1
        0x63ab1f59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
