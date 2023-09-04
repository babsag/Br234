.class public Lbr/com/topaz/heartbeat/token/c;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/token/c$b;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/heartbeat/token/c$b;

.field private c:Lbr/com/topaz/l/l;

.field private d:Lbr/com/topaz/f0/c;

.field private e:Lbr/com/topaz/l/f0;

.field private f:Lbr/com/topaz/l/e0;

.field private g:Lbr/com/topaz/r0/b;

.field private h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

.field private i:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private j:Lbr/com/topaz/u0/r;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/token/c;->d:Lbr/com/topaz/f0/c;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/token/c;->e:Lbr/com/topaz/l/f0;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/token/c;->f:Lbr/com/topaz/l/e0;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/token/c;->g:Lbr/com/topaz/r0/b;

    iput-object p7, p0, Lbr/com/topaz/heartbeat/token/c;->h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iput-object p8, p0, Lbr/com/topaz/heartbeat/token/c;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p9, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/l/l;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    return-object p0
.end method

.method static synthetic b(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/c;->h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    return-object p0
.end method

.method static synthetic c(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/l/f0;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/c;->e:Lbr/com/topaz/l/f0;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/heartbeat/token/c$b;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/c;->b:Lbr/com/topaz/heartbeat/token/c$b;

    return-object p0
.end method

.method static synthetic e(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/l/e0;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/c;->f:Lbr/com/topaz/l/e0;

    return-object p0
.end method


# virtual methods
.method public a(Lbr/com/topaz/heartbeat/token/c$b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/c;->b:Lbr/com/topaz/heartbeat/token/c$b;

    return-void
.end method

.method public run()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/c;->e:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->T()Lbr/com/topaz/r0/d;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/c;->e:Lbr/com/topaz/l/f0;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/c;->h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v3}, Lbr/com/topaz/l/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbr/com/topaz/l/f0;->f(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/c;->h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbr/com/topaz/r0/c;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    invoke-direct {v2, v3}, Lbr/com/topaz/r0/c;-><init>(Lbr/com/topaz/u0/r;)V

    invoke-virtual {v2, v1}, Lbr/com/topaz/r0/c;->a(Ljava/lang/String;)Lbr/com/topaz/r0/c;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/c;->f:Lbr/com/topaz/l/e0;

    invoke-interface {v2}, Lbr/com/topaz/l/e0;->w()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    div-long v8, v4, v2

    iget-object v6, p0, Lbr/com/topaz/heartbeat/token/c;->g:Lbr/com/topaz/r0/b;

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->c()I

    move-result v10

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->a()I

    move-result v11

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->d()Z

    move-result v12

    invoke-virtual/range {v6 .. v12}, Lbr/com/topaz/r0/b;->a(Ljava/lang/String;JIIZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    const-string v4, "6"

    iget-object v5, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    const/16 v6, 0x7e

    invoke-interface {v5, v6}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    iget-object v4, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    const/16 v5, 0x7f

    invoke-interface {v4, v5}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    iget-object v4, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    const/16 v5, 0x80

    invoke-interface {v4, v5}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    const/16 v4, 0x81

    invoke-interface {v3, v4}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    const/16 v4, 0x82

    invoke-interface {v3, v4}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/c;->c:Lbr/com/topaz/l/l;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    const/16 v4, 0x83

    invoke-interface {v3, v4}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/token/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/c;->h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Content-Type"

    iget-object v4, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    const/16 v5, 0x84

    invoke-interface {v4, v5}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    const/16 v4, 0x85

    invoke-interface {v3, v4}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->j:Lbr/com/topaz/u0/r;

    const/16 v4, 0x86

    invoke-interface {v3, v4}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/c;->d:Lbr/com/topaz/f0/c;

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lbr/com/topaz/heartbeat/token/c$a;

    invoke-direct {v4, p0}, Lbr/com/topaz/heartbeat/token/c$a;-><init>(Lbr/com/topaz/heartbeat/token/c;)V

    invoke-virtual {v3, v0, v2, v1, v4}, Lbr/com/topaz/f0/c;->b(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lbr/com/topaz/f0/c$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/c;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "067"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/c;->b:Lbr/com/topaz/heartbeat/token/c$b;

    const/16 v1, 0x65

    :goto_0
    invoke-interface {v0, v1}, Lbr/com/topaz/heartbeat/token/c$b;->onFailure(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    :goto_1
    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/c;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "044"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/c;->b:Lbr/com/topaz/heartbeat/token/c$b;

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    :goto_2
    return-void
.end method
