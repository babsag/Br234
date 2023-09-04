.class Lbr/com/topaz/c0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/c0/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbr/com/topaz/c0/d;


# direct methods
.method constructor <init>(Lbr/com/topaz/c0/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    iput-object p2, p0, Lbr/com/topaz/c0/d$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    invoke-static {v0}, Lbr/com/topaz/c0/d;->a(Lbr/com/topaz/c0/d;)Lbr/com/topaz/d0/c;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/d0/c;->c()V

    iget-object v0, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    invoke-static {v0}, Lbr/com/topaz/c0/d;->b(Lbr/com/topaz/c0/d;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/c0/d$a;->a:Ljava/lang/String;

    const-string v2, "PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    invoke-static {v1}, Lbr/com/topaz/c0/d;->c(Lbr/com/topaz/c0/d;)Lbr/com/topaz/d0/a;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/d0/a;->b()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    invoke-static {v1}, Lbr/com/topaz/c0/d;->c(Lbr/com/topaz/c0/d;)Lbr/com/topaz/d0/a;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/d0/a;->a()Ljava/util/List;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    invoke-virtual {v2, v1}, Lbr/com/topaz/c0/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    invoke-static {v3, v1}, Lbr/com/topaz/c0/d;->a(Lbr/com/topaz/c0/d;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->A()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->A()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    div-int v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    move v7, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    if-ge v7, v3, :cond_1

    move v9, v7

    goto :goto_2

    :cond_1
    move v9, v3

    :goto_2
    invoke-interface {v2, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    add-int/2addr v8, v0

    add-int/2addr v7, v0

    iget-object v10, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    iget-object v11, p0, Lbr/com/topaz/c0/d$a;->a:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Lbr/com/topaz/c0/d;->a(Ljava/util/List;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    div-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    move v6, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v5, v3, :cond_5

    if-ge v6, v2, :cond_3

    move v7, v6

    goto :goto_4

    :cond_3
    move v7, v2

    :goto_4
    invoke-interface {v1, v4, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    add-int/2addr v4, v0

    add-int/2addr v6, v0

    iget-object v8, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    invoke-virtual {v8, v7}, Lbr/com/topaz/c0/d;->c(Ljava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    iget-object v3, p0, Lbr/com/topaz/c0/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lbr/com/topaz/c0/d;->a(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    invoke-virtual {v0, v1}, Lbr/com/topaz/c0/d;->c(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/c0/d$a;->b:Lbr/com/topaz/c0/d;

    invoke-static {v1}, Lbr/com/topaz/c0/d;->d(Lbr/com/topaz/c0/d;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object v1

    const-string v2, "011"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_5
    :goto_5
    return-void
.end method
