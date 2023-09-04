.class Lbr/com/topaz/heartbeat/token/i$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$c;->onFailure(I)V
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

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c$c;->a:Lbr/com/topaz/heartbeat/token/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbr/com/topaz/l/l;)V
    .locals 9

    new-instance v8, Lbr/com/topaz/heartbeat/token/e;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$c$c;->a:Lbr/com/topaz/heartbeat/token/i$c;

    iget-object v2, v0, Lbr/com/topaz/heartbeat/token/i$c;->b:Lbr/com/topaz/l/o;

    iget-object v3, v0, Lbr/com/topaz/heartbeat/token/i$c;->f:Lbr/com/topaz/f0/c;

    iget-object v5, v0, Lbr/com/topaz/heartbeat/token/i$c;->h:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iget-object v6, v0, Lbr/com/topaz/heartbeat/token/i$c;->i:Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v7, v0, Lbr/com/topaz/heartbeat/token/i$c;->j:Lbr/com/topaz/u0/r;

    move-object v0, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lbr/com/topaz/heartbeat/token/e;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance v0, Lbr/com/topaz/heartbeat/token/i$c$c$a;

    invoke-direct {v0, p0, p1}, Lbr/com/topaz/heartbeat/token/i$c$c$a;-><init>(Lbr/com/topaz/heartbeat/token/i$c$c;Lbr/com/topaz/l/l;)V

    invoke-virtual {v8, v0}, Lbr/com/topaz/heartbeat/token/e;->a(Lbr/com/topaz/heartbeat/token/e$b;)V

    invoke-virtual {v8}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
