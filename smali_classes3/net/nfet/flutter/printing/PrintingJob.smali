.class public Lnet/nfet/flutter/printing/PrintingJob;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintingJob.java"


# static fields
.field private static a:Landroid/print/PrintManager;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lnet/nfet/flutter/printing/PrintingHandler;

.field private d:Landroid/print/PrintJob;

.field private e:[B

.field private f:Ljava/lang/String;

.field private g:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lnet/nfet/flutter/printing/PrintingJob;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lnet/nfet/flutter/printing/PrintingHandler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "printing",
            "index"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lnet/nfet/flutter/printing/PrintingJob;->c:Lnet/nfet/flutter/printing/PrintingHandler;

    .line 4
    iput p3, p0, Lnet/nfet/flutter/printing/PrintingJob;->h:I

    const-string p2, "print"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    sput-object p1, Lnet/nfet/flutter/printing/PrintingJob;->a:Landroid/print/PrintManager;

    return-void
.end method

.method static synthetic a(Lnet/nfet/flutter/printing/PrintingJob;)Landroid/print/PrintJob;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/nfet/flutter/printing/PrintingJob;->d:Landroid/print/PrintJob;

    return-object p0
.end method

.method static synthetic b(Lnet/nfet/flutter/printing/PrintingJob;Landroid/print/PrintJob;)Landroid/print/PrintJob;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob;->d:Landroid/print/PrintJob;

    return-object p1
.end method

.method static synthetic c(Lnet/nfet/flutter/printing/PrintingJob;)Lnet/nfet/flutter/printing/PrintingHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/nfet/flutter/printing/PrintingJob;->c:Lnet/nfet/flutter/printing/PrintingHandler;

    return-object p0
.end method

.method static synthetic d(Lnet/nfet/flutter/printing/PrintingJob;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/nfet/flutter/printing/PrintingJob;->b:Landroid/content/Context;

    return-object p0
.end method

.method static h()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "directPrint"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "dynamicLayout"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "canPrint"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "canConvertHtml"

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "canShare"

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "canRaster"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static k(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "data",
            "name"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "share"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to create cache directory"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".flutter.printing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 12
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "application/pdf"

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 15
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 17
    invoke-static {p2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob;->g:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob;->d:Landroid/print/PrintJob;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/print/PrintJob;->cancel()V

    .line 3
    :cond_1
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob;->c:Lnet/nfet/flutter/printing/PrintingHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lnet/nfet/flutter/printing/PrintingHandler;->a(Lnet/nfet/flutter/printing/PrintingJob;ZLjava/lang/String;)V

    return-void
.end method

.method f(Ljava/lang/String;Landroid/print/PrintAttributes$MediaSize;Landroid/print/PrintAttributes$Margins;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "data",
            "size",
            "margins",
            "baseUrl"
        }
    .end annotation

    .line 1
    new-instance v6, Landroid/webkit/WebView;

    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v3, "text/HTML"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p4

    move-object v2, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lnet/nfet/flutter/printing/PrintingJob$b;

    invoke-direct {p1, p0, p2, p3, v6}, Lnet/nfet/flutter/printing/PrintingJob$b;-><init>(Lnet/nfet/flutter/printing/PrintingJob;Landroid/print/PrintAttributes$MediaSize;Landroid/print/PrintAttributes$Margins;Landroid/webkit/WebView;)V

    invoke-virtual {v6, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method g(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "width",
            "height",
            "marginLeft",
            "marginTop",
            "marginRight",
            "marginBottom"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob;->f:Ljava/lang/String;

    .line 2
    sget-object p2, Lnet/nfet/flutter/printing/PrintingJob;->a:Landroid/print/PrintManager;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p0, p3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    move-result-object p1

    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob;->d:Landroid/print/PrintJob;

    return-void
.end method

.method i([B[ILjava/lang/Double;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "data",
            "pages",
            "scale"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const-string p1, "PDF"

    const-string p2, "PDF Raster available since Android 5.0 Lollipop (API 21)"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob;->c:Lnet/nfet/flutter/printing/PrintingHandler;

    invoke-virtual {p1, p0}, Lnet/nfet/flutter/printing/PrintingHandler;->e(Lnet/nfet/flutter/printing/PrintingJob;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/nfet/flutter/printing/PrintingJob$c;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/nfet/flutter/printing/PrintingJob$c;-><init>(Lnet/nfet/flutter/printing/PrintingJob;[B[ILjava/lang/Double;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method j([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob;->e:[B

    .line 2
    new-instance p1, Landroid/print/PrintDocumentInfo$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingJob;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".pdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob;->g:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/nfet/flutter/printing/PrintingJob$a;

    invoke-direct {v1, p0}, Lnet/nfet/flutter/printing/PrintingJob$a;-><init>(Lnet/nfet/flutter/printing/PrintingJob;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldAttributes",
            "newAttributes",
            "cancellationSignal",
            "callback",
            "extras"
        }
    .end annotation

    move-object/from16 v13, p0

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    return-void

    :cond_0
    move-object/from16 v0, p4

    .line 3
    iput-object v0, v13, Lnet/nfet/flutter/printing/PrintingJob;->g:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    .line 6
    iget-object v2, v13, Lnet/nfet/flutter/printing/PrintingJob;->c:Lnet/nfet/flutter/printing/PrintingHandler;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    mul-double v3, v3, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result v0

    int-to-double v9, v0

    mul-double v9, v9, v5

    div-double/2addr v9, v7

    invoke-virtual {v1}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result v0

    int-to-double v11, v0

    mul-double v11, v11, v5

    div-double/2addr v11, v7

    .line 8
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result v0

    int-to-double v14, v0

    mul-double v14, v14, v5

    div-double/2addr v14, v7

    invoke-virtual {v1}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result v0

    move-wide/from16 p1, v14

    int-to-double v13, v0

    mul-double v13, v13, v5

    div-double/2addr v13, v7

    .line 9
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result v0

    int-to-double v0, v0

    mul-double v0, v0, v5

    div-double v15, v0, v7

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v9

    move-wide v5, v11

    move-wide/from16 v7, p1

    move-wide v9, v13

    move-wide v11, v15

    .line 10
    invoke-virtual/range {v0 .. v12}, Lnet/nfet/flutter/printing/PrintingHandler;->d(Lnet/nfet/flutter/printing/PrintingJob;Ljava/lang/Double;DDDDD)V

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageRanges",
            "parcelFileDescriptor",
            "cancellationSignal",
            "writeResultCallback"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :try_start_0
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob;->e:[B

    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/print/PageRange;

    .line 3
    sget-object p2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object p2, p1, v0

    invoke-virtual {p4, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object p3, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p3, p1

    move-object p1, p2

    .line 5
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_0

    .line 6
    :try_start_4
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz p3, :cond_1

    .line 8
    :try_start_5
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :cond_1
    :goto_3
    throw p1
.end method
