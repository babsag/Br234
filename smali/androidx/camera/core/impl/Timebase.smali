.class public final enum Landroidx/camera/core/impl/Timebase;
.super Ljava/lang/Enum;
.source "Timebase.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/Timebase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/Timebase;

.field public static final enum REALTIME:Landroidx/camera/core/impl/Timebase;

.field public static final enum UPTIME:Landroidx/camera/core/impl/Timebase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/camera/core/impl/Timebase;

    const-string v1, "UPTIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/Timebase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    .line 2
    new-instance v1, Landroidx/camera/core/impl/Timebase;

    const-string v3, "REALTIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/impl/Timebase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/impl/Timebase;->REALTIME:Landroidx/camera/core/impl/Timebase;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/camera/core/impl/Timebase;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Landroidx/camera/core/impl/Timebase;->$VALUES:[Landroidx/camera/core/impl/Timebase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/Timebase;
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/core/impl/Timebase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/Timebase;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/Timebase;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/Timebase;->$VALUES:[Landroidx/camera/core/impl/Timebase;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/Timebase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/Timebase;

    return-object v0
.end method
