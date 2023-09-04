.class public final synthetic Landroidx/camera/core/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/p2;

.field public final synthetic b:Landroidx/camera/core/ImageProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/p2;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/l;->a:Landroidx/camera/core/p2;

    iput-object p2, p0, Landroidx/camera/core/l;->b:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/l;->a:Landroidx/camera/core/p2;

    iget-object v1, p0, Landroidx/camera/core/l;->b:Landroidx/camera/core/ImageProxy;

    invoke-virtual {v0, v1}, Landroidx/camera/core/p2;->g(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
