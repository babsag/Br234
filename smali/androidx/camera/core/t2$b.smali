.class Landroidx/camera/core/t2$b;
.super Landroidx/camera/core/ForwardingImageProxy;
.source "ImageAnalysisNonBlockingAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/t2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/camera/core/t2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/t2;)V
    .locals 0
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/t2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/ForwardingImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/core/t2$b;->c:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Landroidx/camera/core/u;

    invoke-direct {p1, p0}, Landroidx/camera/core/u;-><init>(Landroidx/camera/core/t2$b;)V

    invoke-virtual {p0, p1}, Landroidx/camera/core/ForwardingImageProxy;->addOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-void
.end method

.method static synthetic a(Landroidx/camera/core/t2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/t2;->y()V

    return-void
.end method

.method private synthetic b(Landroidx/camera/core/ImageProxy;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/camera/core/t2$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/t2;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Landroidx/camera/core/t2;->t:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/v;

    invoke-direct {v1, p1}, Landroidx/camera/core/v;-><init>(Landroidx/camera/core/t2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic c(Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/t2$b;->b(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
