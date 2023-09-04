.class public final enum Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;
.super Ljava/lang/Enum;
.source "PrivateTokenStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/store/PrivateTokenStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

.field public static final enum PREF_ACCESS_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

.field public static final enum PREF_EXPIRY_UNIXTIME:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

.field public static final enum PREF_GRANTED_SCOPE:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

.field public static final enum PREF_ID_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

.field public static final enum PREF_ID_TOKEN_TYPE:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

.field public static final enum PREF_REFRESH_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    const-string v1, "PREF_ACCESS_TOKEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_ACCESS_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    .line 2
    new-instance v1, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    const-string v3, "PREF_REFRESH_TOKEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_REFRESH_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    .line 3
    new-instance v3, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    const-string v5, "PREF_EXPIRY_UNIXTIME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_EXPIRY_UNIXTIME:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    .line 4
    new-instance v5, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    const-string v7, "PREF_GRANTED_SCOPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_GRANTED_SCOPE:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    .line 5
    new-instance v7, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    const-string v9, "PREF_ID_TOKEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_ID_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    .line 6
    new-instance v9, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    const-string v11, "PREF_ID_TOKEN_TYPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_ID_TOKEN_TYPE:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->$VALUES:[Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->$VALUES:[Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {v0}, [Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    return-object v0
.end method
