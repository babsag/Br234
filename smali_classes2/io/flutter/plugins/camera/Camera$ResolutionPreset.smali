.class public final enum Lio/flutter/plugins/camera/Camera$ResolutionPreset;
.super Ljava/lang/Enum;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResolutionPreset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/camera/Camera$ResolutionPreset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/plugins/camera/Camera$ResolutionPreset;

.field public static final enum high:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

.field public static final enum low:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

.field public static final enum max:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

.field public static final enum medium:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

.field public static final enum ultraHigh:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

.field public static final enum veryHigh:Lio/flutter/plugins/camera/Camera$ResolutionPreset;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    const-string v1, "low"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/camera/Camera$ResolutionPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugins/camera/Camera$ResolutionPreset;->low:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    .line 2
    new-instance v1, Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    const-string v3, "medium"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/flutter/plugins/camera/Camera$ResolutionPreset;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/flutter/plugins/camera/Camera$ResolutionPreset;->medium:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    .line 3
    new-instance v3, Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    const-string v5, "high"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/flutter/plugins/camera/Camera$ResolutionPreset;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/flutter/plugins/camera/Camera$ResolutionPreset;->high:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    .line 4
    new-instance v5, Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    const-string v7, "veryHigh"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/flutter/plugins/camera/Camera$ResolutionPreset;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/flutter/plugins/camera/Camera$ResolutionPreset;->veryHigh:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    .line 5
    new-instance v7, Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    const-string v9, "ultraHigh"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/flutter/plugins/camera/Camera$ResolutionPreset;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/flutter/plugins/camera/Camera$ResolutionPreset;->ultraHigh:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    .line 6
    new-instance v9, Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    const-string v11, "max"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/flutter/plugins/camera/Camera$ResolutionPreset;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/flutter/plugins/camera/Camera$ResolutionPreset;->max:Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lio/flutter/plugins/camera/Camera$ResolutionPreset;->$VALUES:[Lio/flutter/plugins/camera/Camera$ResolutionPreset;

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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/camera/Camera$ResolutionPreset;
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
    const-class v0, Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/camera/Camera$ResolutionPreset;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/camera/Camera$ResolutionPreset;->$VALUES:[Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    invoke-virtual {v0}, [Lio/flutter/plugins/camera/Camera$ResolutionPreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/plugins/camera/Camera$ResolutionPreset;

    return-object v0
.end method
