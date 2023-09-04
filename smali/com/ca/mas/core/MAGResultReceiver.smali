.class public abstract Lcom/ca/mas/core/MAGResultReceiver;
.super Landroid/os/ResultReceiver;
.source "MAGResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/ResultReceiver;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public abstract onError(Lcom/ca/mas/core/error/MAGError;)V
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const-string v0, "MAS"

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    :try_start_0
    const-string p1, "com.ca.mas.core.service.result.error"

    .line 1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/error/MAGError;

    if-eqz p1, :cond_7

    .line 2
    sget-boolean p2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error response with: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/MAGResultReceiver;->onError(Lcom/ca/mas/core/error/MAGError;)V

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ca/mas/core/MAGResultReceiver;->onRequestCancelled(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    const-string p1, "com.ca.mas.core.service.result.requestId"

    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_6

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {p1, p2}, Lcom/ca/mas/core/service/MssoClient;->takeMAGResponse(J)Lcom/ca/mas/foundation/MASResponse;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 9
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-lt p2, v1, :cond_5

    const/16 v1, 0x12c

    if-lt p2, v1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/MAGResultReceiver;->onSuccess(Lcom/ca/mas/foundation/MASResponse;)V

    goto :goto_2

    .line 11
    :cond_5
    :goto_0
    new-instance p2, Lcom/ca/mas/core/error/MAGError;

    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ca/mas/core/error/TargetApiException;

    invoke-direct {v2, p1}, Lcom/ca/mas/core/error/TargetApiException;-><init>(Lcom/ca/mas/foundation/MASResponse;)V

    invoke-direct {p2, v1, v2}, Lcom/ca/mas/core/error/MAGError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/ca/mas/core/MAGResultReceiver;->onError(Lcom/ca/mas/core/error/MAGError;)V

    return-void

    .line 12
    :cond_6
    :goto_1
    new-instance p1, Lcom/ca/mas/core/error/MAGError;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v1, "Received result included an invalid request ID"

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/ca/mas/core/error/MAGError;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/MAGResultReceiver;->onError(Lcom/ca/mas/core/error/MAGError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    sget-boolean p2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p2, :cond_7

    const-string p2, "Error handling response."

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public onRequestCancelled(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onSuccess(Lcom/ca/mas/foundation/MASResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASResponse<",
            "TT;>;)V"
        }
    .end annotation
.end method
