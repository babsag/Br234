.class Landroidx/fragment/app/q$a;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/q;->a(Landroidx/fragment/app/q$e$c;Landroidx/fragment/app/q$e$b;Landroidx/fragment/app/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/q$d;

.field final synthetic b:Landroidx/fragment/app/q;


# direct methods
.method constructor <init>(Landroidx/fragment/app/q;Landroidx/fragment/app/q$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/q$a;->b:Landroidx/fragment/app/q;

    iput-object p2, p0, Landroidx/fragment/app/q$a;->a:Landroidx/fragment/app/q$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q$a;->b:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/q$a;->a:Landroidx/fragment/app/q$d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/q$a;->a:Landroidx/fragment/app/q$d;

    invoke-virtual {v0}, Landroidx/fragment/app/q$e;->e()Landroidx/fragment/app/q$e$c;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/q$a;->a:Landroidx/fragment/app/q$d;

    invoke-virtual {v1}, Landroidx/fragment/app/q$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/q$e$c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
