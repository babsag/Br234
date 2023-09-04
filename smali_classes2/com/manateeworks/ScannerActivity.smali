.class public Lcom/manateeworks/ScannerActivity;
.super Landroid/app/Activity;
.source "ScannerActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manateeworks/ScannerActivity$State;
    }
.end annotation


# static fields
.field public static MAX_THREADS:I = 0x0

.field public static final MSG_AUTOFOCUS:I = 0x2

.field public static final MSG_DECODE:I = 0x1

.field public static final MSG_DECODE_FAILED:I = 0x4

.field public static final MSG_DECODE_SUCCESS:I = 0x3

.field public static final OM_IMAGE:I = 0x2

.field public static final OM_MW:I = 0x1

.field static a:Z = false

.field public static activity:Landroid/app/Activity; = null

.field private static b:I = 0x0

.field private static c:Z = false

.field public static cbc:Lio/flutter/plugin/common/MethodChannel$Result; = null

.field public static customParams:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static firstZoom:I = 0x96

.field public static handler:Landroid/os/Handler; = null

.field public static param_DefaultFlashOn:Z = false

.field public static param_EnableFlash:Z = true

.field public static param_EnableHiRes:Z = true

.field public static param_EnableZoom:Z = true

.field public static param_Orientation:I = 0x0

.field public static param_OverlayMode:I = 0x1

.field public static param_ZoomLevel1:I = 0x0

.field public static param_ZoomLevel2:I = 0x0

.field public static param_activeParser:I = 0x0

.field public static param_closeOnSuccess:Z = true

.field public static param_delayOnDuplicateScan:I = 0x0

.field public static param_maxThreads:I = 0x4

.field public static param_showLocation:Z = true

.field public static secondZoom:I = 0x12c

.field public static state:Lcom/manateeworks/ScannerActivity$State;

.field public static zoomLevel:I


# instance fields
.field private d:Z

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/manateeworks/ScannerActivity;->MAX_THREADS:I

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/manateeworks/ScannerActivity;->activity:Landroid/app/Activity;

    .line 3
    sget-object v0, Lcom/manateeworks/ScannerActivity$State;->STOPPED:Lcom/manateeworks/ScannerActivity$State;

    sput-object v0, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/manateeworks/ScannerActivity;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/manateeworks/ScannerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manateeworks/ScannerActivity;->i()V

    return-void
.end method

