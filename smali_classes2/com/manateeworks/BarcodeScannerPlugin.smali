.class public Lcom/manateeworks/BarcodeScannerPlugin;
.super Ljava/lang/Object;
.source "BarcodeScannerPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manateeworks/BarcodeScannerPlugin$ImageInfo;
    }
.end annotation


# static fields
.field public static MAX_IMAGE_SIZE:I

.field public static final RECT_DOTCODE:Landroid/graphics/Rect;

.field public static final RECT_FULL_1D:Landroid/graphics/Rect;

.field public static final RECT_FULL_2D:Landroid/graphics/Rect;

.field public static final RECT_LANDSCAPE_1D:Landroid/graphics/Rect;

.field public static final RECT_LANDSCAPE_2D:Landroid/graphics/Rect;

.field public static final RECT_PORTRAIT_1D:Landroid/graphics/Rect;

.field public static final RECT_PORTRAIT_2D:Landroid/graphics/Rect;

.field private static a:Lio/flutter/plugin/common/MethodChannel$Result;

.field public static heightP:D

.field public static useAutoRect:Z

.field public static widthP:D

.field public static xP:D

.field public static yP:D


# instance fields
.field private b:Lio/flutter/plugin/common/MethodChannel;

.field private c:Z

.field d:Landroid/widget/ScrollView;

.field e:Landroid/widget/ProgressBar;

.field private f:Landroid/app/Activity;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/manateeworks/BarcodeScannerPlugin;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/manateeworks/BarcodeScannerPlugin;->useAutoRect:Z

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/16 v2, 0x14

    const/16 v3, 0x60

    const/16 v4, 0x3c

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_LANDSCAPE_1D:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_LANDSCAPE_2D:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_PORTRAIT_1D:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_PORTRAIT_2D:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_FULL_1D:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_FULL_2D:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x1e

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_DOTCODE:Landroid/graphics/Rect;

    const/16 v0, 0x500

    .line 10
    sput v0, Lcom/manateeworks/BarcodeScannerPlugin;->MAX_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/manateeworks/BarcodeScannerPlugin;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/manateeworks/BarcodeScannerPlugin;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->c:Z

    return p1
.end method

