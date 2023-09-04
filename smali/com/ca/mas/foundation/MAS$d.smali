.class final Lcom/ca/mas/foundation/MAS$d;
.super Lcom/ca/mas/core/MAGResultReceiver;
.source "MAS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/core/MAGResultReceiver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASCallback;

.field final synthetic b:Lcom/ca/mas/foundation/MASRequest;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/ca/mas/foundation/MASCallback;Lcom/ca/mas/foundation/MASRequest;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ca/mas/foundation/MAS$d;->a:Lcom/ca/mas/foundation/MASCallback;

    iput-object p3, p0, Lcom/ca/mas/foundation/MAS$d;->b:Lcom/ca/mas/foundation/MASRequest;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/MAGResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ca/mas/core/error/MAGError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MAS$d;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRequestCancelled(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MAS$d;->b:Lcom/ca/mas/foundation/MASRequest;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASRequest;->notifyOnCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MAS$d;->a:Lcom/ca/mas/foundation/MASCallback;

    new-instance v1, Lcom/ca/mas/foundation/MAS$RequestCancelledException;

    invoke-direct {v1, p1}, Lcom/ca/mas/foundation/MAS$RequestCancelledException;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASResponse<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MAS$d;->a:Lcom/ca/mas/foundation/MASCallback;

    new-instance v1, Lcom/ca/mas/foundation/e;

    invoke-direct {v1, p1}, Lcom/ca/mas/foundation/e;-><init>(Lcom/ca/mas/foundation/MASResponse;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    return-void
.end method
