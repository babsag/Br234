.class public final synthetic Landroidx/camera/core/imagecapture/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/camera/core/imagecapture/ProcessingNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/ProcessingNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/d;->a:Landroidx/camera/core/imagecapture/ProcessingNode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/d;->a:Landroidx/camera/core/imagecapture/ProcessingNode;

    check-cast p1, Landroidx/camera/core/imagecapture/ProcessingNode$b;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->g(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V

    return-void
.end method
