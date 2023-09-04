.class public Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;
.super Ljava/lang/Object;
.source "UploadHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/server/api/CafApi;

    invoke-interface {p0}, Lcom/combateafraude/documentdetector/controller/server/api/CafApi;->getUploadLinks()Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x3e8

    .line 4
    invoke-static {p1, v1, v1}, Lcom/combateafraude/documentdetector/controller/utils/Utils;->decodeOptimizedBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUpload;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUpload;->getBody()Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getUploadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;->uploadImage(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUpload;

    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUpload;->getBody()Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method private static b(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;

    invoke-interface {p0, p1, p2}, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;->getUploadLinks(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    .line 5
    sget-object v2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->GOT_IMAGE_UPLOAD_LINKS:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v3, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getUploadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getGetUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v3, v4, v5, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v2, v3}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    const/4 p1, 0x0

    .line 6
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x3e8

    .line 7
    invoke-static {p3, v2, v2}, Lcom/combateafraude/documentdetector/controller/utils/Utils;->decodeOptimizedBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, p4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 9
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    .line 10
    array-length v3, p4

    div-int/lit16 v3, v3, 0x400

    int-to-long v0, v3

    .line 11
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/commons/imaging/Imaging;->getMetadata(Ljava/io/File;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v2

    .line 14
    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->getExif()Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 18
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 19
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;

    invoke-direct {v3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;-><init>()V

    .line 21
    invoke-virtual {v3, p4, p2, v2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossless([BLjava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    .line 22
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    .line 23
    :cond_2
    invoke-static {p4, p1}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 25
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 26
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 27
    invoke-virtual {p5}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object p4

    check-cast p4, Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    invoke-virtual {p5}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getUploadUrl()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5, p1}, Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;->uploadImage(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sub-long/2addr p4, p2

    .line 29
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->UPLOAD_IMAGE:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance p2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/UploadImageEvent;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/UploadImageEvent;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 31
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_3
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 34
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    const-class p2, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    .line 35
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_4
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method private static synthetic c(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;

    invoke-interface {p0, p1, p2}, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;->getUploadLinks(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 5
    sget-object v2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->GOT_IMAGE_UPLOAD_LINKS:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v3, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getUploadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getGetUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v3, v4, v5, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v2, v3}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {v2, p3}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p3

    .line 8
    invoke-virtual {p4}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object p4

    check-cast p4, Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getUploadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2, p3}, Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;->uploadImage(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p3

    invoke-interface {p3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p3

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 10
    invoke-virtual {p3}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->UPLOAD_IMAGE:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance p2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/UploadImageEvent;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/UploadImageEvent;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 12
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;

    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;->getGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method private static synthetic d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->b(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->a(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->c(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static upload(Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/ProxySettings;)Ljava/lang/String;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/combateafraude/documentdetector/controller/server/Server<",
            "Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/combateafraude/documentdetector/input/ProxySettings;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/combateafraude/documentdetector/controller/server/Server;

    const-class v1, Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;

    const-string v2, "https://www.google.com/"

    const/4 v6, 0x0

    move-object v0, v7

    move v3, p1

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/combateafraude/documentdetector/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/input/ProxySettings;Z)V

    .line 2
    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance p2, Lcom/combateafraude/documentdetector/controller/server/utils/d;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/server/utils/d;-><init>(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/Server;)V

    invoke-direct {p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static uploadCompressed(Ljava/lang/String;IILandroid/content/Context;Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/ProxySettings;)Ljava/lang/String;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/Context;",
            "Lcom/combateafraude/documentdetector/controller/server/Server<",
            "Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/combateafraude/documentdetector/input/ProxySettings;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lretrofit2/HttpException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/combateafraude/documentdetector/controller/server/Server;

    const-class v1, Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;

    const-string v2, "https://www.google.com/"

    const/4 v6, 0x0

    move-object v0, v7

    move v3, p2

    move-object v4, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/combateafraude/documentdetector/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/input/ProxySettings;Z)V

    .line 2
    new-instance p2, Ljava/util/concurrent/FutureTask;

    new-instance p3, Lcom/combateafraude/documentdetector/controller/server/utils/b;

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p0

    move v5, p1

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/combateafraude/documentdetector/controller/server/utils/b;-><init>(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)V

    invoke-direct {p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 4
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static uploadMultiple(Ljava/util/List;IILandroid/content/Context;Lcom/combateafraude/documentdetector/input/ProxySettings;)[Ljava/lang/String;
    .locals 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/content/Context;",
            "Lcom/combateafraude/documentdetector/input/ProxySettings;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/combateafraude/documentdetector/controller/server/Server;

    const-class v1, Lcom/combateafraude/documentdetector/controller/server/api/CafApi;

    const-string v2, "https://api.combateafraude.com"

    const/4 v6, 0x1

    move-object v0, v7

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/combateafraude/documentdetector/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/input/ProxySettings;Z)V

    .line 2
    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/Server;

    const-class v9, Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;

    const-string v10, "https://www.google.com/"

    const/4 v14, 0x1

    move-object v8, v0

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v14}, Lcom/combateafraude/documentdetector/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/input/ProxySettings;Z)V

    .line 3
    sget-object v1, Lcom/combateafraude/documentdetector/controller/server/utils/a;->a:Lcom/combateafraude/documentdetector/controller/server/utils/a;

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    new-instance v8, Ljava/util/concurrent/FutureTask;

    new-instance v9, Lcom/combateafraude/documentdetector/controller/server/utils/c;

    move/from16 v10, p1

    invoke-direct {v9, v7, v6, v10, v0}, Lcom/combateafraude/documentdetector/controller/server/utils/c;-><init>(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)V

    invoke-direct {v8, v9}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 8
    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 10
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method
