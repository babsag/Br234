.class Landroidx/core/provider/e$a;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/e;->e(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/b;II)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/provider/e$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroidx/core/provider/FontRequest;

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/e$a;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/provider/e$a;->b:Landroid/content/Context;

    iput-object p3, p0, Landroidx/core/provider/e$a;->c:Landroidx/core/provider/FontRequest;

    iput p4, p0, Landroidx/core/provider/e$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/provider/e$e;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/provider/e$a;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/provider/e$a;->b:Landroid/content/Context;

    iget-object v2, p0, Landroidx/core/provider/e$a;->c:Landroidx/core/provider/FontRequest;

    iget v3, p0, Landroidx/core/provider/e$a;->d:I

    invoke-static {v0, v1, v2, v3}, Landroidx/core/provider/e;->c(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/e$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/core/provider/e$a;->a()Landroidx/core/provider/e$e;

    move-result-object v0

    return-object v0
.end method
