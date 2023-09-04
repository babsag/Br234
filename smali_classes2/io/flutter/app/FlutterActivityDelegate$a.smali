.class Lio/flutter/app/FlutterActivityDelegate$a;
.super Ljava/lang/Object;
.source "FlutterActivityDelegate.java"

# interfaces
.implements Lio/flutter/view/FlutterView$FirstFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/app/FlutterActivityDelegate;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/app/FlutterActivityDelegate;


# direct methods
.method constructor <init>(Lio/flutter/app/FlutterActivityDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/app/FlutterActivityDelegate$a;->a:Lio/flutter/app/FlutterActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate$a;->a:Lio/flutter/app/FlutterActivityDelegate;

    .line 2
    invoke-static {v0}, Lio/flutter/app/FlutterActivityDelegate;->a(Lio/flutter/app/FlutterActivityDelegate;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/flutter/app/FlutterActivityDelegate$a$a;

    invoke-direct {v1, p0}, Lio/flutter/app/FlutterActivityDelegate$a$a;-><init>(Lio/flutter/app/FlutterActivityDelegate$a;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 6
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate$a;->a:Lio/flutter/app/FlutterActivityDelegate;

    invoke-static {v0}, Lio/flutter/app/FlutterActivityDelegate;->c(Lio/flutter/app/FlutterActivityDelegate;)Lio/flutter/view/FlutterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/view/FlutterView;->removeFirstFrameListener(Lio/flutter/view/FlutterView$FirstFrameListener;)V

    return-void
.end method
