.class abstract Landroidx/camera/core/imagecapture/ProcessingNode$b;
.super Ljava/lang/Object;
.source "ProcessingNode.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/ProcessingNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/imagecapture/ProcessingNode$b;
    .locals 1
    .param p0    # Landroidx/camera/core/imagecapture/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/camera/core/imagecapture/w;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/imagecapture/w;-><init>(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageProxy;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Landroidx/camera/core/ImageProxy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method abstract b()Landroidx/camera/core/imagecapture/e0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
