.class Lbr/com/topaz/heartbeat/token/i$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$d$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/i$d$a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$d$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$d$a$a;->a:Lbr/com/topaz/heartbeat/token/i$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$d$a$a;->a:Lbr/com/topaz/heartbeat/token/i$d$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$d$a;->a:Lbr/com/topaz/heartbeat/token/i$d;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$d;->b:Lbr/com/topaz/heartbeat/token/Token$DismissCallback;

    invoke-interface {v0}, Lbr/com/topaz/heartbeat/token/Token$DismissCallback;->onSuccess()V

    return-void
.end method
