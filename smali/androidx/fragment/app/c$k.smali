.class Landroidx/fragment/app/c$k;
.super Landroidx/fragment/app/c$l;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroidx/fragment/app/d$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/q$e;Landroidx/core/os/CancellationSignal;Z)V
    .locals 0
    .param p1    # Landroidx/fragment/app/q$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/c$l;-><init>(Landroidx/fragment/app/q$e;Landroidx/core/os/CancellationSignal;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/c$k;->d:Z

    .line 3
    iput-boolean p3, p0, Landroidx/fragment/app/c$k;->c:Z

    return-void
.end method


# virtual methods
.method e(Landroid/content/Context;)Landroidx/fragment/app/d$d;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c$k;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/c$k;->e:Landroidx/fragment/app/d$d;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/q$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/q$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/q$e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/q$e;->e()Landroidx/fragment/app/q$e$c;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/q$e$c;->VISIBLE:Landroidx/fragment/app/q$e$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/c$k;->c:Z

    .line 5
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/d;->c(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/d$d;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c$k;->e:Landroidx/fragment/app/d$d;

    .line 6
    iput-boolean v3, p0, Landroidx/fragment/app/c$k;->d:Z

    return-object p1
.end method
