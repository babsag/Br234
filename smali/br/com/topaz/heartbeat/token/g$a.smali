.class Lbr/com/topaz/heartbeat/token/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/g;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/g;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/g$a;->a:Lbr/com/topaz/heartbeat/token/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/token/g$a;->a:Lbr/com/topaz/heartbeat/token/g;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/token/g;->a(Lbr/com/topaz/heartbeat/token/g;)Lbr/com/topaz/heartbeat/token/g$b;

    move-result-object p1

    invoke-interface {p1}, Lbr/com/topaz/heartbeat/token/g$b;->b()V

    return-void
.end method

.method public onFailure(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/g$a;->a:Lbr/com/topaz/heartbeat/token/g;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/g;->a(Lbr/com/topaz/heartbeat/token/g;)Lbr/com/topaz/heartbeat/token/g$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/token/g$b;->b(I)V

    return-void
.end method
