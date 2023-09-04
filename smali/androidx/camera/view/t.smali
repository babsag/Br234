.class public final synthetic Landroidx/camera/view/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/view/e0;

.field public final synthetic b:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/e0;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/t;->a:Landroidx/camera/view/e0;

    iput-object p2, p0, Landroidx/camera/view/t;->b:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/view/t;->a:Landroidx/camera/view/e0;

    iget-object v1, p0, Landroidx/camera/view/t;->b:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0, v1}, Landroidx/camera/view/e0;->m(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
