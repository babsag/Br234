.class Lbr/com/topaz/heartbeat/token/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/token/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/b$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/b$a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/b$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/b$a$a;->a:Lbr/com/topaz/heartbeat/token/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b$a$a;->a:Lbr/com/topaz/heartbeat/token/b$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/b$a;->a:Lbr/com/topaz/heartbeat/token/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/b;->a(Lbr/com/topaz/heartbeat/token/b;)Lbr/com/topaz/heartbeat/token/b$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/token/b$c;->onFailure(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/b$a$a;->a:Lbr/com/topaz/heartbeat/token/b$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/b$a;->a:Lbr/com/topaz/heartbeat/token/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/b;->a(Lbr/com/topaz/heartbeat/token/b;)Lbr/com/topaz/heartbeat/token/b$c;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/heartbeat/token/b$c;->onSuccess()V

    return-void
.end method
