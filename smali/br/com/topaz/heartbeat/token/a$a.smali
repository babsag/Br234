.class Lbr/com/topaz/heartbeat/token/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/a$a;->a:Lbr/com/topaz/heartbeat/token/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 1

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/a$a;->a:Lbr/com/topaz/heartbeat/token/a;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/token/a;->b(Lbr/com/topaz/heartbeat/token/a;)Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/a$a;->a:Lbr/com/topaz/heartbeat/token/a;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/a;->a(Lbr/com/topaz/heartbeat/token/a;)Lbr/com/topaz/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/a$a;->a:Lbr/com/topaz/heartbeat/token/a;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/a;->c(Lbr/com/topaz/heartbeat/token/a;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbr/com/topaz/l/f0;->b(Ljava/lang/String;[B)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/a$a;->a:Lbr/com/topaz/heartbeat/token/a;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/token/a;->d(Lbr/com/topaz/heartbeat/token/a;)Lbr/com/topaz/heartbeat/token/a$b;

    move-result-object p1

    invoke-interface {p1}, Lbr/com/topaz/heartbeat/token/a$b;->a()V

    return-void
.end method

.method public onFailure(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/a$a;->a:Lbr/com/topaz/heartbeat/token/a;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/a;->d(Lbr/com/topaz/heartbeat/token/a;)Lbr/com/topaz/heartbeat/token/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/token/a$b;->a(I)V

    return-void
.end method
