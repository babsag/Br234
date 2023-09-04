.class Lbr/com/topaz/heartbeat/token/i$i$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$i$a;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbr/com/topaz/heartbeat/token/i$i$a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$i$a;I)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$i$a$b;->b:Lbr/com/topaz/heartbeat/token/i$i$a;

    iput p2, p0, Lbr/com/topaz/heartbeat/token/i$i$a$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$i$a$b;->b:Lbr/com/topaz/heartbeat/token/i$i$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$i$a;->a:Lbr/com/topaz/heartbeat/token/i$i;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$i;->b:Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;

    iget v1, p0, Lbr/com/topaz/heartbeat/token/i$i$a$b;->a:I

    invoke-interface {v0, v1}, Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;->onFailure(I)V

    return-void
.end method
