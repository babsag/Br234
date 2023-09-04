.class public final Lcom/manateeworks/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field public static DEBUG:Z = false

.field public static REFOCUSING_DELAY:I = 0x9c4

.field public static TAG:Ljava/lang/String; = "CameraManager"

.field public static USE_FRONT_CAMERA:Z = false

.field public static USE_SAMSUNG_FOCUS_ZOOM_PATCH:Z = false

.field private static a:Lcom/manateeworks/CameraManager; = null

.field public static afCallback:Landroid/hardware/Camera$AutoFocusCallback; = null

.field public static currentFPS:F = 0.0f

.field public static mDesiredHeight:I = 0x2d0

.field public static mDesiredWidth:I = 0x500

.field public static refocusingActive:Z = false

.field public static useBufferedCallback:Z = true


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Z

.field public camera:Landroid/hardware/Camera;

.field public final configManager:Lcom/manateeworks/b;

.field private final d:Z

.field private e:Landroid/hardware/Camera$PreviewCallback;

.field public focusTimer:Ljava/util/Timer;

.field public lastHolder:Landroid/view/SurfaceHolder;

.field public final previewCallback:Lcom/manateeworks/c;

.field public previewing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manateeworks/CameraManager;->b:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/manateeworks/b;

    invoke-direct {v0, p1}, Lcom/manateeworks/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/manateeworks/CameraManager;->configManager:Lcom/manateeworks/b;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/manateeworks/CameraManager;->d:Z

    .line 5
    sput-boolean p1, Lcom/manateeworks/CameraManager;->useBufferedCallback:Z

    .line 6
    new-instance v1, Lcom/manateeworks/c;

    invoke-direct {v1, v0, p1}, Lcom/manateeworks/c;-><init>(Lcom/manateeworks/b;Z)V

    iput-object v1, p0, Lcom/manateeworks/CameraManager;->previewCallback:Lcom/manateeworks/c;

    return-void
.end method

.method public static get()Lcom/manateeworks/CameraManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/manateeworks/CameraManager;->a:Lcom/manateeworks/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/manateeworks/CameraManager;->a:Lcom/manateeworks/CameraManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/manateeworks/CameraManager;

    invoke-direct {v0, p0}, Lcom/manateeworks/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/manateeworks/CameraManager;->a:Lcom/manateeworks/CameraManager;

    :cond_0
    return-void
.end method

.method public static setDesiredPreviewSize(II)V
    .locals 0

    .line 1
    sput p0, Lcom/manateeworks/CameraManager;->mDesiredWidth:I

    .line 2
    sput p1, Lcom/manateeworks/CameraManager;->mDesiredHeight:I

    return-void
.end method


# virtual methods
.method public closeDriver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public getCurrentResolution()Landroid/graphics/Point;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceDefaultOrientation()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2
    iget-object v1, p0, Lcom/manateeworks/CameraManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 4
    :cond_0
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_4

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 5
    :cond_2
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v2
.end method

