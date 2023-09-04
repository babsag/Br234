.class public final synthetic Landroidx/camera/view/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

.field public final synthetic b:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$OnFrameUpdateListener;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/q;->a:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

    iput-object p2, p0, Landroidx/camera/view/q;->b:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/view/q;->a:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

    iget-object v1, p0, Landroidx/camera/view/q;->b:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v1}, Landroidx/camera/view/e0$a;->a(Landroidx/camera/view/PreviewView$OnFrameUpdateListener;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
