.class Lbr/com/topaz/heartbeat/token/i$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/token/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$i;->b(Lbr/com/topaz/l/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/i$i;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$i;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$i$a;->a:Lbr/com/topaz/heartbeat/token/i$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$i$a$b;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/heartbeat/token/i$i$a$b;-><init>(Lbr/com/topaz/heartbeat/token/i$i$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$i$a$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/token/i$i$a$a;-><init>(Lbr/com/topaz/heartbeat/token/i$i$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
