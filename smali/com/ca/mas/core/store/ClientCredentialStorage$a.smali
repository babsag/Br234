.class final enum Lcom/ca/mas/core/store/ClientCredentialStorage$a;
.super Ljava/lang/Enum;
.source "ClientCredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/store/ClientCredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/core/store/ClientCredentialStorage$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/core/store/ClientCredentialStorage$a;

.field public static final enum PREF_CLIENT_EXPIRE_TIME:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

.field public static final enum PREF_CLIENT_ID:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

.field public static final enum PREF_CLIENT_SECRET:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

.field public static final enum PREF_MASTER_CLIENT_ID:Lcom/ca/mas/core/store/ClientCredentialStorage$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    const-string v1, "PREF_MASTER_CLIENT_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/core/store/ClientCredentialStorage$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_MASTER_CLIENT_ID:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    .line 2
    new-instance v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    const-string v3, "PREF_CLIENT_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ca/mas/core/store/ClientCredentialStorage$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_CLIENT_ID:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    .line 3
    new-instance v3, Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    const-string v5, "PREF_CLIENT_SECRET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ca/mas/core/store/ClientCredentialStorage$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_CLIENT_SECRET:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    .line 4
    new-instance v5, Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    const-string v7, "PREF_CLIENT_EXPIRE_TIME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ca/mas/core/store/ClientCredentialStorage$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_CLIENT_EXPIRE_TIME:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->$VALUES:[Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/core/store/ClientCredentialStorage$a;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/core/store/ClientCredentialStorage$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->$VALUES:[Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-virtual {v0}, [Lcom/ca/mas/core/store/ClientCredentialStorage$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    return-object v0
.end method
