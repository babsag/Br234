.class Landroidx/core/provider/e$b;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/e;->d(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/b;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/core/provider/e$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/provider/b;


# direct methods
.method constructor <init>(Landroidx/core/provider/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/e$b;->a:Landroidx/core/provider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/provider/e$e;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroidx/core/provider/e$e;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Landroidx/core/provider/e$e;-><init>(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/core/provider/e$b;->a:Landroidx/core/provider/b;

    invoke-virtual {v0, p1}, Landroidx/core/provider/b;->b(Landroidx/core/provider/e$e;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/provider/e$e;

    invoke-virtual {p0, p1}, Landroidx/core/provider/e$b;->a(Landroidx/core/provider/e$e;)V

    return-void
.end method
