.class final Lcom/ca/mas/core/storage/StorageResult$a;
.super Ljava/lang/Object;
.source "StorageResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/storage/StorageResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 2

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Landroid/os/Parcel;Lcom/ca/mas/core/storage/StorageResult$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/ca/mas/core/storage/StorageResult;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/ca/mas/core/storage/StorageResult;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/StorageResult$a;->a(Landroid/os/Parcel;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/StorageResult$a;->b(I)[Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    return-object p1
.end method
