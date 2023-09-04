.class abstract Landroidx/camera/core/imagecapture/ProcessingNode$a;
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
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c(I)Landroidx/camera/core/imagecapture/ProcessingNode$a;
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/core/imagecapture/v;

    new-instance v1, Landroidx/camera/core/processing/Edge;

    invoke-direct {v1}, Landroidx/camera/core/processing/Edge;-><init>()V

    invoke-direct {v0, v1, p0}, Landroidx/camera/core/imagecapture/v;-><init>(Landroidx/camera/core/processing/Edge;I)V

    return-object v0
.end method


# virtual methods
.method abstract a()Landroidx/camera/core/processing/Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingNode$b;",
            ">;"
        }
    .end annotation
.end method

.method abstract b()I
.end method
