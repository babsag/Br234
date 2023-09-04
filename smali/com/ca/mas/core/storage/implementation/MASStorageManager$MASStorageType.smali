.class public final enum Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;
.super Ljava/lang/Enum;
.source "MASStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/storage/implementation/MASStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MASStorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

.field public static final enum TYPE_AMS:Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

.field public static final enum TYPE_KEYSTORE:Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;


# instance fields
.field private final className:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/ca/mas/core/storage/Storage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    const-class v1, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    const-string v2, "TYPE_KEYSTORE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->TYPE_KEYSTORE:Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    .line 2
    new-instance v1, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    const-class v2, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;

    const-string v4, "TYPE_AMS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->TYPE_AMS:Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 3
    sput-object v2, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->$VALUES:[Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ca/mas/core/storage/Storage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->className:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->b()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ca/mas/core/storage/Storage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->className:Ljava/lang/Class;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->$VALUES:[Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    invoke-virtual {v0}, [Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    return-object v0
.end method
