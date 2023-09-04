.class Lbr/com/topaz/heartbeat/token/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/token/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/b;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/b$a;->a:Lbr/com/topaz/heartbeat/token/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b$a;->a:Lbr/com/topaz/heartbeat/token/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/b;->a(Lbr/com/topaz/heartbeat/token/b;)Lbr/com/topaz/heartbeat/token/b$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/token/b$c;->onFailure(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b$a;->a:Lbr/com/topaz/heartbeat/token/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/b;->b(Lbr/com/topaz/heartbeat/token/b;)Lbr/com/topaz/heartbeat/token/c;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/heartbeat/token/b$a$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/token/b$a$a;-><init>(Lbr/com/topaz/heartbeat/token/b$a;)V

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/token/c;->a(Lbr/com/topaz/heartbeat/token/c$b;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b$a;->a:Lbr/com/topaz/heartbeat/token/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/b;->b(Lbr/com/topaz/heartbeat/token/b;)Lbr/com/topaz/heartbeat/token/c;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
