.class public Lbr/com/topaz/y/f;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private d:Lbr/com/topaz/f0/g;

.field private e:Lbr/com/topaz/m0/d;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/f0/g;Lbr/com/topaz/m0/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/y/f;->b:Lbr/com/topaz/l/f0;

    iput-object p4, p0, Lbr/com/topaz/y/f;->d:Lbr/com/topaz/f0/g;

    iput-object p3, p0, Lbr/com/topaz/y/f;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p5, p0, Lbr/com/topaz/y/f;->e:Lbr/com/topaz/m0/d;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/y/f;)Lbr/com/topaz/l/f0;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/y/f;->b:Lbr/com/topaz/l/f0;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/y/f;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->B()Lbr/com/topaz/y/d;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/y/f;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->B()Lbr/com/topaz/y/d;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/y/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lbr/com/topaz/y/d;->f()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lbr/com/topaz/y/d;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/y/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbr/com/topaz/y/f;->e:Lbr/com/topaz/m0/d;

    invoke-interface {v0}, Lbr/com/topaz/m0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/y/f;->d:Lbr/com/topaz/f0/g;

    new-instance v2, Lbr/com/topaz/y/f$a;

    invoke-direct {v2, p0}, Lbr/com/topaz/y/f$a;-><init>(Lbr/com/topaz/y/f;)V

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/f0/g;->e(Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lbr/com/topaz/y/f;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "062"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
