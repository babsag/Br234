.class public final enum Lcom/manateeworks/MWOverlay$LayerType;
.super Ljava/lang/Enum;
.source "MWOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manateeworks/MWOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/manateeworks/MWOverlay$LayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/manateeworks/MWOverlay$LayerType;

.field public static final enum LT_LINE:Lcom/manateeworks/MWOverlay$LayerType;

.field public static final enum LT_LOCATION:Lcom/manateeworks/MWOverlay$LayerType;

.field public static final enum LT_VIEWPORT:Lcom/manateeworks/MWOverlay$LayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/manateeworks/MWOverlay$LayerType;

    const-string v1, "LT_VIEWPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/manateeworks/MWOverlay$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/manateeworks/MWOverlay$LayerType;->LT_VIEWPORT:Lcom/manateeworks/MWOverlay$LayerType;

    new-instance v1, Lcom/manateeworks/MWOverlay$LayerType;

    const-string v3, "LT_LINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/manateeworks/MWOverlay$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/manateeworks/MWOverlay$LayerType;->LT_LINE:Lcom/manateeworks/MWOverlay$LayerType;

    new-instance v3, Lcom/manateeworks/MWOverlay$LayerType;

    const-string v5, "LT_LOCATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/manateeworks/MWOverlay$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/manateeworks/MWOverlay$LayerType;->LT_LOCATION:Lcom/manateeworks/MWOverlay$LayerType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/manateeworks/MWOverlay$LayerType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/manateeworks/MWOverlay$LayerType;->ENUM$VALUES:[Lcom/manateeworks/MWOverlay$LayerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/manateeworks/MWOverlay$LayerType;
    .locals 1

    .line 1
    const-class v0, Lcom/manateeworks/MWOverlay$LayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/manateeworks/MWOverlay$LayerType;

    return-object p0
.end method

.method public static values()[Lcom/manateeworks/MWOverlay$LayerType;
    .locals 4

    .line 1
    sget-object v0, Lcom/manateeworks/MWOverlay$LayerType;->ENUM$VALUES:[Lcom/manateeworks/MWOverlay$LayerType;

    array-length v1, v0

    new-array v2, v1, [Lcom/manateeworks/MWOverlay$LayerType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
