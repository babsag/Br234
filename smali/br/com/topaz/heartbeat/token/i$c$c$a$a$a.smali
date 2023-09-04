.class Lbr/com/topaz/heartbeat/token/i$c$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/token/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$c$c$a$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/i$c$c$a$a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$c$c$a$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$c$c$a$a$a;->a:Lbr/com/topaz/heartbeat/token/i$c$c$a$a;

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

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$c$c$a$a$a$b;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/heartbeat/token/i$c$c$a$a$a$b;-><init>(Lbr/com/topaz/heartbeat/token/i$c$c$a$a$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lbr/com/topaz/heartbeat/token/TokenResponse;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$c$c$a$a$a$a;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/heartbeat/token/i$c$c$a$a$a$a;-><init>(Lbr/com/topaz/heartbeat/token/i$c$c$a$a$a;Lbr/com/topaz/heartbeat/token/TokenResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
