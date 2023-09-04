.class public Lcaf/io/f0;
.super Ljava/lang/Object;
.source "UploadHelper.java"


# direct methods
.method private static a(Lcaf/io/k;Lcaf/io/Z;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    invoke-virtual {p1}, Lcaf/io/Z;->a()Lcaf/io/O;

    move-result-object p0

    check-cast p0, Lcaf/io/y$a;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p0, p2, p3, p1}, Lcaf/io/y$a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v3

    .line 10
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 11
    sget-object p0, Lcaf/io/t;->w:Lcaf/io/t;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/UploadImageEvent;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/UploadImageEvent;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 12
    sget-object p1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {p1, p0, v0}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    return-object p3

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public static a(Lcaf/io/k;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0    # Lcaf/io/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit2/HttpException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v8, Lcaf/io/Z;

    new-instance v2, Lcaf/io/y;

    invoke-direct {v2}, Lcaf/io/y;-><init>()V

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->q()I

    move-result v3

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->o()Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

    move-result-object v4

    const-class v1, Lcaf/io/y$a;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcaf/io/Z;-><init>(Ljava/lang/Class;Lcaf/io/d;ILcom/combateafraude/passivefaceliveness/input/ProxySettings;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Z)V

    .line 2
    new-instance p2, Ljava/util/concurrent/FutureTask;

    new-instance p3, Lcaf/io/f1;

    invoke-direct {p3, p0, v8, p4, p1}, Lcaf/io/f1;-><init>(Lcaf/io/k;Lcaf/io/Z;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 4
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcaf/io/k;Lcaf/io/Z;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcaf/io/f0;->a(Lcaf/io/k;Lcaf/io/Z;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
