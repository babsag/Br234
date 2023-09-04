.class Lio/flutter/plugin/platform/f$a;
.super Ljava/lang/Object;
.source "VirtualDisplayController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/f;->i(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lio/flutter/plugin/platform/f;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/f;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/platform/f$a;->c:Lio/flutter/plugin/platform/f;

    iput-object p2, p0, Lio/flutter/plugin/platform/f$a;->a:Landroid/view/View;

    iput-object p3, p0, Lio/flutter/plugin/platform/f$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/flutter/plugin/platform/f$a;->a:Landroid/view/View;

    new-instance v0, Lio/flutter/plugin/platform/f$a$a;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/f$a$a;-><init>(Lio/flutter/plugin/platform/f$a;)V

    invoke-static {p1, v0}, Lio/flutter/plugin/platform/f$b;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lio/flutter/plugin/platform/f$a;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
