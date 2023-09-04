.class Lcom/google/android/material/tabs/TabLayout$d$a;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$d;->k(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/tabs/TabLayout$d;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$d;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$d$a;->c:Lcom/google/android/material/tabs/TabLayout$d;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$d$a;->a:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout$d$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d$a;->c:Lcom/google/android/material/tabs/TabLayout$d;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$d;->a(Lcom/google/android/material/tabs/TabLayout$d;)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$d$a;->a:I

    invoke-static {v1, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$d$a;->c:Lcom/google/android/material/tabs/TabLayout$d;

    .line 4
    invoke-static {v2}, Lcom/google/android/material/tabs/TabLayout$d;->b(Lcom/google/android/material/tabs/TabLayout$d;)I

    move-result v2

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$d$a;->b:I

    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p1

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/tabs/TabLayout$d;->f(II)V

    return-void
.end method