.method public getExposureCompensationRange()[F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    int-to-float v3, v3

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v0, v4, v3

    const/4 v0, 0x2

    aput v2, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    return-object v1
.end method

.method public getMaxResolution()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/manateeworks/b;->c(Landroid/hardware/Camera$Parameters;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxZoom()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNormalResolution(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/manateeworks/b;->b(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isTorchAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "torch"

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public openDriver(Landroid/view/SurfaceHolder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_c

    .line 2
    sget-boolean v0, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Camera opening..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-boolean v0, Lcom/manateeworks/CameraManager;->USE_FRONT_CAMERA:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    .line 8
    sget-boolean v0, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string v3, "First camera open failed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    .line 11
    sget-boolean p1, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 12
    sget-object p1, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string p2, "Secoond camera open failed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 14
    :cond_4
    sget-boolean v0, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 15
    sget-object v0, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "Camera open success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_6

    .line 17
    sget-boolean v0, Lcom/manateeworks/CameraManager;->USE_FRONT_CAMERA:Z

    iget-object v2, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0, v2, p2}, Lcom/manateeworks/CameraManager;->setCameraDisplayOrientation(ILandroid/hardware/Camera;Z)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 18
    iget-object p2, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    const/16 v0, 0x5a

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 19
    iput-object p1, p0, Lcom/manateeworks/CameraManager;->lastHolder:Landroid/view/SurfaceHolder;

    .line 20
    iget-object p2, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 21
    sget-boolean p1, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz p1, :cond_a

    .line 22
    sget-object p1, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string p2, "Set camera current holder"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/manateeworks/CameraManager;->lastHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 24
    sget-boolean p1, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz p1, :cond_9

    .line 25
    sget-object p1, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string p2, "Set camera last holder"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_9
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->lastHolder:Landroid/view/SurfaceHolder;

    if-nez p1, :cond_a

    .line 27
    sget-boolean p1, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz p1, :cond_a

    .line 28
    sget-object p1, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string p2, "Camera last holder is NULL"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_a
    :goto_2
    iget-boolean p1, p0, Lcom/manateeworks/CameraManager;->c:Z

    if-nez p1, :cond_b

    .line 30
    iput-boolean v1, p0, Lcom/manateeworks/CameraManager;->c:Z

    .line 31
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->configManager:Lcom/manateeworks/b;

    iget-object p2, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, p2}, Lcom/manateeworks/b;->d(Landroid/hardware/Camera;)V

    .line 32
    sget-boolean p1, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz p1, :cond_b

    .line 33
    sget-object p1, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string p2, "configManager initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_b
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->configManager:Lcom/manateeworks/b;

    iget-object p2, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, p2}, Lcom/manateeworks/b;->e(Landroid/hardware/Camera;)V

    .line 35
    sget-boolean p1, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz p1, :cond_d

    .line 36
    sget-object p1, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string p2, "Camera set desired parameters"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 37
    :cond_c
    sget-boolean p1, Lcom/manateeworks/CameraManager;->DEBUG:Z

    if-eqz p1, :cond_d

    .line 38
    sget-object p1, Lcom/manateeworks/CameraManager;->TAG:Ljava/lang/String;

    const-string p2, "Camera already opened"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    return-void
.end method

.method public renderCroppedGreyscaleBitmap([BII)Landroid/graphics/Bitmap;
    .locals 9

    mul-int v0, p2, p3

    .line 1
    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v1, p3, :cond_0

    .line 2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v4, p2

    move v7, p2

    move v8, p3

    .line 3
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-lt v4, p2, :cond_1

    add-int/2addr v3, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int v5, v3, v4

    .line 4
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    const/high16 v7, -0x1000000

    const v8, 0x10101

    mul-int v6, v6, v8

    or-int/2addr v6, v7

    .line 5
    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 0

    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/manateeworks/CameraManager;->previewing:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->previewCallback:Lcom/manateeworks/c;

    invoke-virtual {v0, p1, p2}, Lcom/manateeworks/c;->d(Landroid/os/Handler;I)V

    .line 3
    sget-boolean p1, Lcom/manateeworks/CameraManager;->useBufferedCallback:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->previewCallback:Lcom/manateeworks/c;

    invoke-virtual {p1}, Lcom/manateeworks/c;->c()Landroid/hardware/Camera$PreviewCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/manateeworks/CameraManager;->e:Landroid/hardware/Camera$PreviewCallback;

    .line 5
    iget-object p2, p0, Lcom/manateeworks/CameraManager;->previewCallback:Lcom/manateeworks/c;

    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/manateeworks/CameraManager;->configManager:Lcom/manateeworks/b;

    iget-object v1, v1, Lcom/manateeworks/b;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/manateeworks/c;->e(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;II)I

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/manateeworks/CameraManager;->d:Z

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/manateeworks/CameraManager;->previewCallback:Lcom/manateeworks/c;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/manateeworks/CameraManager;->previewCallback:Lcom/manateeworks/c;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCameraDisplayOrientation(ILandroid/hardware/Camera;Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1
    new-instance p3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 2
    invoke-static {p1, p3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 3
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->b:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    .line 5
    :cond_3
    :goto_0
    iget p1, p3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, v0, :cond_4

    .line 6
    iget p1, p3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    rsub-int p1, p1, 0x168

    .line 7
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 8
    :cond_4
    iget p1, p3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    .line 9
    :goto_1
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method public setExposureCompensation(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    int-to-float v1, v1

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    move p1, v2

    :cond_1
    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    float-to-int p1, v1

    .line 6
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 7
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setTorch(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "torch"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/manateeworks/CameraManager$b;

    invoke-direct {v2, p0, p1, v0}, Lcom/manateeworks/CameraManager$b;-><init>(Lcom/manateeworks/CameraManager;ZLandroid/hardware/Camera$Parameters;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public setZoom(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const v1, 0x186a0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_4

    .line 7
    sget-boolean p1, Lcom/manateeworks/CameraManager;->USE_SAMSUNG_FOCUS_ZOOM_PATCH:Z

    if-eqz p1, :cond_3

    const/16 p1, 0xa

    if-le v4, p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/manateeworks/CameraManager;->stopFocusing()V

    add-int/lit8 p1, v4, -0x5

    .line 9
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 10
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 11
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/manateeworks/CameraManager$a;

    invoke-direct {v1, p0, v0, v4}, Lcom/manateeworks/CameraManager$a;-><init>(Lcom/manateeworks/CameraManager;Landroid/hardware/Camera$Parameters;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/manateeworks/CameraManager;->stopFocusing()V

    .line 14
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 15
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 16
    invoke-virtual {p0}, Lcom/manateeworks/CameraManager;->startFocusing()V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/manateeworks/CameraManager;->stopFocusing()V

    .line 18
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 19
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 20
    invoke-virtual {p0}, Lcom/manateeworks/CameraManager;->startFocusing()V

    goto :goto_1

    .line 21
    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, p1

    .line 22
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v1, :cond_5

    .line 23
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move v4, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public startFocusing()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/manateeworks/CameraManager;->refocusingActive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/manateeworks/CameraManager;->refocusingActive:Z

    .line 3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/manateeworks/CameraManager;->focusTimer:Ljava/util/Timer;

    .line 4
    new-instance v2, Lcom/manateeworks/CameraManager$c;

    invoke-direct {v2, p0}, Lcom/manateeworks/CameraManager$c;-><init>(Lcom/manateeworks/CameraManager;)V

    const-wide/16 v3, 0x1f4

    .line 5
    sget v0, Lcom/manateeworks/CameraManager;->REFOCUSING_DELAY:I

    int-to-long v5, v0

    .line 6
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/manateeworks/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/manateeworks/CameraManager;->previewing:Z

    .line 4
    invoke-virtual {p0}, Lcom/manateeworks/CameraManager;->startFocusing()V

    :cond_0
    return-void
.end method

.method public stopFocusing()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2
    sget-boolean v0, Lcom/manateeworks/CameraManager;->refocusingActive:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->focusTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->focusTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_1
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/manateeworks/CameraManager;->refocusingActive:Z

    return-void
.end method

.method public stopPreview()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/manateeworks/CameraManager;->previewing:Z

    if-eqz v1, :cond_2

    .line 2
    sget-boolean v1, Lcom/manateeworks/CameraManager;->useBufferedCallback:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/manateeworks/CameraManager;->previewCallback:Lcom/manateeworks/c;

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/manateeworks/c;->e(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;II)I

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/manateeworks/CameraManager;->d:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/manateeworks/CameraManager;->stopFocusing()V

    .line 7
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 8
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->previewCallback:Lcom/manateeworks/c;

    invoke-virtual {v0, v2, v3}, Lcom/manateeworks/c;->d(Landroid/os/Handler;I)V

    .line 9
    iput-boolean v3, p0, Lcom/manateeworks/CameraManager;->previewing:Z

    :cond_2
    return-void
.end method

.method public updateCameraOrientation(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/manateeworks/CameraManager;->getDeviceDefaultOrientation()I

    move-result v0

    const/16 v1, 0x5a

    const/16 v2, 0xb4

    const/16 v3, 0x10e

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_9

    if-eq p1, v7, :cond_8

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    goto :goto_0

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 8
    :cond_7
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :goto_0
    return-void
.end method
