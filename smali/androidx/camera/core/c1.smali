.class public final synthetic Landroidx/camera/core/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Landroidx/camera/core/x2;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/c1;->a:Landroidx/camera/core/x2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/c1;->a:Landroidx/camera/core/x2;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroidx/camera/core/x2;->l(Landroid/view/Surface;)Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method
