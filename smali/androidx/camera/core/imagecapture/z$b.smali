.class abstract Landroidx/camera/core/imagecapture/z$b;
.super Ljava/lang/Object;
.source "CaptureNode.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/z;
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

.method static d(I)Landroidx/camera/core/imagecapture/z$b;
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/core/imagecapture/s;

    new-instance v1, Landroidx/camera/core/processing/Edge;

    invoke-direct {v1}, Landroidx/camera/core/processing/Edge;-><init>()V

    new-instance v2, Landroidx/camera/core/processing/Edge;

    invoke-direct {v2}, Landroidx/camera/core/processing/Edge;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Landroidx/camera/core/imagecapture/s;-><init>(Landroidx/camera/core/processing/Edge;Landroidx/camera/core/processing/Edge;I)V

    return-object v0
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b()Landroidx/camera/core/processing/Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end method

.method abstract c()Landroidx/camera/core/processing/Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/e0;",
            ">;"
        }
    .end annotation
.end method
