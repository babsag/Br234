.class public final synthetic Landroidx/camera/core/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/t2;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/t2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/v;->a:Landroidx/camera/core/t2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/v;->a:Landroidx/camera/core/t2;

    invoke-static {v0}, Landroidx/camera/core/t2$b;->a(Landroidx/camera/core/t2;)V

    return-void
.end method
