.class public final synthetic Landroidx/camera/core/impl/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/impl/DeferrableSurface;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/h;->a:Landroidx/camera/core/impl/DeferrableSurface;

    iput-object p2, p0, Landroidx/camera/core/impl/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/h;->a:Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v1, p0, Landroidx/camera/core/impl/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/DeferrableSurface;->d(Ljava/lang/String;)V

    return-void
.end method
