.class Lbr/com/topaz/heartbeat/token/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/token/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/b$b;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/b$b;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/b$b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/b$b$a;->a:Lbr/com/topaz/heartbeat/token/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b$b$a;->a:Lbr/com/topaz/heartbeat/token/b$b;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/b$b;->a:Lbr/com/topaz/heartbeat/token/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/b;->a(Lbr/com/topaz/heartbeat/token/b;)Lbr/com/topaz/heartbeat/token/b$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/token/b$c;->onFailure(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b$b$a;->a:Lbr/com/topaz/heartbeat/token/b$b;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/b$b;->a:Lbr/com/topaz/heartbeat/token/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/b;->a(Lbr/com/topaz/heartbeat/token/b;)Lbr/com/topaz/heartbeat/token/b$c;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/heartbeat/token/b$c;->onSuccess()V

    return-void
.end method
