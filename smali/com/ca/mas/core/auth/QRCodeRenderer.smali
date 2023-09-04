.class public Lcom/ca/mas/core/auth/QRCodeRenderer;
.super Lcom/ca/mas/core/auth/PollingRenderer;
.source "QRCodeRenderer.java"


# static fields
.field public static final QRCODE_ERROR:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/auth/PollingRenderer;-><init>()V

    return-void
.end method

.method private a(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 3
    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_2

    mul-int v3, v2, v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    add-int v5, v3, v4

    .line 4
    invoke-virtual {p1, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/high16 v8, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v8, -0x1

    :goto_2
    aput v8, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v6

    .line 6
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method


# virtual methods
.method protected getQRCodeHeight()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method protected getQRCodeWidth()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method protected onError(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public render()Landroid/view/View;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 2
    new-instance v1, Lcom/ca/mas/core/auth/QRCode;

    iget-object v2, p0, Lcom/ca/mas/core/auth/AuthRenderer;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ca/mas/core/auth/QRCode;-><init>(Landroid/content/Context;)V

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/ca/mas/core/auth/AuthRenderer;->provider:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v2}, Lcom/ca/mas/core/service/Provider;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {p0}, Lcom/ca/mas/core/auth/QRCodeRenderer;->getQRCodeWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/ca/mas/core/auth/QRCodeRenderer;->getQRCodeHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/ca/mas/core/auth/QRCodeRenderer;->a(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v0, p0, Lcom/ca/mas/core/auth/AuthRenderer;->provider:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/16 v1, 0x64

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/ca/mas/core/auth/QRCodeRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected startPollingOnStartup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
