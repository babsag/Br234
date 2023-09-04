.class Lbr/com/topaz/heartbeat/token/i$c$c$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$c$c$a$a;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbr/com/topaz/heartbeat/token/i$c$c$a$a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$c$c$a$a;I)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c$c$a$a$b;->b:Lbr/com/topaz/heartbeat/token/i$c$c$a$a;

    iput p2, p0, Lbr/com/topaz/heartbeat/token/i$c$c$a$a$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$c$c$a$a$b;->b:Lbr/com/topaz/heartbeat/token/i$c$c$a$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$c$c$a$a;->a:Lbr/com/topaz/heartbeat/token/i$c$c$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$c$c$a;->b:Lbr/com/topaz/heartbeat/token/i$c$c;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$c$c;->a:Lbr/com/topaz/heartbeat/token/i$c;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$c;->a:Lbr/com/topaz/heartbeat/token/Token$TokenCallback;

    iget v1, p0, Lbr/com/topaz/heartbeat/token/i$c$c$a$a$b;->a:I

    invoke-interface {v0, v1}, Lbr/com/topaz/heartbeat/token/Token$TokenCallback;->onFailure(I)V

    return-void
.end method
