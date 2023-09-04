.class public Lio/flutter/plugins/camera/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/camera/Camera$ResolutionPreset;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

.field private final b:Landroid/hardware/camera2/CameraManager;

.field private final c:Landroid/view/OrientationEventListener;

.field private final d:Z

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Landroid/util/Size;

.field private final h:Landroid/util/Size;

.field private final i:Z

.field private j:Landroid/hardware/camera2/CameraDevice;

.field private k:Landroid/hardware/camera2/CameraCaptureSession;

.field private l:Landroid/media/ImageReader;

.field private m:Landroid/media/ImageReader;

.field private n:Lio/flutter/plugins/camera/i;

.field private o:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private p:Landroid/media/MediaRecorder;

.field private q:Z

.field private r:Landroid/media/CamcorderProfile;

.field private s:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Lio/flutter/plugins/camera/i;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "activity",
            "flutterTexture",
            "dartMessenger",
            "cameraName",
            "resolutionPreset",
            "enableAudio"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/flutter/plugins/camera/Camera;->s:I

    if-eqz p1, :cond_1

    .line 3
    iput-object p4, p0, Lio/flutter/plugins/camera/Camera;->f:Ljava/lang/String;

    .line 4
    iput-boolean p6, p0, Lio/flutter/plugins/camera/Camera;->i:Z

    .line 5
    iput-object p2, p0, Lio/flutter/plugins/camera/Camera;->a:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 6
    iput-object p3, p0, Lio/flutter/plugins/camera/Camera;->n:Lio/flutter/plugins/camera/i;

    const-string p2, "camera"

    .line 7
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lio/flutter/plugins/camera/Camera;->b:Landroid/hardware/camera2/CameraManager;

    .line 8
    new-instance p3, Lio/flutter/plugins/camera/Camera$a;

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lio/flutter/plugins/camera/Camera$a;-><init>(Lio/flutter/plugins/camera/Camera;Landroid/content/Context;)V

    iput-object p3, p0, Lio/flutter/plugins/camera/Camera;->c:Landroid/view/OrientationEventListener;

    .line 10
    invoke-virtual {p3}, Landroid/view/OrientationEventListener;->enable()V

    .line 11
    invoke-virtual {p2, p4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 12
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 13
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 14
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lio/flutter/plugins/camera/Camera;->e:I

    .line 15
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 16
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lio/flutter/plugins/camera/Camera;->d:Z

    .line 17
    invoke-static {p5}, Lio/flutter/plugins/camera/Camera$ResolutionPreset;->valueOf(Ljava/lang/String;)Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    move-result-object p1

    .line 18
    invoke-static {p4, p1}, Lio/flutter/plugins/camera/CameraUtils;->b(Ljava/lang/String;Lio/flutter/plugins/camera/Camera$ResolutionPreset;)Landroid/media/CamcorderProfile;

    move-result-object p2

    iput-object p2, p0, Lio/flutter/plugins/camera/Camera;->r:Landroid/media/CamcorderProfile;

    .line 19
    new-instance p2, Landroid/util/Size;

    iget-object p3, p0, Lio/flutter/plugins/camera/Camera;->r:Landroid/media/CamcorderProfile;

    iget p5, p3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p3, p3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p2, p5, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p2, p0, Lio/flutter/plugins/camera/Camera;->g:Landroid/util/Size;

    .line 20
    invoke-static {p4, p1}, Lio/flutter/plugins/camera/CameraUtils;->a(Ljava/lang/String;Lio/flutter/plugins/camera/Camera$ResolutionPreset;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/camera/Camera;->h:Landroid/util/Size;

    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity available!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lio/flutter/plugins/camera/Camera;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/flutter/plugins/camera/Camera;->s:I

    return p1
.end method

.method static synthetic b(Lio/flutter/plugins/camera/Camera;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/camera/Camera;->j:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic c(Lio/flutter/plugins/camera/Camera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/camera/Camera;->j:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic d(Lio/flutter/plugins/camera/Camera;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/camera/Camera;->a:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    return-object p0
.end method

.method static synthetic e(Lio/flutter/plugins/camera/Camera;)Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/camera/Camera;->h:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic f(Lio/flutter/plugins/camera/Camera;)Lio/flutter/plugins/camera/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/camera/Camera;->n:Lio/flutter/plugins/camera/i;

    return-object p0
.end method

.method static synthetic g(Lio/flutter/plugins/camera/Camera;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/camera/Camera;->k:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic h(Lio/flutter/plugins/camera/Camera;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/camera/Camera;->k:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic i(Lio/flutter/plugins/camera/Camera;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/camera/Camera;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic j(Lio/flutter/plugins/camera/Camera;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/camera/Camera;->x(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    return-void
.end method

.method static synthetic k(Lio/flutter/plugins/camera/Camera;)Landroid/media/ImageReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/camera/Camera;->m:Landroid/media/ImageReader;

    return-object p0
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->k:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/flutter/plugins/camera/Camera;->k:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    return-void
.end method

.method private varargs m(ILjava/lang/Runnable;[Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "templateType",
            "onSuccessCallback",
            "surfaces"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/camera/Camera;->l()V

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->j:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/camera/Camera;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->a:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/flutter/plugins/camera/Camera;->h:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lio/flutter/plugins/camera/Camera;->h:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 5
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 7
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 9
    iget-object v2, p0, Lio/flutter/plugins/camera/Camera;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lio/flutter/plugins/camera/Camera$d;

    invoke-direct {p1, p0, p2}, Lio/flutter/plugins/camera/Camera$d;-><init>(Lio/flutter/plugins/camera/Camera;Ljava/lang/Runnable;)V

    .line 11
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_2

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 15
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_1
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/camera/Camera;->p(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    goto :goto_2

    .line 17
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/camera/Camera;->o(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    :goto_2
    return-void
.end method

.method private varargs n(I[Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "templateType",
            "surfaces"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lio/flutter/plugins/camera/Camera;->m(ILjava/lang/Runnable;[Landroid/view/Surface;)V

    return-void
.end method

.method private o(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surfaces",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->j:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private p(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputConfigs",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->j:Landroid/hardware/camera2/CameraDevice;

    new-instance v1, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2, p2}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    return-void
.end method

.method private q()I
    .locals 2

    .line 1
    iget v0, p0, Lio/flutter/plugins/camera/Camera;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lio/flutter/plugins/camera/Camera;->d:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    .line 3
    :cond_1
    :goto_0
    iget v1, p0, Lio/flutter/plugins/camera/Camera;->e:I

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method static synthetic r(Lio/flutter/plugin/common/EventChannel$EventSink;Landroid/media/ImageReader;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 5
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v8, v7, [B

    .line 6
    invoke-virtual {v6, v8, v3, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 7
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "bytesPerRow"

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "bytesPerPixel"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "bytes"

    .line 10
    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "format"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "planes"

    .line 16
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {p0, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method private synthetic s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method private synthetic u(Ljava/io/File;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/media/ImageReader;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p3}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {p3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1, p1}, Lio/flutter/plugins/camera/Camera;->y(Ljava/nio/ByteBuffer;Ljava/io/File;)V

    .line 4
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {p3}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_0

    .line 6
    :try_start_3
    invoke-virtual {p3}, Landroid/media/Image;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p1, "IOError"

    const-string p3, "Failed saving image"

    .line 7
    invoke-interface {p2, p1, p3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFilePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 3
    :cond_0
    new-instance v0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;

    iget-object v1, p0, Lio/flutter/plugins/camera/Camera;->r:Landroid/media/CamcorderProfile;

    invoke-direct {v0, v1, p1}, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;-><init>(Landroid/media/CamcorderProfile;Ljava/lang/String;)V

    iget-boolean p1, p0, Lio/flutter/plugins/camera/Camera;->i:Z

    .line 4
    invoke-virtual {v0, p1}, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->setEnableAudio(Z)Lio/flutter/plugins/camera/media/MediaRecorderBuilder;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/camera/Camera;->q()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->setMediaOrientation(I)Lio/flutter/plugins/camera/media/MediaRecorderBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->build()Landroid/media/MediaRecorder;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    return-void
.end method

.method private x(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageStreamSink"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->m:Landroid/media/ImageReader;

    new-instance v1, Lio/flutter/plugins/camera/c;

    invoke-direct {v1, p1}, Lio/flutter/plugins/camera/c;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private y(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/camera/Camera;->l()V

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->j:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 4
    iput-object v1, p0, Lio/flutter/plugins/camera/Camera;->j:Landroid/hardware/camera2/CameraDevice;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->l:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 7
    iput-object v1, p0, Lio/flutter/plugins/camera/Camera;->l:Landroid/media/ImageReader;

    .line 8
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->m:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 10
    iput-object v1, p0, Lio/flutter/plugins/camera/Camera;->m:Landroid/media/ImageReader;

    .line 11
    :cond_2
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 13
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 14
    iput-object v1, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/camera/Camera;->close()V

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->a:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->release()V

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->c:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public open(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->g:Landroid/util/Size;

    .line 2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugins/camera/Camera;->g:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x2

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/camera/Camera;->l:Landroid/media/ImageReader;

    .line 4
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->h:Landroid/util/Size;

    .line 5
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugins/camera/Camera;->h:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x23

    .line 6
    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/camera/Camera;->m:Landroid/media/ImageReader;

    .line 7
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->b:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lio/flutter/plugins/camera/Camera;->f:Ljava/lang/String;

    new-instance v2, Lio/flutter/plugins/camera/Camera$b;

    invoke-direct {v2, p0, p1}, Lio/flutter/plugins/camera/Camera$b;-><init>(Lio/flutter/plugins/camera/Camera;Lio/flutter/plugin/common/MethodChannel$Result;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public pauseVideoRecording(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "videoRecordingFailed"

    .line 1
    iget-boolean v1, p0, Lio/flutter/plugins/camera/Camera;->q:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1

    .line 4
    iget-object v1, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    const-string v1, "pauseVideoRecording requires Android API +24."

    .line 6
    invoke-interface {p1, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public resumeVideoRecording(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "videoRecordingFailed"

    .line 1
    iget-boolean v1, p0, Lio/flutter/plugins/camera/Camera;->q:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1

    .line 4
    iget-object v1, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    const-string v1, "resumeVideoRecording requires Android API +24."

    .line 6
    invoke-interface {p1, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startPreview()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->l:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/Surface;

    const/4 v2, 0x0

    .line 2
    iget-object v3, p0, Lio/flutter/plugins/camera/Camera;->l:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lio/flutter/plugins/camera/Camera;->n(I[Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startPreviewWithImageStream(Lio/flutter/plugin/common/EventChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageStreamChannel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/Surface;

    .line 1
    iget-object v1, p0, Lio/flutter/plugins/camera/Camera;->m:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lio/flutter/plugins/camera/Camera;->n(I[Landroid/view/Surface;)V

    .line 2
    new-instance v0, Lio/flutter/plugins/camera/Camera$e;

    invoke-direct {v0, p0}, Lio/flutter/plugins/camera/Camera$e;-><init>(Lio/flutter/plugins/camera/Camera;)V

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    return-void
.end method

.method public startVideoRecording(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "result"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File at path \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already exists."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fileExists"

    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lio/flutter/plugins/camera/Camera;->w(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/flutter/plugins/camera/Camera;->q:Z

    const/4 v0, 0x3

    .line 5
    new-instance v2, Lio/flutter/plugins/camera/a;

    invoke-direct {v2, p0}, Lio/flutter/plugins/camera/a;-><init>(Lio/flutter/plugins/camera/Camera;)V

    new-array p1, p1, [Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    .line 6
    invoke-virtual {v4}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    aput-object v4, p1, v3

    .line 7
    invoke-direct {p0, v0, v2, p1}, Lio/flutter/plugins/camera/Camera;->m(ILjava/lang/Runnable;[Landroid/view/Surface;)V

    .line 8
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "videoRecordingFailed"

    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public stopVideoRecording(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
    .param p1    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/camera/Camera;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lio/flutter/plugins/camera/Camera;->q:Z

    .line 4
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->p:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 6
    invoke-virtual {p0}, Lio/flutter/plugins/camera/Camera;->startPreview()V

    .line 7
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "videoRecordingFailed"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public synthetic t()V
    .locals 0

    invoke-direct {p0}, Lio/flutter/plugins/camera/Camera;->s()V

    return-void
.end method

.method public takePicture(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
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
            "filePath",
            "result"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File at path \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already exists. Cannot overwrite."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fileExists"

    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera;->l:Landroid/media/ImageReader;

    new-instance v1, Lio/flutter/plugins/camera/b;

    invoke-direct {v1, p0, v0, p2}, Lio/flutter/plugins/camera/b;-><init>(Lio/flutter/plugins/camera/Camera;Ljava/io/File;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p1, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera;->j:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->l:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lio/flutter/plugins/camera/Camera;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera;->k:Landroid/hardware/camera2/CameraCaptureSession;

    .line 10
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    new-instance v1, Lio/flutter/plugins/camera/Camera$c;

    invoke-direct {v1, p0, p2}, Lio/flutter/plugins/camera/Camera$c;-><init>(Lio/flutter/plugins/camera/Camera;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cameraAccess"

    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic v(Ljava/io/File;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/camera/Camera;->u(Ljava/io/File;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/media/ImageReader;)V

    return-void
.end method
