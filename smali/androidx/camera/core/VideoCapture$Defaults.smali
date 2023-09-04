.class public final Landroidx/camera/core/VideoCapture$Defaults;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/VideoCaptureConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroid/util/Size;

.field private static final b:Landroidx/camera/core/impl/VideoCaptureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/VideoCapture$Defaults;->a:Landroid/util/Size;

    .line 2
    new-instance v1, Landroidx/camera/core/VideoCapture$Builder;

    invoke-direct {v1}, Landroidx/camera/core/VideoCapture$Builder;-><init>()V

    const/16 v2, 0x1e

    .line 3
    invoke-virtual {v1, v2}, Landroidx/camera/core/VideoCapture$Builder;->setVideoFrameRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/high16 v2, 0x800000

    .line 4
    invoke-virtual {v1, v2}, Landroidx/camera/core/VideoCapture$Builder;->setBitRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Landroidx/camera/core/VideoCapture$Builder;->setIFrameInterval(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const v3, 0xfa00

    .line 6
    invoke-virtual {v1, v3}, Landroidx/camera/core/VideoCapture$Builder;->setAudioBitRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/16 v3, 0x1f40

    .line 7
    invoke-virtual {v1, v3}, Landroidx/camera/core/VideoCapture$Builder;->setAudioSampleRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v2}, Landroidx/camera/core/VideoCapture$Builder;->setAudioChannelCount(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/16 v3, 0x400

    .line 9
    invoke-virtual {v1, v3}, Landroidx/camera/core/VideoCapture$Builder;->setAudioMinBufferSize(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Landroidx/camera/core/VideoCapture$Builder;->setMaxResolution(Landroid/util/Size;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 11
    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v2}, Landroidx/camera/core/VideoCapture$Builder;->setTargetAspectRatio(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/VideoCaptureConfig;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/VideoCapture$Defaults;->b:Landroidx/camera/core/impl/VideoCaptureConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Landroidx/camera/core/impl/Config;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$Defaults;->getConfig()Landroidx/camera/core/impl/VideoCaptureConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/VideoCaptureConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget-object v0, Landroidx/camera/core/VideoCapture$Defaults;->b:Landroidx/camera/core/impl/VideoCaptureConfig;

    return-object v0
.end method
