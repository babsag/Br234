.class Lbr/com/topaz/heartbeat/token/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/d;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/d;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/d$a;->a:Lbr/com/topaz/heartbeat/token/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/d$a;->a:Lbr/com/topaz/heartbeat/token/d;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/token/d;->b(Lbr/com/topaz/heartbeat/token/d;)Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    move-result-object p1

    iget-object p2, p0, Lbr/com/topaz/heartbeat/token/d$a;->a:Lbr/com/topaz/heartbeat/token/d;

    invoke-static {p2}, Lbr/com/topaz/heartbeat/token/d;->a(Lbr/com/topaz/heartbeat/token/d;)Lbr/com/topaz/l/l;

    move-result-object p2

    invoke-virtual {p2}, Lbr/com/topaz/l/l;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lbr/com/topaz/heartbeat/token/d$a;->a:Lbr/com/topaz/heartbeat/token/d;

    invoke-static {p2}, Lbr/com/topaz/heartbeat/token/d;->c(Lbr/com/topaz/heartbeat/token/d;)Lbr/com/topaz/l/f0;

    move-result-object p2

    invoke-interface {p2, p1}, Lbr/com/topaz/l/f0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/d$a;->a:Lbr/com/topaz/heartbeat/token/d;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/token/d;->d(Lbr/com/topaz/heartbeat/token/d;)Lbr/com/topaz/heartbeat/token/d$b;

    move-result-object p1

    invoke-interface {p1}, Lbr/com/topaz/heartbeat/token/d$b;->onSuccess()V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/d$a;->a:Lbr/com/topaz/heartbeat/token/d;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/d;->b(Lbr/com/topaz/heartbeat/token/d;)Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/d$a;->a:Lbr/com/topaz/heartbeat/token/d;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/token/d;->a(Lbr/com/topaz/heartbeat/token/d;)Lbr/com/topaz/l/l;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/d$a;->a:Lbr/com/topaz/heartbeat/token/d;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/token/d;->c(Lbr/com/topaz/heartbeat/token/d;)Lbr/com/topaz/l/f0;

    move-result-object v1

    invoke-interface {v1, v0}, Lbr/com/topaz/l/f0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/d$a;->a:Lbr/com/topaz/heartbeat/token/d;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/d;->d(Lbr/com/topaz/heartbeat/token/d;)Lbr/com/topaz/heartbeat/token/d$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/token/d$b;->onFailure(I)V

    return-void
.end method
