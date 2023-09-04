.class Lbr/com/topaz/heartbeat/token/i$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbr/com/topaz/heartbeat/token/i;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i;I)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$h;->b:Lbr/com/topaz/heartbeat/token/i;

    iput p2, p0, Lbr/com/topaz/heartbeat/token/i$h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$h;->b:Lbr/com/topaz/heartbeat/token/i;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/token/i;->b(Lbr/com/topaz/heartbeat/token/i;)Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;

    move-result-object v0

    iget v1, p0, Lbr/com/topaz/heartbeat/token/i$h;->a:I

    invoke-interface {v0, v1}, Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;->onFailure(I)V

    return-void
.end method
