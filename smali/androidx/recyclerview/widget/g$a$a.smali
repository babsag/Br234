.class Landroidx/recyclerview/widget/g$a$a;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/g$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/g$a$a;->a:Landroidx/recyclerview/widget/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g$a$a;->a:Landroidx/recyclerview/widget/g$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/g$c;->a()Landroidx/recyclerview/widget/g$d;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget v1, v0, Landroidx/recyclerview/widget/g$d;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/recyclerview/widget/g$d;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreadUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/g$a$a;->a:Landroidx/recyclerview/widget/g$a;

    iget-object v1, v1, Landroidx/recyclerview/widget/g$a;->d:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroidx/recyclerview/widget/g$d;->e:I

    iget v0, v0, Landroidx/recyclerview/widget/g$d;->f:I

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/g$d;->j:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/TileList$Tile;

    .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/g$a$a;->a:Landroidx/recyclerview/widget/g$a;

    iget-object v2, v2, Landroidx/recyclerview/widget/g$a;->d:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v0, v0, Landroidx/recyclerview/widget/g$d;->e:I

    invoke-interface {v2, v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/g$a$a;->a:Landroidx/recyclerview/widget/g$a;

    iget-object v1, v1, Landroidx/recyclerview/widget/g$a;->d:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroidx/recyclerview/widget/g$d;->e:I

    iget v0, v0, Landroidx/recyclerview/widget/g$d;->f:I

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 8
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/g$a$a;->a:Landroidx/recyclerview/widget/g$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/g$c;->a()Landroidx/recyclerview/widget/g$d;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-void
.end method
