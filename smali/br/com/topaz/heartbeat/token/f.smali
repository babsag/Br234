.class public Lbr/com/topaz/heartbeat/token/f;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/token/f$a;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/heartbeat/token/f$a;

.field private c:Lbr/com/topaz/l/l;

.field private d:Lbr/com/topaz/l/f0;

.field private e:Lbr/com/topaz/l/e0;

.field private f:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

.field private g:Lbr/com/topaz/r0/b;

.field private h:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private i:Lbr/com/topaz/u0/r;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/f;->c:Lbr/com/topaz/l/l;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/token/f;->d:Lbr/com/topaz/l/f0;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/token/f;->e:Lbr/com/topaz/l/e0;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/token/f;->f:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/token/f;->g:Lbr/com/topaz/r0/b;

    iput-object p7, p0, Lbr/com/topaz/heartbeat/token/f;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p8, p0, Lbr/com/topaz/heartbeat/token/f;->i:Lbr/com/topaz/u0/r;

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/heartbeat/token/f$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/f;->b:Lbr/com/topaz/heartbeat/token/f$a;

    return-void
.end method

.method public run()V
    .locals 13

    const/16 v0, 0x65

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/f;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->T()Lbr/com/topaz/r0/d;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/r0/d;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/f;->d:Lbr/com/topaz/l/f0;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/f;->f:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iget-object v4, p0, Lbr/com/topaz/heartbeat/token/f;->c:Lbr/com/topaz/l/l;

    invoke-virtual {v4}, Lbr/com/topaz/l/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lbr/com/topaz/l/f0;->f(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/f;->f:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Lbr/com/topaz/r0/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbr/com/topaz/r0/c;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/f;->i:Lbr/com/topaz/u0/r;

    invoke-direct {v2, v3}, Lbr/com/topaz/r0/c;-><init>(Lbr/com/topaz/u0/r;)V

    invoke-virtual {v2, v1}, Lbr/com/topaz/r0/c;->a(Ljava/lang/String;)Lbr/com/topaz/r0/c;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/f;->e:Lbr/com/topaz/l/e0;

    invoke-interface {v2}, Lbr/com/topaz/l/e0;->w()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    div-long v8, v4, v2

    long-to-int v2, v8

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->a()I

    move-result v3

    rem-int/2addr v2, v3

    iget-object v6, p0, Lbr/com/topaz/heartbeat/token/f;->g:Lbr/com/topaz/r0/b;

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->c()I

    move-result v10

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->a()I

    move-result v11

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->d()Z

    move-result v12

    invoke-virtual/range {v6 .. v12}, Lbr/com/topaz/r0/b;->a(Ljava/lang/String;JIIZ)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbr/com/topaz/heartbeat/token/f;->b:Lbr/com/topaz/heartbeat/token/f$a;

    new-instance v5, Lbr/com/topaz/heartbeat/token/TokenResponse;

    invoke-virtual {v1}, Lbr/com/topaz/r0/c;->a()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-direct {v5, v3, v1}, Lbr/com/topaz/heartbeat/token/TokenResponse;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Lbr/com/topaz/heartbeat/token/f$a;->onSuccess(Lbr/com/topaz/heartbeat/token/TokenResponse;)V

    goto :goto_4

    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/f;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "067"

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/f;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "048"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/f;->b:Lbr/com/topaz/heartbeat/token/f$a;

    const/16 v1, 0x67

    :goto_0
    invoke-interface {v0, v1}, Lbr/com/topaz/heartbeat/token/f$a;->onFailure(I)V

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/f;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "046"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/f;->b:Lbr/com/topaz/heartbeat/token/f$a;

    const/16 v1, 0x66

    goto :goto_0

    :catch_4
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/f;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "049"

    :goto_2
    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/f;->b:Lbr/com/topaz/heartbeat/token/f$a;

    invoke-interface {v1, v0}, Lbr/com/topaz/heartbeat/token/f$a;->onFailure(I)V

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    :goto_3
    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/f;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "037"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/f;->b:Lbr/com/topaz/heartbeat/token/f$a;

    const/16 v1, 0x64

    goto :goto_0

    :cond_1
    :goto_4
    return-void
.end method
