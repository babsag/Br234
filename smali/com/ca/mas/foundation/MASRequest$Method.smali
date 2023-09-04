.class public final enum Lcom/ca/mas/foundation/MASRequest$Method;
.super Ljava/lang/Enum;
.source "MASRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/MASRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/foundation/MASRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/foundation/MASRequest$Method;

.field public static final enum DELETE:Lcom/ca/mas/foundation/MASRequest$Method;

.field public static final enum GET:Lcom/ca/mas/foundation/MASRequest$Method;

.field public static final enum PATCH:Lcom/ca/mas/foundation/MASRequest$Method;

.field public static final enum POST:Lcom/ca/mas/foundation/MASRequest$Method;

.field public static final enum PUT:Lcom/ca/mas/foundation/MASRequest$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/foundation/MASRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->GET:Lcom/ca/mas/foundation/MASRequest$Method;

    new-instance v1, Lcom/ca/mas/foundation/MASRequest$Method;

    const-string v3, "PUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ca/mas/foundation/MASRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ca/mas/foundation/MASRequest$Method;->PUT:Lcom/ca/mas/foundation/MASRequest$Method;

    new-instance v3, Lcom/ca/mas/foundation/MASRequest$Method;

    const-string v5, "POST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ca/mas/foundation/MASRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ca/mas/foundation/MASRequest$Method;->POST:Lcom/ca/mas/foundation/MASRequest$Method;

    new-instance v5, Lcom/ca/mas/foundation/MASRequest$Method;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ca/mas/foundation/MASRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ca/mas/foundation/MASRequest$Method;->DELETE:Lcom/ca/mas/foundation/MASRequest$Method;

    new-instance v7, Lcom/ca/mas/foundation/MASRequest$Method;

    const-string v9, "PATCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ca/mas/foundation/MASRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ca/mas/foundation/MASRequest$Method;->PATCH:Lcom/ca/mas/foundation/MASRequest$Method;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ca/mas/foundation/MASRequest$Method;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/ca/mas/foundation/MASRequest$Method;->$VALUES:[Lcom/ca/mas/foundation/MASRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$Method;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/foundation/MASRequest$Method;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/foundation/MASRequest$Method;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASRequest$Method;->$VALUES:[Lcom/ca/mas/foundation/MASRequest$Method;

    invoke-virtual {v0}, [Lcom/ca/mas/foundation/MASRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/foundation/MASRequest$Method;

    return-object v0
.end method
