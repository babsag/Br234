.class Landroidx/appcompat/widget/e$c;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Landroidx/appcompat/widget/e$e;

.field final synthetic b:Landroidx/appcompat/widget/e;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/e;Landroidx/appcompat/widget/e$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/e$c;->b:Landroidx/appcompat/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/e$c;->a:Landroidx/appcompat/widget/e$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e$c;->b:Landroidx/appcompat/widget/e;

    invoke-static {v0}, Landroidx/appcompat/widget/e;->e(Landroidx/appcompat/widget/e;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/e$c;->b:Landroidx/appcompat/widget/e;

    invoke-static {v0}, Landroidx/appcompat/widget/e;->f(Landroidx/appcompat/widget/e;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->changeMenuMode()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/e$c;->b:Landroidx/appcompat/widget/e;

    invoke-static {v0}, Landroidx/appcompat/widget/e;->g(Landroidx/appcompat/widget/e;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/e$c;->a:Landroidx/appcompat/widget/e$e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/e$c;->b:Landroidx/appcompat/widget/e;

    iget-object v1, p0, Landroidx/appcompat/widget/e$c;->a:Landroidx/appcompat/widget/e$e;

    iput-object v1, v0, Landroidx/appcompat/widget/e;->s:Landroidx/appcompat/widget/e$e;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/e$c;->b:Landroidx/appcompat/widget/e;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/e;->u:Landroidx/appcompat/widget/e$c;

    return-void
.end method
