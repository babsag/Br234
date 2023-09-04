.class abstract Landroidx/camera/core/imagecapture/c0$a;
.super Ljava/lang/Object;
.source "JpegBytes2Disk.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)Landroidx/camera/core/imagecapture/c0$a;
    .locals 1
    .param p0    # Landroidx/camera/core/processing/Packet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;",
            "Landroidx/camera/core/ImageCapture$OutputFileOptions;",
            ")",
            "Landroidx/camera/core/imagecapture/c0$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/imagecapture/u;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/imagecapture/u;-><init>(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Landroidx/camera/core/ImageCapture$OutputFileOptions;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method abstract b()Landroidx/camera/core/processing/Packet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;"
        }
    .end annotation
.end method
