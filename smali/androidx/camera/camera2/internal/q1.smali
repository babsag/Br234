.class public final synthetic Landroidx/camera/camera2/internal/q1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/impl/DeferrableSurface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/q1;->a:Landroidx/camera/core/impl/DeferrableSurface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/q1;->a:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-static {v0}, Landroidx/camera/camera2/internal/h3;->l(Landroidx/camera/core/impl/DeferrableSurface;)V

    return-void
.end method
