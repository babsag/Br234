.class Lbr/com/topaz/heartbeat/token/i$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$c;->onSuccess(Lbr/com/topaz/heartbeat/token/TokenResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/i$c;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$c;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c$b;->a:Lbr/com/topaz/heartbeat/token/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbr/com/topaz/l/l;)V
    .locals 11

    new-instance v10, Lbr/com/topaz/heartbeat/token/c;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$c$b;->a:Lbr/com/topaz/heartbeat/token/i$c;

    iget-object v3, v0, Lbr/com/topaz/heartbeat/token/i$c;->f:Lbr/com/topaz/f0/c;

    iget-object v4, v0, Lbr/com/topaz/heartbeat/token/i$c;->b:Lbr/com/topaz/l/o;

    iget-object v5, v0, Lbr/com/topaz/heartbeat/token/i$c;->c:Lbr/com/topaz/l/e0;

    iget-object v6, v0, Lbr/com/topaz/heartbeat/token/i$c;->g:Lbr/com/topaz/r0/b;

    iget-object v7, v0, Lbr/com/topaz/heartbeat/token/i$c;->h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iget-object v8, v0, Lbr/com/topaz/heartbeat/token/i$c;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v9, v0, Lbr/com/topaz/heartbeat/token/i$c;->j:Lbr/com/topaz/u0/r;

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lbr/com/topaz/heartbeat/token/c;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance p1, Lbr/com/topaz/heartbeat/token/i$c$b$a;

    invoke-direct {p1, p0}, Lbr/com/topaz/heartbeat/token/i$c$b$a;-><init>(Lbr/com/topaz/heartbeat/token/i$c$b;)V

    invoke-virtual {v10, p1}, Lbr/com/topaz/heartbeat/token/c;->a(Lbr/com/topaz/heartbeat/token/c$b;)V

    invoke-virtual {v10}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
