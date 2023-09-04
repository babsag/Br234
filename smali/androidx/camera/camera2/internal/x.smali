.class public final synthetic Landroidx/camera/camera2/internal/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/o2;

.field public final synthetic b:Landroidx/camera/camera2/internal/z2;

.field public final synthetic c:Landroidx/camera/core/impl/DeferrableSurface;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/o2;Landroidx/camera/camera2/internal/z2;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/x;->a:Landroidx/camera/camera2/internal/o2;

    iput-object p2, p0, Landroidx/camera/camera2/internal/x;->b:Landroidx/camera/camera2/internal/z2;

    iput-object p3, p0, Landroidx/camera/camera2/internal/x;->c:Landroidx/camera/core/impl/DeferrableSurface;

    iput-object p4, p0, Landroidx/camera/camera2/internal/x;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/x;->a:Landroidx/camera/camera2/internal/o2;

    iget-object v1, p0, Landroidx/camera/camera2/internal/x;->b:Landroidx/camera/camera2/internal/z2;

    iget-object v2, p0, Landroidx/camera/camera2/internal/x;->c:Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v3, p0, Landroidx/camera/camera2/internal/x;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/camera2/internal/o2;->w(Landroidx/camera/camera2/internal/z2;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)V

    return-void
.end method
