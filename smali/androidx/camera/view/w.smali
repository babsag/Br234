.class public final synthetic Landroidx/camera/view/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/view/d0;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/w;->a:Landroidx/camera/view/d0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/w;->a:Landroidx/camera/view/d0;

    invoke-virtual {v0}, Landroidx/camera/view/d0;->o()V

    return-void
.end method
