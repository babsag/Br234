.class Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/WindowInsetsAnimationCompat;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/view/WindowInsetsAnimationCompat$a$a;


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsAnimationCompat$a$a;Landroidx/core/view/WindowInsetsAnimationCompat;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->c:Landroidx/core/view/WindowInsetsAnimationCompat$a$a;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    iput-object p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->b:Landroid/view/View;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    invoke-static {p1, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->l(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;)V

    return-void
.end method
