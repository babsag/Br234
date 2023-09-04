.class public Lcom/ca/mas/core/storage/StorageResult;
.super Ljava/lang/Object;
.source "StorageResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;,
        Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

.field private b:Ljava/lang/Object;

.field private c:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult$a;

    invoke-direct {v0}, Lcom/ca/mas/core/storage/StorageResult$a;-><init>()V

    sput-object v0, Lcom/ca/mas/core/storage/StorageResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    iput-object v0, p0, Lcom/ca/mas/core/storage/StorageResult;->a:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    iput-object v0, p0, Lcom/ca/mas/core/storage/StorageResult;->c:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    iput-object v0, p0, Lcom/ca/mas/core/storage/StorageResult;->a:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/ca/mas/core/storage/StorageResult;->b:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ca/mas/core/storage/StorageResult$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    iput-object v0, p0, Lcom/ca/mas/core/storage/StorageResult;->a:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    .line 4
    iput-object p1, p0, Lcom/ca/mas/core/storage/StorageResult;->c:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/StorageResult;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/StorageResult;->a:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    return-object v0
.end method

.method public getType()Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/StorageResult;->c:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/storage/StorageResult;->b:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/storage/StorageResult;->a:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    return-void
.end method

.method public setType(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/storage/StorageResult;->c:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/StorageResult;->getType()Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/storage/StorageResult;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method
