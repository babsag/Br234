.class Landroidx/camera/core/w2$a;
.super Ljava/lang/Object;
.source "ProcessingImageReader.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/core/w2;


# direct methods
.method constructor <init>(Landroidx/camera/core/w2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/w2$a;->a:Landroidx/camera/core/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/ImageReaderProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/w2$a;->a:Landroidx/camera/core/w2;

    invoke-virtual {v0, p1}, Landroidx/camera/core/w2;->f(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
