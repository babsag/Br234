.class Lcom/google/android/material/transition/MaterialContainerTransform$a;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/MaterialContainerTransform;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field final synthetic b:Lcom/google/android/material/transition/MaterialContainerTransform;


# direct methods
.method constructor <init>(Lcom/google/android/material/transition/MaterialContainerTransform;Lcom/google/android/material/transition/MaterialContainerTransform$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$a;->b:Lcom/google/android/material/transition/MaterialContainerTransform;

    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$a;->a:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$a;->a:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->a(Lcom/google/android/material/transition/MaterialContainerTransform$d;F)V

    return-void
.end method
