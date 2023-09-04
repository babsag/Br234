.class public final enum Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;
.super Ljava/lang/Enum;
.source "StorageResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/storage/StorageResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageOperationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

.field public static final enum FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

.field public static final enum SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    .line 2
    new-instance v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    const-string v3, "FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->$VALUES:[Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->$VALUES:[Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0}, [Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    return-object v0
.end method
