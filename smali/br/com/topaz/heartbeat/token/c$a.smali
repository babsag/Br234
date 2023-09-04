.class Lbr/com/topaz/heartbeat/token/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/c;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/c;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 2

    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/token/c;->b(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/c;->a(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/c;->c(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbr/com/topaz/l/f0;->b(Ljava/lang/String;[B)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/token/c;->d(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/heartbeat/token/c$b;

    move-result-object p1

    invoke-interface {p1}, Lbr/com/topaz/heartbeat/token/c$b;->onSuccess()V

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/token/c;->e(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/l/e0;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lbr/com/topaz/l/e0;->e(J)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/token/c;->d(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/heartbeat/token/c$b;

    move-result-object p1

    invoke-interface {p1}, Lbr/com/topaz/heartbeat/token/c$b;->onSuccess()V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    const/16 v0, 0x1a7

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/c;->b(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/token/c;->a(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/l/l;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/token/c;->c(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/l/f0;

    move-result-object v1

    invoke-interface {v1, v0}, Lbr/com/topaz/l/f0;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/c$a;->a:Lbr/com/topaz/heartbeat/token/c;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/c;->d(Lbr/com/topaz/heartbeat/token/c;)Lbr/com/topaz/heartbeat/token/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/token/c$b;->onFailure(I)V

    return-void
.end method
