.class public final synthetic Landroidx/camera/view/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/camera/view/d0$b;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/d0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/p;->a:Landroidx/camera/view/d0$b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/p;->a:Landroidx/camera/view/d0$b;

    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    invoke-virtual {v0, p1}, Landroidx/camera/view/d0$b;->e(Landroidx/camera/core/SurfaceRequest$Result;)V

    return-void
.end method
