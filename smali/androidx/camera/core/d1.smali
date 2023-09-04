.class public final synthetic Landroidx/camera/core/d1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Landroidx/camera/core/x2;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/d1;->a:Landroidx/camera/core/x2;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/d1;->a:Landroidx/camera/core/x2;

    invoke-virtual {v0, p1}, Landroidx/camera/core/x2;->j(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
