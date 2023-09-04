.class public final enum Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;
.super Ljava/lang/Enum;
.source "MASFilteredRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum co:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum eq:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum ew:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum ge:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum gt:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum le:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum lt:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum ne:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum pr:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field public static final enum sw:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v1, "eq"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->eq:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 2
    new-instance v1, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v3, "ne"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->ne:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 3
    new-instance v3, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v5, "co"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->co:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 4
    new-instance v5, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v7, "sw"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->sw:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 5
    new-instance v7, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v9, "ew"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->ew:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 6
    new-instance v9, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v11, "pr"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->pr:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 7
    new-instance v11, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v13, "gt"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->gt:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 8
    new-instance v13, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v15, "ge"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->ge:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 9
    new-instance v15, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v14, "lt"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->lt:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 10
    new-instance v14, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const-string v12, "le"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->le:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->$VALUES:[Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->$VALUES:[Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-virtual {v0}, [Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    return-object v0
.end method