.method public static bitmapToGrayscale(Ljava/lang/String;)Lcom/manateeworks/BarcodeScannerPlugin$ImageInfo;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUri"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v4, 0x0

    if-lez v3, :cond_7

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v5, :cond_0

    goto/16 :goto_4

    :cond_0
    move v13, v5

    .line 6
    :goto_0
    sget v5, Lcom/manateeworks/BarcodeScannerPlugin;->MAX_IMAGE_SIZE:I

    if-gt v3, v5, :cond_6

    if-le v13, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v14, 0x0

    .line 7
    iput-boolean v14, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v4

    .line 10
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 11
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v2, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    mul-int v2, v13, v3

    .line 14
    new-array v4, v2, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    move-object v6, v4

    move v8, v13

    move v11, v13

    move v12, v3

    .line 15
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 16
    new-instance v5, Lcom/manateeworks/BarcodeScannerPlugin$ImageInfo;

    invoke-direct {v5, v13, v3}, Lcom/manateeworks/BarcodeScannerPlugin$ImageInfo;-><init>(II)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 17
    aget v6, v4, v3

    and-int/lit16 v7, v6, 0xff

    shr-int/lit8 v8, v6, 0x8

    const/16 v9, 0xff

    and-int/2addr v8, v9

    shr-int/lit8 v6, v6, 0x10

    and-int/2addr v6, v9

    const-wide v10, 0x3fd322d0e5604189L    # 0.299

    int-to-double v12, v6

    mul-double v12, v12, v10

    const-wide v10, 0x3fe2c8b439581062L    # 0.587

    int-to-double v14, v8

    mul-double v14, v14, v10

    add-double/2addr v12, v14

    const-wide v10, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v6, v7

    mul-double v6, v6, v10

    add-double/2addr v12, v6

    double-to-int v6, v12

    if-gez v6, :cond_3

    const/4 v6, 0x0

    :cond_3
    if-le v6, v9, :cond_4

    goto :goto_2

    :cond_4
    move v9, v6

    .line 18
    :goto_2
    iget-object v6, v5, Lcom/manateeworks/BarcodeScannerPlugin$ImageInfo;->a:[B

    int-to-byte v7, v9

    aput-byte v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v14, 0x0

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v5

    .line 21
    :cond_6
    :goto_3
    div-int/lit8 v3, v3, 0x2

    .line 22
    div-int/lit8 v13, v13, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-object v4
.end method

.method static synthetic c(Lcom/manateeworks/BarcodeScannerPlugin;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    return-object p0
.end method

.method private d()V
    .locals 0

    return-void
.end method

.method private e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->g:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manateeworks/CameraManager;->isTorchAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->g:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lcom/manateeworks/ScannerActivity;->a:Z

    const-string v1, "drawable"

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->g:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "flashbuttonon"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->g:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

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
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public static initDecoder()V
    .locals 7

    const/16 v0, 0x37ff

    .line 1
    invoke-static {v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetActiveCodes(I)I

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetDirection(I)I

    .line 3
    sget-object v0, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_FULL_1D:Landroid/graphics/Rect;

    const/16 v1, 0x100

    invoke-static {v1, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/16 v2, 0x8

    .line 4
    invoke-static {v2, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/16 v3, 0x200

    .line 5
    invoke-static {v3, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/16 v3, 0x20

    .line 6
    invoke-static {v3, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    .line 7
    sget-object v3, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_FULL_2D:Landroid/graphics/Rect;

    const/16 v4, 0x80

    invoke-static {v4, v3}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/4 v4, 0x2

    .line 8
    invoke-static {v4, v3}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/16 v5, 0x10

    .line 9
    invoke-static {v5, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/16 v5, 0x40

    .line 10
    invoke-static {v5, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/4 v5, 0x1

    .line 11
    invoke-static {v5, v3}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/4 v3, 0x4

    .line 12
    invoke-static {v3, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/16 v3, 0x400

    .line 13
    invoke-static {v3, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    .line 14
    sget-object v5, Lcom/manateeworks/BarcodeScannerPlugin;->RECT_DOTCODE:Landroid/graphics/Rect;

    const/16 v6, 0x800

    invoke-static {v6, v5}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/16 v5, 0x1000

    .line 15
    invoke-static {v5, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/16 v6, 0x2000

    .line 16
    invoke-static {v6, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(ILandroid/graphics/Rect;)I

    const/4 v0, 0x5

    .line 17
    invoke-static {v1, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetMinLength(II)I

    .line 18
    invoke-static {v6, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetMinLength(II)I

    .line 19
    invoke-static {v2, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetMinLength(II)I

    .line 20
    invoke-static {v3, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetMinLength(II)I

    .line 21
    invoke-static {v5, v0}, Lcom/manateeworks/BarcodeScanner;->MWBsetMinLength(II)I

    .line 22
    invoke-static {v4}, Lcom/manateeworks/BarcodeScanner;->MWBsetLevel(I)I

    .line 23
    invoke-static {v4}, Lcom/manateeworks/BarcodeScanner;->MWBsetResultType(I)I

    return-void
.end method


# virtual methods
.method public handleDecode(Lcom/manateeworks/BarcodeScanner$MWResult;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "y"

    const-string v1, "x"

    if-eqz p1, :cond_0

    .line 1
    iget-object v2, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->bytes:[B

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    sget v3, Lcom/manateeworks/ScannerActivity;->param_activeParser:I

    const-string v4, "UTF-8"

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/manateeworks/BarcodeScanner;->MWBgetResultType()I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_3

    sget v3, Lcom/manateeworks/ScannerActivity;->param_activeParser:I

    if-ne v3, v7, :cond_1

    iget-boolean v8, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->isGS1:Z

    if-eqz v8, :cond_3

    .line 3
    :cond_1
    iget-object v8, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->encryptedResult:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v3, v8}, Lcom/manateeworks/MWParser;->MWPgetJSON(I[B)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 4
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 5
    array-length v4, v2

    move-object v8, v5

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_2

    aget-byte v10, v2, v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v8, v10

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 7
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 8
    array-length v4, v2

    move-object v8, v5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_4

    aget-byte v10, v2, v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v8, v10

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    move-object v3, v8

    .line 10
    :cond_5
    :goto_4
    iget v4, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->type:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_5

    :pswitch_1
    const-string v5, "IATA Code 25"

    goto :goto_5

    :pswitch_2
    const-string v5, "MSI Plessey"

    goto :goto_5

    :pswitch_3
    const-string v5, "Code 11"

    goto :goto_5

    :pswitch_4
    const-string v5, "ITF 14"

    goto :goto_5

    :pswitch_5
    const-string v5, "Code 128 GS1"

    goto :goto_5

    :pswitch_6
    const-string v5, "Codabar"

    goto :goto_5

    :pswitch_7
    const-string v5, "Code 93"

    goto :goto_5

    :pswitch_8
    const-string v5, "Code 25 Standard"

    goto :goto_5

    :pswitch_9
    const-string v5, "Code 25"

    goto :goto_5

    :pswitch_a
    const-string v5, "AZTEC"

    goto :goto_5

    :pswitch_b
    const-string v5, "QR"

    goto :goto_5

    :pswitch_c
    const-string v5, "PDF417"

    goto :goto_5

    :pswitch_d
    const-string v5, "Code 128"

    goto :goto_5

    :pswitch_e
    const-string v5, "UPC E"

    goto :goto_5

    :pswitch_f
    const-string v5, "UPC A"

    goto :goto_5

    :pswitch_10
    const-string v5, "EAN 8"

    goto :goto_5

    :pswitch_11
    const-string v5, "EAN 13"

    goto :goto_5

    :pswitch_12
    const-string v5, "Databar Expanded"

    goto :goto_5

    :pswitch_13
    const-string v5, "Databar Limited"

    goto :goto_5

    :pswitch_14
    const-string v5, "Databar 14 Stacked"

    goto :goto_5

    :pswitch_15
    const-string v5, "Databar 14"

    goto :goto_5

    :pswitch_16
    const-string v5, "Code 39"

    goto :goto_5

    :pswitch_17
    const-string v5, "Datamatrix"

    goto :goto_5

    :pswitch_18
    const-string v5, "None"

    .line 11
    :goto_5
    iget-object v4, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/manateeworks/CameraManager;->getCurrentResolution()Landroid/graphics/Point;

    move-result-object v4

    if-eqz v4, :cond_6

    sget v4, Lcom/manateeworks/ScannerActivity;->param_OverlayMode:I

    if-ne v4, v7, :cond_6

    .line 12
    iget-object v4, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v4, v4, Lcom/manateeworks/BarcodeScanner$MWLocation;->points:[Landroid/graphics/PointF;

    iget v7, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->imageWidth:I

    iget v8, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->imageHeight:I

    invoke-static {v4, v7, v8}, Lcom/manateeworks/MWOverlay;->showLocation([Landroid/graphics/PointF;II)V

    .line 13
    :cond_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v7, "code"

    .line 14
    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    .line 15
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isGS1"

    .line 16
    iget-boolean v5, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->isGS1:Z

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "imageWidth"

    .line 17
    iget v5, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->imageWidth:I

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "imageHeight"

    .line 18
    iget v5, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->imageHeight:I

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    iget-object v3, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v5, "location"

    if-eqz v3, :cond_7

    .line 20
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "p1"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v9, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v9, v9, Lcom/manateeworks/BarcodeScanner$MWLocation;->p1:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    float-to-double v9, v9

    .line 21
    invoke-virtual {v8, v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v9, v9, Lcom/manateeworks/BarcodeScanner$MWLocation;->p1:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "p2"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v9, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v9, v9, Lcom/manateeworks/BarcodeScanner$MWLocation;->p2:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    float-to-double v9, v9

    .line 22
    invoke-virtual {v8, v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v9, v9, Lcom/manateeworks/BarcodeScanner$MWLocation;->p2:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "p3"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v9, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v9, v9, Lcom/manateeworks/BarcodeScanner$MWLocation;->p3:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    float-to-double v9, v9

    .line 23
    invoke-virtual {v8, v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v9, v9, Lcom/manateeworks/BarcodeScanner$MWLocation;->p3:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "p4"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v9, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object v9, v9, Lcom/manateeworks/BarcodeScanner$MWLocation;->p4:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    float-to-double v9, v9

    .line 24
    invoke-virtual {v8, v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    iget-object p1, p1, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    iget-object p1, p1, Lcom/manateeworks/BarcodeScanner$MWLocation;->p4:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v8, p1

    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 25
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 26
    :cond_7
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 27
    :goto_6
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v2, :cond_8

    .line 28
    array-length v0, v2

    :goto_7
    if-ge v6, v0, :cond_8

    aget-byte v1, v2, v6

    and-int/lit16 v1, v1, 0xff

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    const-string v0, "bytes"

    .line 30
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    .line 31
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 32
    :goto_8
    sget-boolean p1, Lcom/manateeworks/ScannerActivity;->param_closeOnSuccess:Z

    .line 33
    sget-object p1, Lcom/manateeworks/BarcodeScannerPlugin;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p1, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 34
    sget-boolean p1, Lcom/manateeworks/ScannerActivity;->param_closeOnSuccess:Z

    if-eqz p1, :cond_9

    .line 35
    invoke-direct {p0}, Lcom/manateeworks/BarcodeScannerPlugin;->d()V

    :cond_9
    return-void

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

.method protected hasPermission(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BarcodeScannerPlugin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
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

    iget-object v1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    .line 5
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    invoke-virtual {v0, p1, v1}, Lcom/manateeworks/CameraManager;->openDriver(Landroid/view/SurfaceHolder;Z)V

    .line 7
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/manateeworks/CameraManager;->getMaxZoom()I

    move-result p1

    const/16 v0, 0x64

    const/16 v1, 0x8

    if-gt p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->h:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_2
    sget-boolean p1, Lcom/manateeworks/ScannerActivity;->param_EnableZoom:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->h:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/manateeworks/ScannerActivity;->updateZoom()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :cond_4
    :goto_2
    sget-object p1, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    if-nez p1, :cond_5

    .line 15
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/manateeworks/BarcodeScannerPlugin$b;

    invoke-direct {v0, p0}, Lcom/manateeworks/BarcodeScannerPlugin$b;-><init>(Lcom/manateeworks/BarcodeScannerPlugin;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object p1, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    .line 16
    :cond_5
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/manateeworks/CameraManager;->startPreview()V

    .line 17
    sget-object p1, Lcom/manateeworks/ScannerActivity$State;->PREVIEW:Lcom/manateeworks/ScannerActivity$State;

    sput-object p1, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    .line 18
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object p1

    sget-object v0, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v3}, Lcom/manateeworks/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 19
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object p1

    sget-object v0, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/manateeworks/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 20
    iget-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->d:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :catch_0
    return-void
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityPluginBinding"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attached!@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BarcodeScannerPlugin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, Lio/flutter/embedding/engine/plugins/lifecycle/FlutterLifecycleAdapter;->getActivityLifecycle(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)Landroidx/lifecycle/Lifecycle;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flutterPluginBinding"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p1

    const-string v1, "brb_manateeworks_barcodescanner"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attached to engine "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BarcodeScannerPlugin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/c;->a(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/c;->b(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    const-string v0, "BarcodeScannerPlugin"

    const-string v1, "Detached!"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    const-string v0, "BarcodeScannerPlugin"

    const-string v1, "Config change coming!"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detached from engine "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BarcodeScannerPlugin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
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
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "initDecoder"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/manateeworks/BarcodeScannerPlugin;->initDecoder()V

    .line 4
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string v1, "startScanner"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/manateeworks/BarcodeScannerPlugin;->d()V

    .line 7
    sput-object p2, Lcom/manateeworks/BarcodeScannerPlugin;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 8
    sput-object p2, Lcom/manateeworks/ScannerActivity;->cbc:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string p1, "android.permission.CAMERA"

    .line 9
    invoke-virtual {p0, p1}, Lcom/manateeworks/BarcodeScannerPlugin;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 11
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/manateeworks/ScannerActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    iget-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "NO_CAMERA_PERMISSION"

    const-string v0, "Sem acesso \u00e0 c\u00e2mera."

    .line 13
    invoke-interface {p2, p1, v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :goto_0
    invoke-static {v3}, Lcom/manateeworks/MWOverlay;->setPaused(Z)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "setLevel"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "level"

    .line 16
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/manateeworks/BarcodeScanner;->MWBsetLevel(I)I

    .line 17
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    const-string v1, "setMinLength"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "codeMask"

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "minLength"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/manateeworks/BarcodeScanner;->MWBsetMinLength(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "setDirection"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "direction"

    .line 21
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/manateeworks/BarcodeScanner;->MWBsetDirection(I)I

    .line 22
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    const-string v1, "registerCode"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "userName"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "key"

    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/manateeworks/BarcodeScanner;->MWBregisterCode(ILjava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    const-string v1, "setInterfaceOrientation"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "interfaceOrientation"

    .line 27
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Portrait"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x1

    .line 29
    sput p1, Lcom/manateeworks/ScannerActivity;->param_Orientation:I

    goto :goto_1

    :cond_7
    const-string v0, "LandscapeLeft"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    sput v3, Lcom/manateeworks/ScannerActivity;->param_Orientation:I

    goto :goto_1

    :cond_8
    const-string v0, "LandscapeRight"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x8

    .line 33
    sput p1, Lcom/manateeworks/ScannerActivity;->param_Orientation:I

    goto :goto_1

    :cond_9
    const-string v0, "All"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, -0x1

    .line 35
    sput p1, Lcom/manateeworks/ScannerActivity;->param_Orientation:I

    .line 36
    :cond_a
    :goto_1
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    const-string v1, "enableHiRes"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 38
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/manateeworks/ScannerActivity;->param_EnableHiRes:Z

    .line 39
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    const-string v1, "enableZoom"

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 41
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/manateeworks/ScannerActivity;->param_EnableZoom:Z

    .line 42
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 43
    :cond_d
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_2
    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    sput-boolean p1, Lcom/manateeworks/ScannerActivity;->a:Z

    .line 2
    invoke-direct {p0}, Lcom/manateeworks/BarcodeScannerPlugin;->e()V

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityPluginBinding"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reattached! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BarcodeScannerPlugin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->f:Landroid/app/Activity;

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/c;->d(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/c;->e(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/c;->f(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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

    .line 1
    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    new-instance p3, Lcom/manateeworks/BarcodeScannerPlugin$a;

    invoke-direct {p3, p0, p1}, Lcom/manateeworks/BarcodeScannerPlugin$a;-><init>(Lcom/manateeworks/BarcodeScannerPlugin;Landroid/view/SurfaceHolder;)V

    const-wide/16 v0, 0x1

    invoke-virtual {p2, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

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
    iput-boolean p1, p0, Lcom/manateeworks/BarcodeScannerPlugin;->c:Z

    return-void
.end method
