.class Lcom/ca/mas/core/storage/StorageResultReceiver$a;
.super Landroid/os/ResultReceiver;
.source "StorageResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/storage/StorageResultReceiver;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/storage/StorageResultReceiver;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/storage/StorageResultReceiver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/storage/StorageResultReceiver$a;->a:Lcom/ca/mas/core/storage/StorageResultReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const-string p1, "result"

    .line 1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/storage/StorageResult;

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/ca/mas/core/storage/StorageResultReceiver$a;->a:Lcom/ca/mas/core/storage/StorageResultReceiver;

    invoke-virtual {p2, p1}, Lcom/ca/mas/core/storage/StorageResultReceiver;->onReceiveResult(Lcom/ca/mas/core/storage/StorageResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-boolean p2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "MAS"

    const-string v0, "Error in Storage Callback"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
