.class final Lcom/ca/mas/foundation/auth/MASProximityLoginQRCode$a;
.super Lcom/ca/mas/core/MAGResultReceiver;
.source "MASProximityLoginQRCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/auth/MASProximityLoginQRCode;->authorize(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASCallback;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ca/mas/foundation/auth/MASProximityLoginQRCode$a;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/MAGResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ca/mas/core/error/MAGError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASProximityLoginQRCode$a;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRequestCancelled(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ca/mas/core/MAGResultReceiver;->onRequestCancelled(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASProximityLoginQRCode$a;->a:Lcom/ca/mas/foundation/MASCallback;

    new-instance v1, Lcom/ca/mas/foundation/MAS$RequestCancelledException;

    invoke-direct {v1, p1}, Lcom/ca/mas/foundation/MAS$RequestCancelledException;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASProximityLoginQRCode$a;->a:Lcom/ca/mas/foundation/MASCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    return-void
.end method
