.class Lnet/nfet/flutter/printing/PrintingJob$c;
.super Ljava/lang/Object;
.source "PrintingJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/nfet/flutter/printing/PrintingJob;->i([B[ILjava/lang/Double;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:[I

.field final synthetic c:Ljava/lang/Double;

.field final synthetic d:Lnet/nfet/flutter/printing/PrintingJob;


# direct methods
.method constructor <init>(Lnet/nfet/flutter/printing/PrintingJob;[B[ILjava/lang/Double;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$data",
            "val$pages",
            "val$scale"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->d:Lnet/nfet/flutter/printing/PrintingJob;

    iput-object p2, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->a:[B

    iput-object p3, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->b:[I

    iput-object p4, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->c:Ljava/lang/Double;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    :try_start_0
    const-string v0, "printing"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    iget-object v3, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->a:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 7
    new-instance v4, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v4, v3}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PDF"

    const-string v3, "Unable to delete temporary file"

    .line 9
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->b:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    .line 11
    iget-object v5, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->b:[I

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    aget v5, v5, v3

    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->c:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    .line 13
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v7

    int-to-double v7, v7

    iget-object v9, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->c:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v7

    mul-int/lit8 v8, v6, 0x4

    .line 14
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 15
    iget-object v10, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->c:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->floatValue()F

    move-result v10

    iget-object v11, p0, Lnet/nfet/flutter/printing/PrintingJob$c;->c:Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->floatValue()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 16
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x2

    .line 17
    invoke-virtual {v5, v10, v1, v9, v11}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    .line 18
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    mul-int v8, v8, v7

    .line 19
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 20
    invoke-virtual {v10, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 21
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lnet/nfet/flutter/printing/PrintingJob$c$a;

    invoke-direct {v9, p0, v5, v6, v7}, Lnet/nfet/flutter/printing/PrintingJob$c$a;-><init>(Lnet/nfet/flutter/printing/PrintingJob$c;Ljava/nio/ByteBuffer;II)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfRenderer;->close()V

    .line 24
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    :goto_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lnet/nfet/flutter/printing/PrintingJob$c$b;

    invoke-direct {v1, p0}, Lnet/nfet/flutter/printing/PrintingJob$c$b;-><init>(Lnet/nfet/flutter/printing/PrintingJob$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
