.class public final synthetic Landroidx/camera/core/impl/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/impl/ConstantObservable;

.field public final synthetic b:Landroidx/camera/core/impl/Observable$Observer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/ConstantObservable;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/g;->a:Landroidx/camera/core/impl/ConstantObservable;

    iput-object p2, p0, Landroidx/camera/core/impl/g;->b:Landroidx/camera/core/impl/Observable$Observer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/g;->a:Landroidx/camera/core/impl/ConstantObservable;

    iget-object v1, p0, Landroidx/camera/core/impl/g;->b:Landroidx/camera/core/impl/Observable$Observer;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ConstantObservable;->b(Landroidx/camera/core/impl/Observable$Observer;)V

    return-void
.end method
