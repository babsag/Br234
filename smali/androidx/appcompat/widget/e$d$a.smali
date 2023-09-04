.class Landroidx/appcompat/widget/e$d$a;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/e$d;-><init>(Landroidx/appcompat/widget/e;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Landroidx/appcompat/widget/e;

.field final synthetic k:Landroidx/appcompat/widget/e$d;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/e$d;Landroid/view/View;Landroidx/appcompat/widget/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/e$d$a;->k:Landroidx/appcompat/widget/e$d;

    iput-object p3, p0, Landroidx/appcompat/widget/e$d$a;->j:Landroidx/appcompat/widget/e;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e$d$a;->k:Landroidx/appcompat/widget/e$d;

    iget-object v0, v0, Landroidx/appcompat/widget/e$d;->d:Landroidx/appcompat/widget/e;

    iget-object v0, v0, Landroidx/appcompat/widget/e;->s:Landroidx/appcompat/widget/e$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/c;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e$d$a;->k:Landroidx/appcompat/widget/e$d;

    iget-object v0, v0, Landroidx/appcompat/widget/e$d;->d:Landroidx/appcompat/widget/e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->u()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e$d$a;->k:Landroidx/appcompat/widget/e$d;

    iget-object v0, v0, Landroidx/appcompat/widget/e$d;->d:Landroidx/appcompat/widget/e;

    iget-object v1, v0, Landroidx/appcompat/widget/e;->u:Landroidx/appcompat/widget/e$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->k()Z

    const/4 v0, 0x1

    return v0
.end method
