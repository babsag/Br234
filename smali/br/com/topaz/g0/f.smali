.class public Lbr/com/topaz/g0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/f0/g;

.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/m0/d;

.field private d:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/f0/g;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbr/com/topaz/g0/f;->c:Lbr/com/topaz/m0/d;

    iput-object p2, p0, Lbr/com/topaz/g0/f;->b:Lbr/com/topaz/l/f0;

    iput-object p1, p0, Lbr/com/topaz/g0/f;->a:Lbr/com/topaz/f0/g;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object p2, p0, Lbr/com/topaz/g0/f;->b:Lbr/com/topaz/l/f0;

    invoke-direct {p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/g0/f;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/g0/f;)Lbr/com/topaz/l/f0;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/g0/f;->b:Lbr/com/topaz/l/f0;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/g0/f;->a:Lbr/com/topaz/f0/g;

    new-instance v1, Lbr/com/topaz/g0/f$c;

    invoke-direct {v1, p0}, Lbr/com/topaz/g0/f$c;-><init>(Lbr/com/topaz/g0/f;)V

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/f0/g;->a(Ljava/lang/String;Lbr/com/topaz/f0/g$b;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/g0/f;->a:Lbr/com/topaz/f0/g;

    new-instance v1, Lbr/com/topaz/g0/f$d;

    invoke-direct {v1, p0}, Lbr/com/topaz/g0/f$d;-><init>(Lbr/com/topaz/g0/f;)V

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/f0/g;->a(Ljava/lang/String;Lbr/com/topaz/f0/g$c;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/g0/f;->a:Lbr/com/topaz/f0/g;

    new-instance v1, Lbr/com/topaz/g0/f$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/g0/f$a;-><init>(Lbr/com/topaz/g0/f;)V

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/f0/g;->a(Ljava/lang/String;Lbr/com/topaz/f0/g$d;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/g0/f;->a:Lbr/com/topaz/f0/g;

    new-instance v1, Lbr/com/topaz/g0/f$b;

    invoke-direct {v1, p0}, Lbr/com/topaz/g0/f$b;-><init>(Lbr/com/topaz/g0/f;)V

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/f0/g;->a(Ljava/lang/String;Lbr/com/topaz/f0/g$e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/g0/f;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->a()Lbr/com/topaz/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/c/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lbr/com/topaz/l/g;->a()Lbr/com/topaz/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->a()Lbr/com/topaz/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/c/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->a()Lbr/com/topaz/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbr/com/topaz/g0/f;->c:Lbr/com/topaz/m0/d;

    invoke-interface {v0}, Lbr/com/topaz/m0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lbr/com/topaz/g0/f;->c(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lbr/com/topaz/g0/f;->d(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lbr/com/topaz/g0/f;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lbr/com/topaz/g0/f;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    iget-object v1, p0, Lbr/com/topaz/g0/f;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "005"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
