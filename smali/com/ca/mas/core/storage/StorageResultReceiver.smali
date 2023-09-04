.class public Lcom/ca/mas/core/storage/StorageResultReceiver;
.super Ljava/lang/Object;
.source "StorageResultReceiver.java"


# instance fields
.field private final a:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ca/mas/core/storage/StorageResultReceiver$a;

    invoke-direct {v0, p0, p1}, Lcom/ca/mas/core/storage/StorageResultReceiver$a;-><init>(Lcom/ca/mas/core/storage/StorageResultReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ca/mas/core/storage/StorageResultReceiver;->a:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public onReceiveResult(Lcom/ca/mas/core/storage/StorageResult;)V
    .locals 0

    return-void
.end method

.method public final send(Lcom/ca/mas/core/storage/StorageResult;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/storage/StorageResultReceiver;->a:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
