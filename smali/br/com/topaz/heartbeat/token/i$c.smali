.class Lbr/com/topaz/heartbeat/token/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/token/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/token/Token$TokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/Token$TokenCallback;

.field final synthetic b:Lbr/com/topaz/l/o;

.field final synthetic c:Lbr/com/topaz/l/e0;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lbr/com/topaz/l/l;

.field final synthetic f:Lbr/com/topaz/f0/c;

.field final synthetic g:Lbr/com/topaz/r0/b;

.field final synthetic h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

.field final synthetic i:Lbr/com/topaz/heartbeat/utils/OFDException;

.field final synthetic j:Lbr/com/topaz/u0/r;

.field final synthetic k:Lbr/com/topaz/heartbeat/token/i;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i;Lbr/com/topaz/heartbeat/token/Token$TokenCallback;Lbr/com/topaz/l/o;Lbr/com/topaz/l/e0;Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c;->k:Lbr/com/topaz/heartbeat/token/i;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/i$c;->a:Lbr/com/topaz/heartbeat/token/Token$TokenCallback;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/token/i$c;->b:Lbr/com/topaz/l/o;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/token/i$c;->c:Lbr/com/topaz/l/e0;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/token/i$c;->d:Landroid/content/Context;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/token/i$c;->e:Lbr/com/topaz/l/l;

    iput-object p7, p0, Lbr/com/topaz/heartbeat/token/i$c;->f:Lbr/com/topaz/f0/c;

    iput-object p8, p0, Lbr/com/topaz/heartbeat/token/i$c;->g:Lbr/com/topaz/r0/b;

    iput-object p9, p0, Lbr/com/topaz/heartbeat/token/i$c;->h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iput-object p10, p0, Lbr/com/topaz/heartbeat/token/i$c;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p11, p0, Lbr/com/topaz/heartbeat/token/i$c;->j:Lbr/com/topaz/u0/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c;->d:Landroid/content/Context;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$c;->e:Lbr/com/topaz/l/l;

    invoke-static {p1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/heartbeat/token/i$c$c;

    invoke-direct {v0, p0}, Lbr/com/topaz/heartbeat/token/i$c$c;-><init>(Lbr/com/topaz/heartbeat/token/i$c;)V

    invoke-virtual {p1, v0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public onSuccess(Lbr/com/topaz/heartbeat/token/TokenResponse;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$c$a;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/heartbeat/token/i$c$a;-><init>(Lbr/com/topaz/heartbeat/token/i$c;Lbr/com/topaz/heartbeat/token/TokenResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c;->b:Lbr/com/topaz/l/o;

    invoke-virtual {p1}, Lbr/com/topaz/l/o;->p()Lbr/com/topaz/l/g;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->T()Lbr/com/topaz/r0/d;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/r0/d;->b()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c;->k:Lbr/com/topaz/heartbeat/token/i;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/i$c;->c:Lbr/com/topaz/l/e0;

    invoke-interface {v2}, Lbr/com/topaz/l/e0;->j()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v0, v1}, Lbr/com/topaz/heartbeat/token/i;->a(Lbr/com/topaz/heartbeat/token/i;JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c;->d:Landroid/content/Context;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$c;->e:Lbr/com/topaz/l/l;

    invoke-static {p1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/heartbeat/token/i$c$b;

    invoke-direct {v0, p0}, Lbr/com/topaz/heartbeat/token/i$c$b;-><init>(Lbr/com/topaz/heartbeat/token/i$c;)V

    invoke-virtual {p1, v0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$c;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "080"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method
