.class Lbr/com/topaz/heartbeat/token/i$i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$i$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/i$i$a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$i$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$i$a$a;->a:Lbr/com/topaz/heartbeat/token/i$i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$i$a$a;->a:Lbr/com/topaz/heartbeat/token/i$i$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$i$a;->a:Lbr/com/topaz/heartbeat/token/i$i;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$i;->b:Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;

    invoke-interface {v0}, Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;->onSuccess()V

    return-void
.end method
