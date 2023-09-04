.class public final synthetic Landroidx/camera/view/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/view/b0$a;


# instance fields
.field public final synthetic a:Landroidx/camera/view/PreviewView$a;

.field public final synthetic b:Landroidx/camera/view/z;

.field public final synthetic c:Landroidx/camera/core/impl/CameraInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$a;Landroidx/camera/view/z;Landroidx/camera/core/impl/CameraInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/i;->a:Landroidx/camera/view/PreviewView$a;

    iput-object p2, p0, Landroidx/camera/view/i;->b:Landroidx/camera/view/z;

    iput-object p3, p0, Landroidx/camera/view/i;->c:Landroidx/camera/core/impl/CameraInternal;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/view/i;->a:Landroidx/camera/view/PreviewView$a;

    iget-object v1, p0, Landroidx/camera/view/i;->b:Landroidx/camera/view/z;

    iget-object v2, p0, Landroidx/camera/view/i;->c:Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/view/PreviewView$a;->f(Landroidx/camera/view/z;Landroidx/camera/core/impl/CameraInternal;)V

    return-void
.end method
