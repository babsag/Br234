.class public Lbr/com/topaz/heartbeat/token/b;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/token/b$c;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/heartbeat/token/b$c;

.field private c:Lbr/com/topaz/l/f0;

.field private d:Lbr/com/topaz/l/l;

.field private e:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

.field private f:Lbr/com/topaz/heartbeat/token/e;

.field private g:Lbr/com/topaz/heartbeat/token/h;

.field private h:Lbr/com/topaz/heartbeat/token/c;

.field private i:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private j:Lbr/com/topaz/u0/r;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/token/e;Lbr/com/topaz/heartbeat/token/h;Lbr/com/topaz/heartbeat/token/c;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/b;->d:Lbr/com/topaz/l/l;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/token/b;->c:Lbr/com/topaz/l/f0;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/token/b;->e:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/token/b;->f:Lbr/com/topaz/heartbeat/token/e;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/token/b;->g:Lbr/com/topaz/heartbeat/token/h;

    iput-object p7, p0, Lbr/com/topaz/heartbeat/token/b;->h:Lbr/com/topaz/heartbeat/token/c;

    iput-object p8, p0, Lbr/com/topaz/heartbeat/token/b;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p9, p0, Lbr/com/topaz/heartbeat/token/b;->j:Lbr/com/topaz/u0/r;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/token/b;)Lbr/com/topaz/heartbeat/token/b$c;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/b;->b:Lbr/com/topaz/heartbeat/token/b$c;

    return-object p0
.end method

.method static synthetic b(Lbr/com/topaz/heartbeat/token/b;)Lbr/com/topaz/heartbeat/token/c;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/b;->h:Lbr/com/topaz/heartbeat/token/c;

    return-object p0
.end method


# virtual methods
.method public a(Lbr/com/topaz/heartbeat/token/b$c;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/b;->b:Lbr/com/topaz/heartbeat/token/b$c;

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->T()Lbr/com/topaz/r0/d;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/b;->c:Lbr/com/topaz/l/f0;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/b;->e:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/b;->d:Lbr/com/topaz/l/l;

    invoke-virtual {v3}, Lbr/com/topaz/l/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbr/com/topaz/l/f0;->f(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/b;->e:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/r0/c;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/b;->j:Lbr/com/topaz/u0/r;

    invoke-direct {v1, v2}, Lbr/com/topaz/r0/c;-><init>(Lbr/com/topaz/u0/r;)V

    invoke-virtual {v1, v0}, Lbr/com/topaz/r0/c;->a(Ljava/lang/String;)Lbr/com/topaz/r0/c;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/r0/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b;->g:Lbr/com/topaz/heartbeat/token/h;

    new-instance v1, Lbr/com/topaz/heartbeat/token/b$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/token/b$a;-><init>(Lbr/com/topaz/heartbeat/token/b;)V

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/token/h;->a(Lbr/com/topaz/heartbeat/token/h$b;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b;->g:Lbr/com/topaz/heartbeat/token/h;

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/b;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "048"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b;->b:Lbr/com/topaz/heartbeat/token/b$c;

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Lbr/com/topaz/heartbeat/token/b$c;->onFailure(I)V

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b;->f:Lbr/com/topaz/heartbeat/token/e;

    new-instance v1, Lbr/com/topaz/heartbeat/token/b$b;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/token/b$b;-><init>(Lbr/com/topaz/heartbeat/token/b;)V

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/token/e;->a(Lbr/com/topaz/heartbeat/token/e$b;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b;->f:Lbr/com/topaz/heartbeat/token/e;

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method
