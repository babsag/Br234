.class Lbr/com/topaz/heartbeat/token/i$c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/token/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$c$c;->b(Lbr/com/topaz/l/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/l/l;

.field final synthetic b:Lbr/com/topaz/heartbeat/token/i$c$c;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$c$c;Lbr/com/topaz/l/l;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c$c$a;->b:Lbr/com/topaz/heartbeat/token/i$c$c;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/i$c$c$a;->a:Lbr/com/topaz/l/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$c$c$a$b;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/heartbeat/token/i$c$c$a$b;-><init>(Lbr/com/topaz/heartbeat/token/i$c$c$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 11

    new-instance v10, Lbr/com/topaz/heartbeat/token/c;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/i$c$c$a;->a:Lbr/com/topaz/l/l;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$c$c$a;->b:Lbr/com/topaz/heartbeat/token/i$c$c;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$c$c;->a:Lbr/com/topaz/heartbeat/token/i$c;

    iget-object v3, v0, Lbr/com/topaz/heartbeat/token/i$c;->f:Lbr/com/topaz/f0/c;

    iget-object v4, v0, Lbr/com/topaz/heartbeat/token/i$c;->b:Lbr/com/topaz/l/o;

    iget-object v5, v0, Lbr/com/topaz/heartbeat/token/i$c;->c:Lbr/com/topaz/l/e0;

    iget-object v6, v0, Lbr/com/topaz/heartbeat/token/i$c;->g:Lbr/com/topaz/r0/b;

    iget-object v7, v0, Lbr/com/topaz/heartbeat/token/i$c;->h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iget-object v8, v0, Lbr/com/topaz/heartbeat/token/i$c;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v9, v0, Lbr/com/topaz/heartbeat/token/i$c;->j:Lbr/com/topaz/u0/r;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lbr/com/topaz/heartbeat/token/c;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance v0, Lbr/com/topaz/heartbeat/token/i$c$c$a$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/heartbeat/token/i$c$c$a$a;-><init>(Lbr/com/topaz/heartbeat/token/i$c$c$a;)V

    invoke-virtual {v10, v0}, Lbr/com/topaz/heartbeat/token/c;->a(Lbr/com/topaz/heartbeat/token/c$b;)V

    invoke-virtual {v10}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
