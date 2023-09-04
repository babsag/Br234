.class public final synthetic Landroidx/camera/core/imagecapture/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/imagecapture/ProcessingNode;

.field public final synthetic b:Landroidx/camera/core/imagecapture/ProcessingNode$b;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/c;->a:Landroidx/camera/core/imagecapture/ProcessingNode;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/c;->b:Landroidx/camera/core/imagecapture/ProcessingNode$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/c;->a:Landroidx/camera/core/imagecapture/ProcessingNode;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/c;->b:Landroidx/camera/core/imagecapture/ProcessingNode$b;

    invoke-virtual {v0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->e(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V

    return-void
.end method
