.class public final enum Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;
.super Ljava/lang/Enum;
.source "StorageResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/storage/StorageResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageOperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum DELETE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum DELETE_ALL:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum DELETE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum GET_ALL_KEYS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum READ:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum READ_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum UPDATE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum UPDATE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum WRITE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum WRITE_OR_UPDATE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum WRITE_OR_UPDATE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

.field public static final enum WRITE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v1, "WRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 2
    new-instance v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v3, "WRITE_STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 3
    new-instance v3, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v5, "READ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->READ:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 4
    new-instance v5, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v7, "READ_STRING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->READ_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 5
    new-instance v7, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v9, "UPDATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->UPDATE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 6
    new-instance v9, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v11, "UPDATE_STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->UPDATE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 7
    new-instance v11, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v13, "DELETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->DELETE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 8
    new-instance v13, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v15, "DELETE_STRING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->DELETE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 9
    new-instance v15, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v14, "DELETE_ALL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->DELETE_ALL:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 10
    new-instance v14, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v12, "WRITE_OR_UPDATE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE_OR_UPDATE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 11
    new-instance v12, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v10, "WRITE_OR_UPDATE_STRING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE_OR_UPDATE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    .line 12
    new-instance v10, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const-string v8, "GET_ALL_KEYS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->GET_ALL_KEYS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 13
    sput-object v8, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->$VALUES:[Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

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
    iput p3, p0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->$VALUES:[Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-virtual {v0}, [Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    return-object v0
.end method
