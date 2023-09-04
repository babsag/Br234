.class public Lbr/com/topaz/f0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/f0/e$a;,
        Lbr/com/topaz/f0/e$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Lbr/com/topaz/q0/a;

.field private e:I


# direct methods
.method public constructor <init>(ILbr/com/topaz/q0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/16 p1, 0x2710

    :cond_0
    iput p1, p0, Lbr/com/topaz/f0/e;->e:I

    iput-object p2, p0, Lbr/com/topaz/f0/e;->d:Lbr/com/topaz/q0/a;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Lbr/com/topaz/f0/e$b;
    .locals 2

    new-instance v0, Lbr/com/topaz/f0/e$b;

    invoke-direct {v0}, Lbr/com/topaz/f0/e$b;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lbr/com/topaz/f0/e$b;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lbr/com/topaz/f0/e$b;->a:I

    invoke-direct {p0, v0}, Lbr/com/topaz/f0/e;->a(Lbr/com/topaz/f0/e$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/f0/e;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, v0, Lbr/com/topaz/f0/e$b;->b:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/f0/e;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, v0, Lbr/com/topaz/f0/e$b;->b:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    iget p1, v0, Lbr/com/topaz/f0/e$b;->a:I

    if-nez p1, :cond_1

    const/16 p1, -0x37

    iput p1, v0, Lbr/com/topaz/f0/e$b;->a:I

    :cond_1
    :goto_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    iget v0, p0, Lbr/com/topaz/f0/e;->e:I

    invoke-virtual {p2, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget v0, p0, Lbr/com/topaz/f0/e;->e:I

    invoke-virtual {p2, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/f0/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lbr/com/topaz/f0/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz p3, :cond_2

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    int-to-long v1, p3

    iput-wide v1, p0, Lbr/com/topaz/f0/e;->a:J

    :cond_2
    const-string p3, "POST"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    array-length p1, p4

    int-to-long v1, p1

    iput-wide v1, p0, Lbr/com/topaz/f0/e;->b:J

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move-object v0, p2

    goto :goto_3

    :catch_0
    nop

    goto :goto_2

    :catch_1
    move-object p2, v0

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    :goto_3
    return-object v0
.end method

.method private a(Lbr/com/topaz/f0/e$b;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result p1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    iget v0, p0, Lbr/com/topaz/f0/e;->e:I

    invoke-virtual {p2, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget v0, p0, Lbr/com/topaz/f0/e;->e:I

    invoke-virtual {p2, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/HashMap;[BLbr/com/topaz/f0/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lbr/com/topaz/f0/e$a;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2, p3, p4}, Lbr/com/topaz/f0/e;->a(Ljava/util/List;Ljava/util/HashMap;[BLbr/com/topaz/f0/e$a;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/HashMap;[BLbr/com/topaz/f0/e$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lbr/com/topaz/f0/e$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbr/com/topaz/f0/e;->c:J

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "POST"

    invoke-direct {p0, v2, v1, p2, p3}, Lbr/com/topaz/f0/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/topaz/f0/e;->a(Ljava/net/HttpURLConnection;)Lbr/com/topaz/f0/e$b;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v2}, Lbr/com/topaz/f0/e;->a(Lbr/com/topaz/f0/e$b;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    :cond_1
    iget-object p1, p0, Lbr/com/topaz/f0/e;->d:Lbr/com/topaz/q0/a;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-wide p2, p0, Lbr/com/topaz/f0/e;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "rtdbs"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p2, p0, Lbr/com/topaz/f0/e;->a:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "rtdhs"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v3, p0, Lbr/com/topaz/f0/e;->c:J

    sub-long/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "rtdrt"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lbr/com/topaz/f0/e;->d:Lbr/com/topaz/q0/a;

    invoke-interface {p2, p1}, Lbr/com/topaz/q0/a;->a(Ljava/util/HashMap;)V

    :cond_2
    invoke-direct {p0, v2}, Lbr/com/topaz/f0/e;->a(Lbr/com/topaz/f0/e$b;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p4, v2}, Lbr/com/topaz/f0/e$a;->a(Lbr/com/topaz/f0/e$b;)V

    goto :goto_0

    :cond_3
    invoke-interface {p4, v2}, Lbr/com/topaz/f0/e$a;->b(Lbr/com/topaz/f0/e$b;)V

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void
.end method
