.class Landroidx/camera/core/t2$a;
.super Ljava/lang/Object;
.source "ImageAnalysisNonBlockingAnalyzer.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/t2;->n(Landroidx/camera/core/ImageProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/core/t2$b;

.field final synthetic b:Landroidx/camera/core/t2;


# direct methods
.method constructor <init>(Landroidx/camera/core/t2;Landroidx/camera/core/t2$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/t2$a;->b:Landroidx/camera/core/t2;

    iput-object p2, p0, Landroidx/camera/core/t2$a;->a:Landroidx/camera/core/t2$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/core/t2$a;->a:Landroidx/camera/core/t2$b;

    invoke-virtual {p1}, Landroidx/camera/core/ForwardingImageProxy;->close()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/core/t2$a;->a(Ljava/lang/Void;)V

    return-void
.end method
