.class Landroidx/appcompat/widget/s$d;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/s;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/s$d;->a:Landroidx/appcompat/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/s$d;->a:Landroidx/appcompat/widget/s;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/s;->n:Landroidx/appcompat/widget/s$d;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/s$d;->a:Landroidx/appcompat/widget/s;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/s$d;->a:Landroidx/appcompat/widget/s;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/s;->n:Landroidx/appcompat/widget/s$d;

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/s;->drawableStateChanged()V

    return-void
.end method
