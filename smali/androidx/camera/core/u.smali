.class public final synthetic Landroidx/camera/core/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;


# instance fields
.field public final synthetic a:Landroidx/camera/core/t2$b;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/t2$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/u;->a:Landroidx/camera/core/t2$b;

    return-void
.end method


# virtual methods
.method public final onImageClose(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/u;->a:Landroidx/camera/core/t2$b;

    invoke-virtual {v0, p1}, Landroidx/camera/core/t2$b;->c(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
