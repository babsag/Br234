.class public final Lio/flutter/embedding/android/DrawableSplashScreen;
.super Ljava/lang/Object;
.source "DrawableSplashScreen.java"

# interfaces
.implements Lio/flutter/embedding/android/SplashScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/DrawableSplashScreen$DrawableSplashScreenView;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/widget/ImageView$ScaleType;

.field private final c:J

.field private d:Lio/flutter/embedding/android/DrawableSplashScreen$DrawableSplashScreenView;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, p1, v0, v1, v2}, Lio/flutter/embedding/android/DrawableSplashScreen;-><init>(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;J)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView$ScaleType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/flutter/embedding/android/DrawableSplashScreen;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p2, p0, Lio/flutter/embedding/android/DrawableSplashScreen;->b:Landroid/widget/ImageView$ScaleType;

    .line 5
    iput-wide p3, p0, Lio/flutter/embedding/android/DrawableSplashScreen;->c:J

    return-void
.end method


# virtual methods
.method public createSplashView(Landroid/content/Context;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance p2, Lio/flutter/embedding/android/DrawableSplashScreen$DrawableSplashScreenView;

    invoke-direct {p2, p1}, Lio/flutter/embedding/android/DrawableSplashScreen$DrawableSplashScreenView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/embedding/android/DrawableSplashScreen;->d:Lio/flutter/embedding/android/DrawableSplashScreen$DrawableSplashScreenView;

    .line 2
    iget-object p1, p0, Lio/flutter/embedding/android/DrawableSplashScreen;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lio/flutter/embedding/android/DrawableSplashScreen;->b:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1, v0}, Lio/flutter/embedding/android/DrawableSplashScreen$DrawableSplashScreenView;->setSplashDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 3
    iget-object p1, p0, Lio/flutter/embedding/android/DrawableSplashScreen;->d:Lio/flutter/embedding/android/DrawableSplashScreen$DrawableSplashScreenView;

    return-object p1
.end method

.method public synthetic doesSplashViewRememberItsTransition()Z
    .locals 1

    invoke-static {p0}, Lio/flutter/embedding/android/b;->a(Lio/flutter/embedding/android/SplashScreen;)Z

    move-result v0

    return v0
.end method

.method public synthetic saveSplashScreenState()Landroid/os/Bundle;
    .locals 1

    invoke-static {p0}, Lio/flutter/embedding/android/b;->b(Lio/flutter/embedding/android/SplashScreen;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public transitionToFlutter(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/DrawableSplashScreen;->d:Lio/flutter/embedding/android/DrawableSplashScreen$DrawableSplashScreenView;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lio/flutter/embedding/android/DrawableSplashScreen;->c:J

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/flutter/embedding/android/DrawableSplashScreen$a;

    invoke-direct {v1, p0, p1}, Lio/flutter/embedding/android/DrawableSplashScreen$a;-><init>(Lio/flutter/embedding/android/DrawableSplashScreen;Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
