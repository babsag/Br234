.class public final synthetic Landroidx/camera/core/imagecapture/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/camera/core/imagecapture/z;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/p;->a:Landroidx/camera/core/imagecapture/z;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/p;->a:Landroidx/camera/core/imagecapture/z;

    check-cast p1, Landroidx/camera/core/imagecapture/e0;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/z;->f(Landroidx/camera/core/imagecapture/e0;)V

    return-void
.end method
