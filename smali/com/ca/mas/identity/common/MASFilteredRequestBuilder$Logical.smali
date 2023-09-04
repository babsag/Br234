.class public final enum Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;
.super Ljava/lang/Enum;
.source "MASFilteredRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Logical"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

.field public static final enum and:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

.field public static final enum not:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

.field public static final enum or:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    const-string v1, "and"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;->and:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    .line 2
    new-instance v1, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    const-string v3, "or"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;->or:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    .line 3
    new-instance v3, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    const-string v5, "not"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;->not:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;->$VALUES:[Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;->$VALUES:[Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    invoke-virtual {v0}, [Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    return-object v0
.end method
