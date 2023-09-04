.class Landroidx/appcompat/widget/e$b;
.super Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/e;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/e$b;->a:Landroidx/appcompat/widget/e;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e$b;->a:Landroidx/appcompat/widget/e;

    iget-object v0, v0, Landroidx/appcompat/widget/e;->t:Landroidx/appcompat/widget/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
