.class public Lbr/com/topaz/heartbeat/OFDOCR;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;
    }
.end annotation


# static fields
.field public static final OFDOCR_ERROR_ANALYSIS_TIMEOUT:I = -0x39

.field public static final OFDOCR_ERROR_DISABLED:I = -0x2e

.field public static final OFDOCR_ERROR_FB_FAILURE_CLASSIFY:I = -0x33

.field public static final OFDOCR_ERROR_FB_FAILURE_DOWNLOAD_MODEL:I = -0x32

.field public static final OFDOCR_ERROR_HEARTBEAT_NOT_INITIALIZED:I = -0x36

.field public static final OFDOCR_ERROR_INIT_FAILURE:I = -0x38

.field public static final OFDOCR_ERROR_INVALID_SIGNATURE:I = -0x35

.field public static final OFDOCR_ERROR_MAX_IMAGE_ANALYSIS:I = -0x34

.field public static final OFDOCR_ERROR_SEND_OCRDATA_FAILURE:I = -0x31

.field public static final OFDOCR_ERROR_TEXT_DETECTOR_FAILURE:I = -0x30

.field public static final STATUS_INSTRUCTION_DOC_ALIGNED:I = 0x6f

.field public static final STATUS_INSTRUCTION_DOC_UNALIGNED:I = 0x6e


# instance fields
.field private final clientCallback:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

.field private final lock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private processor:Lbr/com/topaz/heartbeat/ocr/Processor;

.field private final telemetryOCRPresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/OFDOCR;->lock:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/OFDOCR;->clientCallback:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lbr/com/topaz/heartbeat/OFDOCR;->parameters:Ljava/util/HashMap;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v2

    new-instance v3, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v3, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v4, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    new-instance v5, Lbr/com/topaz/q0/f;

    invoke-direct {v5}, Lbr/com/topaz/q0/f;-><init>()V

    new-instance v6, Lbr/com/topaz/m/e;

    new-instance v7, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v7}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-direct {v6, p1, v2, v7, v3}, Lbr/com/topaz/m/e;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-direct {v4, p1, v5, v6, v2}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;-><init>(Landroid/content/Context;Lbr/com/topaz/q0/f;Lbr/com/topaz/m/e;Lbr/com/topaz/l/f0;)V

    iput-object v4, p0, Lbr/com/topaz/heartbeat/OFDOCR;->telemetryOCRPresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    :try_start_0
    invoke-virtual {v4}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->d()V

    invoke-static {p1, v1, p2, v4, v0}, Lbr/com/topaz/z/f;->a(Landroid/content/Context;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbr/com/topaz/heartbeat/ocr/Processor;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/OFDOCR;->processor:Lbr/com/topaz/heartbeat/ocr/Processor;
    :try_end_0
    .catch Lbr/com/topaz/z/f$a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbr/com/topaz/z/f$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 p1, -0x38

    goto :goto_0

    :catch_1
    const/16 p1, -0x2e

    goto :goto_0

    :catch_2
    const/16 p1, -0x36

    :goto_0
    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/OFDOCR;->fail(I)V

    :goto_1
    return-void
.end method

.method private fail(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/OFDOCR;->clientCallback:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;->onFailure(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/OFDOCR;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/OCRFile;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/OFDOCR;->processor:Lbr/com/topaz/heartbeat/ocr/Processor;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/ocr/Processor;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, -0x31

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/OFDOCR;->fail(I)V

    :goto_0
    return-void
.end method

.method public checkImage(Landroid/graphics/Bitmap;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/OFDOCR;->processor:Lbr/com/topaz/heartbeat/ocr/Processor;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/ocr/Processor;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, -0x31

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/OFDOCR;->fail(I)V

    :goto_0
    return-void
.end method

.method public checkImage([BII)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/OFDOCR;->lock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/YuvImage;

    const/16 v5, 0x11

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    const/16 p1, 0x50

    invoke-virtual {v9, v1, p1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    invoke-static {p1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object p2, p0, Lbr/com/topaz/heartbeat/OFDOCR;->processor:Lbr/com/topaz/heartbeat/ocr/Processor;

    invoke-virtual {p2, p1}, Lbr/com/topaz/heartbeat/ocr/Processor;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, -0x31

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/OFDOCR;->fail(I)V

    :goto_0
    return-void
.end method

.method public getLastImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/OFDOCR;->processor:Lbr/com/topaz/heartbeat/ocr/Processor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/ocr/Processor;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public livePreviewStarted()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/OFDOCR;->telemetryOCRPresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->c()V

    return-void
.end method

.method public livePreviewStoped()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/OFDOCR;->telemetryOCRPresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->e()V

    return-void
.end method