.method static synthetic b(Lcom/manateeworks/ScannerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manateeworks/ScannerActivity;->j()V

    return-void
.end method

.method static synthetic c()I
    .locals 2

    .line 1
    sget v0, Lcom/manateeworks/ScannerActivity;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/manateeworks/ScannerActivity;->b:I

    return v0
.end method

.method static synthetic d()I
    .locals 2

    .line 1
    sget v0, Lcom/manateeworks/ScannerActivity;->b:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/manateeworks/ScannerActivity;->b:I

    return v0
.end method

.method public static decode([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "data",
            "width",
            "height"
        }
    .end annotation

    .line 1
    sget v0, Lcom/manateeworks/ScannerActivity;->param_maxThreads:I

    sget v1, Lcom/manateeworks/ScannerActivity;->MAX_THREADS:I

    if-le v0, v1, :cond_0

    .line 2
    sput v1, Lcom/manateeworks/ScannerActivity;->param_maxThreads:I

    .line 3
    :cond_0
    sget v0, Lcom/manateeworks/ScannerActivity;->b:I

    sget v1, Lcom/manateeworks/ScannerActivity;->param_maxThreads:I

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    sget-object v1, Lcom/manateeworks/ScannerActivity$State;->STOPPED:Lcom/manateeworks/ScannerActivity$State;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/manateeworks/ScannerActivity$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/manateeworks/ScannerActivity$f;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/manateeworks/ScannerActivity;->i:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    const-string v3, "app_name"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Camera error"

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance v1, Lcom/manateeworks/ScannerActivity$e;

    invoke-direct {v1, p0}, Lcom/manateeworks/ScannerActivity$e;-><init>(Lcom/manateeworks/ScannerActivity;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/manateeworks/ScannerActivity;->cbc:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "type"

    const-string v1, "Digitar"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private h(Landroid/graphics/PointF;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private i()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/manateeworks/ScannerActivity;->a:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/manateeworks/ScannerActivity;->a:Z

    .line 2
    invoke-direct {p0}, Lcom/manateeworks/ScannerActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->f:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manateeworks/CameraManager;->isTorchAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/manateeworks/ScannerActivity;->param_EnableFlash:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    sget-boolean v0, Lcom/manateeworks/ScannerActivity;->a:Z

    const-string v1, "drawable"

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->f:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/manateeworks/ScannerActivity;->i:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    const-string v4, "flashbuttonon"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->f:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/manateeworks/ScannerActivity;->i:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    const-string v4, "flashbuttonoff"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    sget-boolean v1, Lcom/manateeworks/ScannerActivity;->a:Z

    invoke-virtual {v0, v1}, Lcom/manateeworks/CameraManager;->setTorch(Z)V

    .line 8
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->postInvalidate()V

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->f:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static startScanning()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manateeworks/CameraManager;->startPreview()V

    .line 2
    sget-object v0, Lcom/manateeworks/ScannerActivity$State;->PREVIEW:Lcom/manateeworks/ScannerActivity$State;

    sput-object v0, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    .line 3
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    sget-object v1, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/manateeworks/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 4
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    sget-object v1, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/manateeworks/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    return-void
.end method

.method public static toggleZoom()V
    .locals 2

    .line 1
    sget v0, Lcom/manateeworks/ScannerActivity;->zoomLevel:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/manateeworks/ScannerActivity;->zoomLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/manateeworks/ScannerActivity;->zoomLevel:I

    .line 3
    :cond_0
    invoke-static {}, Lcom/manateeworks/ScannerActivity;->updateZoom()V

    return-void
.end method

.method public static updateZoom()V
    .locals 2

    .line 1
    sget v0, Lcom/manateeworks/ScannerActivity;->param_ZoomLevel1:I

    if-eqz v0, :cond_2

    sget v1, Lcom/manateeworks/ScannerActivity;->param_ZoomLevel2:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sput v0, Lcom/manateeworks/ScannerActivity;->firstZoom:I

    .line 3
    sput v1, Lcom/manateeworks/ScannerActivity;->secondZoom:I

    .line 4
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manateeworks/CameraManager;->getMaxZoom()I

    move-result v0

    .line 5
    sget v1, Lcom/manateeworks/ScannerActivity;->secondZoom:I

    if-ge v0, v1, :cond_1

    .line 6
    sput v0, Lcom/manateeworks/ScannerActivity;->secondZoom:I

    .line 7
    :cond_1
    sget v1, Lcom/manateeworks/ScannerActivity;->firstZoom:I

    if-ge v0, v1, :cond_3

    .line 8
    sput v0, Lcom/manateeworks/ScannerActivity;->firstZoom:I

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x96

    .line 9
    sput v0, Lcom/manateeworks/ScannerActivity;->firstZoom:I

    const/16 v0, 0x12c

    .line 10
    sput v0, Lcom/manateeworks/ScannerActivity;->secondZoom:I

    .line 11
    :cond_3
    :goto_1
    sget v0, Lcom/manateeworks/ScannerActivity;->zoomLevel:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    sget v1, Lcom/manateeworks/ScannerActivity;->secondZoom:I

    invoke-virtual {v0, v1}, Lcom/manateeworks/CameraManager;->setZoom(I)V

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    sget v1, Lcom/manateeworks/ScannerActivity;->firstZoom:I

    invoke-virtual {v0, v1}, Lcom/manateeworks/CameraManager;->setZoom(I)V

    goto :goto_2

    .line 14
    :cond_6
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/manateeworks/CameraManager;->setZoom(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/manateeworks/ScannerActivity;->f(Landroid/view/View;)V

    return-void
.end method

.method public handleDecode(Lcom/manateeworks/BarcodeScanner$MWResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->bytes:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget v1, Lcom/manateeworks/ScannerActivity;->param_activeParser:I

    const/4 v2, 0x0

    const-string v3, "UTF-8"

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/manateeworks/BarcodeScanner;->MWBgetResultType()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    sget v1, Lcom/manateeworks/ScannerActivity;->param_activeParser:I

    if-ne v1, v5, :cond_1

    iget-boolean v6, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->isGS1:Z

    if-eqz v6, :cond_3

    .line 3
    :cond_1
    iget-object v6, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->encryptedResult:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v1, v6}, Lcom/manateeworks/MWParser;->MWPgetJSON(I[B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 5
    array-length v3, v0

    move-object v2, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    aget-byte v7, v0, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v7

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 7
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 8
    array-length v3, v0

    move-object v2, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_4

    aget-byte v7, v0, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v7

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    move-object v1, v2

    .line 10
    :cond_5
    :goto_4
    iget v2, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->type:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_5

    :pswitch_1
    const-string v4, "IATA Code 25"

    goto :goto_5

    :pswitch_2
    const-string v4, "MSI Plessey"

    goto :goto_5

    :pswitch_3
    const-string v4, "Code 11"

    goto :goto_5

    :pswitch_4
    const-string v4, "ITF 14"

    goto :goto_5

    :pswitch_5
    const-string v4, "Code 128 GS1"

    goto :goto_5

    :pswitch_6
    const-string v4, "Codabar"

    goto :goto_5

    :pswitch_7
    const-string v4, "Code 93"

    goto :goto_5

    :pswitch_8
    const-string v4, "Code 25 Standard"

    goto :goto_5

    :pswitch_9
    const-string v4, "Code 25"

    goto :goto_5

    :pswitch_a
    const-string v4, "AZTEC"

    goto :goto_5

    :pswitch_b
    const-string v4, "QR"

    goto :goto_5

    :pswitch_c
    const-string v4, "PDF417"

    goto :goto_5

    :pswitch_d
    const-string v4, "Code 128"

    goto :goto_5

    :pswitch_e
    const-string v4, "UPC E"

    goto :goto_5

    :pswitch_f
    const-string v4, "UPC A"

    goto :goto_5

    :pswitch_10
    const-string v4, "EAN 8"

    goto :goto_5

    :pswitch_11
    const-string v4, "EAN 13"

    goto :goto_5

    :pswitch_12
    const-string v4, "Databar Expanded"

    goto :goto_5

    :pswitch_13
    const-string v4, "Databar Limited"

    goto :goto_5

    :pswitch_14
    const-string v4, "Databar 14 Stacked"

    goto :goto_5

    :pswitch_15
    const-string v4, "Databar 14"

    goto :goto_5

    :pswitch_16
    const-string v4, "Code 39"

    goto :goto_5

    :pswitch_17
    const-string v4, "Datamatrix"

    goto :goto_5

    :pswitch_18
    const-string v4, "None"

    .line 11
    :goto_5
    iget-object v2, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/manateeworks/CameraManager;->getCurrentResolution()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_6

    sget v2, Lcom/manateeworks/ScannerActivity;->param_OverlayMode:I

    if-ne v2, v5, :cond_6

    .line 12
    iget-object v2, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v2, v2, Lcom/manateeworks/BarcodeScanner$MWLocation;->points:[Landroid/graphics/PointF;

    iget v3, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->imageWidth:I

    iget v5, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->imageHeight:I

    invoke-static {v2, v3, v5}, Lcom/manateeworks/MWOverlay;->showLocation([Landroid/graphics/PointF;II)V

    .line 13
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "code"

    .line 14
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 15
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-boolean v1, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->isGS1:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "isGS1"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget v1, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->imageWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "imageWidth"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v1, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->imageHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "imageHeight"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    if-eqz v1, :cond_7

    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    iget-object v3, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v3, v3, Lcom/manateeworks/BarcodeScanner$MWLocation;->p1:Landroid/graphics/PointF;

    invoke-direct {p0, v3}, Lcom/manateeworks/ScannerActivity;->h(Landroid/graphics/PointF;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "p1"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v3, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v3, v3, Lcom/manateeworks/BarcodeScanner$MWLocation;->p2:Landroid/graphics/PointF;

    invoke-direct {p0, v3}, Lcom/manateeworks/ScannerActivity;->h(Landroid/graphics/PointF;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "p2"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v3, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v3, v3, Lcom/manateeworks/BarcodeScanner$MWLocation;->p3:Landroid/graphics/PointF;

    invoke-direct {p0, v3}, Lcom/manateeworks/ScannerActivity;->h(Landroid/graphics/PointF;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "p3"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object p1, p1, Lcom/manateeworks/BarcodeScanner$MWLocation;->p4:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/manateeworks/ScannerActivity;->h(Landroid/graphics/PointF;)Ljava/util/HashMap;

    move-result-object p1

    const-string v3, "p4"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "location"

    .line 25
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string p1, "bytes"

    .line 26
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-boolean p1, Lcom/manateeworks/ScannerActivity;->param_closeOnSuccess:Z

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lcom/manateeworks/ScannerActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 29
    :cond_8
    sget-object p1, Lcom/manateeworks/ScannerActivity;->cbc:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public initCamera(Landroid/view/SurfaceHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceHolder"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/manateeworks/ScannerActivity;->param_EnableHiRes:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    .line 2
    invoke-static {v0, v1}, Lcom/manateeworks/CameraManager;->setDesiredPreviewSize(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x320

    const/16 v1, 0x1e0

    .line 3
    invoke-static {v0, v1}, Lcom/manateeworks/CameraManager;->setDesiredPreviewSize(II)V

    .line 4
    :goto_0
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, p1, v2}, Lcom/manateeworks/CameraManager;->openDriver(Landroid/view/SurfaceHolder;Z)V

    .line 5
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/manateeworks/CameraManager;->getMaxZoom()I

    move-result p1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/manateeworks/ScannerActivity;->g:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 8
    :cond_2
    sget-boolean p1, Lcom/manateeworks/ScannerActivity;->param_EnableZoom:Z

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/manateeworks/ScannerActivity;->g:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 11
    :cond_3
    invoke-static {}, Lcom/manateeworks/ScannerActivity;->updateZoom()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :cond_4
    :goto_2
    sget-object p1, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    if-nez p1, :cond_5

    .line 13
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/manateeworks/ScannerActivity$d;

    invoke-direct {v0, p0}, Lcom/manateeworks/ScannerActivity$d;-><init>(Lcom/manateeworks/ScannerActivity;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object p1, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    .line 14
    :cond_5
    invoke-static {}, Lcom/manateeworks/ScannerActivity;->startScanning()V

    .line 15
    sput-boolean v3, Lcom/manateeworks/ScannerActivity;->a:Z

    .line 16
    invoke-direct {p0}, Lcom/manateeworks/ScannerActivity;->j()V

    return-void

    .line 17
    :catch_0
    invoke-direct {p0}, Lcom/manateeworks/ScannerActivity;->e()V

    return-void

    .line 18
    :catch_1
    invoke-direct {p0}, Lcom/manateeworks/ScannerActivity;->e()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2
    sget-object v0, Lcom/manateeworks/ScannerActivity;->cbc:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v1, "type"

    const-string v2, "Cancel"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/manateeworks/ScannerActivity;->param_Orientation:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    sget v0, Lcom/manateeworks/ScannerActivity;->param_Orientation:I

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eq p1, v1, :cond_3

    .line 6
    :cond_2
    sput-boolean v1, Lcom/manateeworks/ScannerActivity;->c:Z

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 7
    sput-boolean p1, Lcom/manateeworks/ScannerActivity;->c:Z

    .line 8
    :cond_4
    sget-boolean p1, Lcom/manateeworks/ScannerActivity;->c:Z

    if-nez p1, :cond_8

    .line 9
    sget-object p1, Lcom/manateeworks/ScannerActivity$State;->STOPPED:Lcom/manateeworks/ScannerActivity$State;

    sput-object p1, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/manateeworks/ScannerActivity;->i:Landroid/content/res/Resources;

    .line 12
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    const-string v1, "scanner"

    const-string v2, "layout"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 13
    sput-object p0, Lcom/manateeworks/ScannerActivity;->activity:Landroid/app/Activity;

    .line 14
    iget-object p1, p0, Lcom/manateeworks/ScannerActivity;->i:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    const-string v1, "overlayImage"

    const-string v2, "id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/manateeworks/ScannerActivity;->e:Landroid/widget/ImageView;

    .line 15
    iget-object p1, p0, Lcom/manateeworks/ScannerActivity;->i:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    const-string v1, "flashButton"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/manateeworks/ScannerActivity;->f:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    .line 16
    new-instance v0, Lcom/manateeworks/ScannerActivity$a;

    invoke-direct {v0, p0}, Lcom/manateeworks/ScannerActivity$a;-><init>(Lcom/manateeworks/ScannerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/manateeworks/ScannerActivity;->i:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    const-string v1, "zoomButton"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/manateeworks/ScannerActivity;->g:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    .line 18
    new-instance v0, Lcom/manateeworks/ScannerActivity$b;

    invoke-direct {v0, p0}, Lcom/manateeworks/ScannerActivity$b;-><init>(Lcom/manateeworks/ScannerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/manateeworks/ScannerActivity;->i:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    const-string v1, "digitarCodigoDeBarrasButton"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_7

    .line 20
    new-instance v0, Lcom/manateeworks/a;

    invoke-direct {v0, p0}, Lcom/manateeworks/a;-><init>(Lcom/manateeworks/ScannerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/manateeworks/CameraManager;->init(Landroid/content/Context;)V

    :cond_8
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    sget-boolean v0, Lcom/manateeworks/ScannerActivity;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/manateeworks/ScannerActivity;->a:Z

    .line 4
    invoke-direct {p0}, Lcom/manateeworks/ScannerActivity;->j()V

    .line 5
    sget v0, Lcom/manateeworks/ScannerActivity;->param_OverlayMode:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/manateeworks/MWOverlay;->removeOverlay()V

    .line 7
    :cond_0
    sget-object v0, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manateeworks/CameraManager;->stopPreview()V

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    .line 10
    :cond_1
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manateeworks/CameraManager;->closeDriver()V

    .line 11
    sget-object v0, Lcom/manateeworks/ScannerActivity$State;->STOPPED:Lcom/manateeworks/ScannerActivity$State;

    sput-object v0, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    sget-boolean v0, Lcom/manateeworks/ScannerActivity;->c:Z

    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->g:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->i:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/manateeworks/ScannerActivity;->h:Ljava/lang/String;

    const-string v3, "preview_view"

    const-string v4, "id"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 6
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 7
    sget v3, Lcom/manateeworks/ScannerActivity;->param_OverlayMode:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 8
    invoke-static {p0, v0}, Lcom/manateeworks/MWOverlay;->addOverlay(Landroid/content/Context;Landroid/view/View;)Lcom/manateeworks/MWOverlay;

    .line 9
    :cond_1
    sget v0, Lcom/manateeworks/ScannerActivity;->param_OverlayMode:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/manateeworks/ScannerActivity;->d:Z

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0, v2}, Lcom/manateeworks/ScannerActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x3

    .line 17
    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 18
    :goto_1
    invoke-static {}, Lcom/manateeworks/BarcodeScanner;->MWBgetLibVersion()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lib version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lib version"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-boolean v0, Lcom/manateeworks/ScannerActivity;->param_DefaultFlashOn:Z

    if-eqz v0, :cond_5

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/manateeworks/ScannerActivity$c;

    invoke-direct {v1, p0}, Lcom/manateeworks/ScannerActivity$c;-><init>(Lcom/manateeworks/ScannerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "width",
            "height"
        }
    .end annotation

    const-string p2, "SURFACE"

    const-string p3, "CHANGED"

    .line 1
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p3, p0, Lcom/manateeworks/ScannerActivity;->d:Z

    if-nez p3, :cond_0

    const-string p3, "CHANGED_HAS_SURFACE"

    .line 3
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/manateeworks/ScannerActivity;->d:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/manateeworks/ScannerActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/manateeworks/ScannerActivity;->d:Z

    return-void
.end method
