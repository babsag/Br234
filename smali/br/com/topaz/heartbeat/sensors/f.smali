.class public Lbr/com/topaz/heartbeat/sensors/f;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/heartbeat/sensors/a;

.field private d:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/sensors/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/sensors/f;->b:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/sensors/f;->c:Lbr/com/topaz/heartbeat/sensors/a;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sensors/f;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method private a(Lbr/com/topaz/heartbeat/sensors/g$a;)Z
    .locals 1

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/sensors/g$a;->a()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/sensors/g$a;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/sensors/g$a;->c()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/sensors/f;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->P()Lbr/com/topaz/heartbeat/sensors/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/sensors/g;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/sensors/g;->c()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lbr/com/topaz/heartbeat/sensors/f;->c:Lbr/com/topaz/heartbeat/sensors/a;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/sensors/a;->c()V

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/sensors/g;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/heartbeat/sensors/g$a;

    invoke-direct {p0, v2}, Lbr/com/topaz/heartbeat/sensors/f;->a(Lbr/com/topaz/heartbeat/sensors/g$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbr/com/topaz/heartbeat/sensors/f;->c:Lbr/com/topaz/heartbeat/sensors/a;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/sensors/g$a;->a()I

    move-result v4

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/sensors/g;->c()I

    move-result v5

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/sensors/g$a;->b()I

    move-result v6

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/sensors/g$a;->c()I

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Lbr/com/topaz/heartbeat/sensors/a;->a(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v1, p0, Lbr/com/topaz/heartbeat/sensors/f;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "030"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
