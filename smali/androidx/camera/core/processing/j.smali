.class public final synthetic Landroidx/camera/core/processing/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/processing/SettableSurface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SettableSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/j;->a:Landroidx/camera/core/processing/SettableSurface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/processing/j;->a:Landroidx/camera/core/processing/SettableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/processing/SettableSurface;->g()V

    return-void
.end method
