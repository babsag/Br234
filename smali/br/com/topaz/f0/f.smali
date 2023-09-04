.class public Lbr/com/topaz/f0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/g;


# instance fields
.field private a:Lbr/com/topaz/l/e0;

.field private b:Lbr/com/topaz/u0/n;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/f0/f;->a:Lbr/com/topaz/l/e0;

    new-instance p1, Lbr/com/topaz/u0/n;

    invoke-direct {p1}, Lbr/com/topaz/u0/n;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/f0/f;->b:Lbr/com/topaz/u0/n;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/f0/f;)Lbr/com/topaz/l/e0;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/f0/f;->a:Lbr/com/topaz/l/e0;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "etag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Lbr/com/topaz/f0/g$a;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbr/com/topaz/f0/f$e;

    invoke-direct {v1, p0, p1, p3, p2}, Lbr/com/topaz/f0/f$e;-><init>(Lbr/com/topaz/f0/f;Ljava/lang/String;Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/f0/f;Ljava/io/InputStream;)[B
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/f0/f;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
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

.method static synthetic b(Lbr/com/topaz/f0/f;)Lbr/com/topaz/u0/n;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/f0/f;->b:Lbr/com/topaz/u0/n;

    return-object p0
.end method

.method private f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V
    .locals 1

    invoke-direct {p0, p1}, Lbr/com/topaz/f0/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lbr/com/topaz/f0/f;->a(Ljava/lang/String;Lbr/com/topaz/f0/g$a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dlr.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/f0/f;->f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lbr/com/topaz/f0/g$b;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "urlsBLS.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/f0/f$c;

    invoke-direct {v0, p0, p2}, Lbr/com/topaz/f0/f$c;-><init>(Lbr/com/topaz/f0/f;Lbr/com/topaz/f0/g$b;)V

    invoke-direct {p0, p1, v0}, Lbr/com/topaz/f0/f;->f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lbr/com/topaz/f0/g$c;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "urlsWLS.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/f0/f$d;

    invoke-direct {v0, p0, p2}, Lbr/com/topaz/f0/f$d;-><init>(Lbr/com/topaz/f0/f;Lbr/com/topaz/f0/g$c;)V

    invoke-direct {p0, p1, v0}, Lbr/com/topaz/f0/f;->f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lbr/com/topaz/f0/g$d;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "senderBLS.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/f0/f$a;

    invoke-direct {v0, p0, p2}, Lbr/com/topaz/f0/f$a;-><init>(Lbr/com/topaz/f0/f;Lbr/com/topaz/f0/g$d;)V

    invoke-direct {p0, p1, v0}, Lbr/com/topaz/f0/f;->f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lbr/com/topaz/f0/g$e;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "senderWLS.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/f0/f$b;

    invoke-direct {v0, p0, p2}, Lbr/com/topaz/f0/f$b;-><init>(Lbr/com/topaz/f0/f;Lbr/com/topaz/f0/g$e;)V

    invoke-direct {p0, p1, v0}, Lbr/com/topaz/f0/f;->f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bgpList.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/f0/f;->f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "configuration.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/f0/f;->f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "apr.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/f0/f;->f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "nfl.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/f0/f;->f(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V

    return-void
.end method
