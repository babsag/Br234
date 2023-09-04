.class public Landroidx/camera/core/impl/CameraConfigs;
.super Ljava/lang/Object;
.source "CameraConfigs.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraConfigs$a;
    }
.end annotation


# static fields
.field private static final a:Landroidx/camera/core/impl/CameraConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/impl/CameraConfigs$a;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraConfigs$a;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/CameraConfigs;->a:Landroidx/camera/core/impl/CameraConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/impl/CameraConfigs;->a:Landroidx/camera/core/impl/CameraConfig;

    return-object v0
.end method
