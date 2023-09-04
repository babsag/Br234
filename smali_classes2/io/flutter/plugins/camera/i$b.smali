.class final enum Lio/flutter/plugins/camera/i$b;
.super Ljava/lang/Enum;
.source "DartMessenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/camera/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/camera/i$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/plugins/camera/i$b;

.field public static final enum CAMERA_CLOSING:Lio/flutter/plugins/camera/i$b;

.field public static final enum ERROR:Lio/flutter/plugins/camera/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/flutter/plugins/camera/i$b;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/camera/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugins/camera/i$b;->ERROR:Lio/flutter/plugins/camera/i$b;

    .line 2
    new-instance v1, Lio/flutter/plugins/camera/i$b;

    const-string v3, "CAMERA_CLOSING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/flutter/plugins/camera/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/flutter/plugins/camera/i$b;->CAMERA_CLOSING:Lio/flutter/plugins/camera/i$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/flutter/plugins/camera/i$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lio/flutter/plugins/camera/i$b;->$VALUES:[Lio/flutter/plugins/camera/i$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/camera/i$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lio/flutter/plugins/camera/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/camera/i$b;

    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/camera/i$b;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/camera/i$b;->$VALUES:[Lio/flutter/plugins/camera/i$b;

    invoke-virtual {v0}, [Lio/flutter/plugins/camera/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/plugins/camera/i$b;

    return-object v0
.end method
