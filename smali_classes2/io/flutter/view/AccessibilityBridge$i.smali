.class final enum Lio/flutter/view/AccessibilityBridge$i;
.super Ljava/lang/Enum;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/AccessibilityBridge$i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/view/AccessibilityBridge$i;

.field public static final enum LTR:Lio/flutter/view/AccessibilityBridge$i;

.field public static final enum RTL:Lio/flutter/view/AccessibilityBridge$i;

.field public static final enum UNKNOWN:Lio/flutter/view/AccessibilityBridge$i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/flutter/view/AccessibilityBridge$i;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/view/AccessibilityBridge$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$i;->UNKNOWN:Lio/flutter/view/AccessibilityBridge$i;

    .line 2
    new-instance v1, Lio/flutter/view/AccessibilityBridge$i;

    const-string v3, "LTR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/flutter/view/AccessibilityBridge$i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/flutter/view/AccessibilityBridge$i;->LTR:Lio/flutter/view/AccessibilityBridge$i;

    .line 3
    new-instance v3, Lio/flutter/view/AccessibilityBridge$i;

    const-string v5, "RTL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/flutter/view/AccessibilityBridge$i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/flutter/view/AccessibilityBridge$i;->RTL:Lio/flutter/view/AccessibilityBridge$i;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/flutter/view/AccessibilityBridge$i;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/flutter/view/AccessibilityBridge$i;->$VALUES:[Lio/flutter/view/AccessibilityBridge$i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lio/flutter/view/AccessibilityBridge$i;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lio/flutter/view/AccessibilityBridge$i;->UNKNOWN:Lio/flutter/view/AccessibilityBridge$i;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lio/flutter/view/AccessibilityBridge$i;->LTR:Lio/flutter/view/AccessibilityBridge$i;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lio/flutter/view/AccessibilityBridge$i;->RTL:Lio/flutter/view/AccessibilityBridge$i;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/AccessibilityBridge$i;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/view/AccessibilityBridge$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/AccessibilityBridge$i;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/AccessibilityBridge$i;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/view/AccessibilityBridge$i;->$VALUES:[Lio/flutter/view/AccessibilityBridge$i;

    invoke-virtual {v0}, [Lio/flutter/view/AccessibilityBridge$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/AccessibilityBridge$i;

    return-object v0
.end method
