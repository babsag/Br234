.class public final synthetic Landroidx/camera/view/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/view/RotationProvider$b;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/RotationProvider$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/m;->a:Landroidx/camera/view/RotationProvider$b;

    iput p2, p0, Landroidx/camera/view/m;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/view/m;->a:Landroidx/camera/view/RotationProvider$b;

    iget v1, p0, Landroidx/camera/view/m;->b:I

    invoke-virtual {v0, v1}, Landroidx/camera/view/RotationProvider$b;->c(I)V

    return-void
.end method
