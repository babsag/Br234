.class Lio/flutter/app/FlutterActivityDelegate$a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlutterActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/app/FlutterActivityDelegate$a;->onFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/app/FlutterActivityDelegate$a;


# direct methods
.method constructor <init>(Lio/flutter/app/FlutterActivityDelegate$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/app/FlutterActivityDelegate$a$a;->a:Lio/flutter/app/FlutterActivityDelegate$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate$a$a;->a:Lio/flutter/app/FlutterActivityDelegate$a;

    iget-object p1, p1, Lio/flutter/app/FlutterActivityDelegate$a;->a:Lio/flutter/app/FlutterActivityDelegate;

    invoke-static {p1}, Lio/flutter/app/FlutterActivityDelegate;->a(Lio/flutter/app/FlutterActivityDelegate;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate$a$a;->a:Lio/flutter/app/FlutterActivityDelegate$a;

    iget-object v0, v0, Lio/flutter/app/FlutterActivityDelegate$a;->a:Lio/flutter/app/FlutterActivityDelegate;

    .line 2
    invoke-static {v0}, Lio/flutter/app/FlutterActivityDelegate;->a(Lio/flutter/app/FlutterActivityDelegate;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate$a$a;->a:Lio/flutter/app/FlutterActivityDelegate$a;

    iget-object p1, p1, Lio/flutter/app/FlutterActivityDelegate$a;->a:Lio/flutter/app/FlutterActivityDelegate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/app/FlutterActivityDelegate;->b(Lio/flutter/app/FlutterActivityDelegate;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
