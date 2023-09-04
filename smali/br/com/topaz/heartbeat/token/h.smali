.class public Lbr/com/topaz/heartbeat/token/h;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/token/h$b;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/heartbeat/token/h$b;

.field private c:Lbr/com/topaz/l/f0;

.field private d:Lbr/com/topaz/l/e0;

.field private e:Lbr/com/topaz/f0/c;

.field private f:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/f0/c;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/h;->c:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/token/h;->d:Lbr/com/topaz/l/e0;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/token/h;->e:Lbr/com/topaz/f0/c;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/token/h;->f:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/token/h;)Lbr/com/topaz/l/e0;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/h;->d:Lbr/com/topaz/l/e0;

    return-object p0
.end method

.method static synthetic b(Lbr/com/topaz/heartbeat/token/h;)Lbr/com/topaz/heartbeat/utils/OFDException;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/h;->f:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-object p0
.end method

.method static synthetic c(Lbr/com/topaz/heartbeat/token/h;)Lbr/com/topaz/heartbeat/token/h$b;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/h;->b:Lbr/com/topaz/heartbeat/token/h$b;

    return-object p0
.end method


# virtual methods
.method public a(Lbr/com/topaz/heartbeat/token/h$b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/h;->b:Lbr/com/topaz/heartbeat/token/h$b;

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/h;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->T()Lbr/com/topaz/r0/d;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/h;->e:Lbr/com/topaz/f0/c;

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lbr/com/topaz/heartbeat/token/h$a;

    invoke-direct {v4, p0, v1, v2}, Lbr/com/topaz/heartbeat/token/h$a;-><init>(Lbr/com/topaz/heartbeat/token/h;J)V

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, v1, v4}, Lbr/com/topaz/f0/c;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lbr/com/topaz/f0/c$a;)V
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
    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/h;->f:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "037"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method
