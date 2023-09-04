.class public Lbr/com/topaz/u/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/u/c$a;
    }
.end annotation


# instance fields
.field private final a:Lbr/com/topaz/t/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/u/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/u/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lbr/com/topaz/u/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lbr/com/topaz/u/b;

.field f:Lbr/com/topaz/u/c$a;


# direct methods
.method public constructor <init>(Lbr/com/topaz/t/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/u/c;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/u/c;->c:Ljava/util/List;

    iput-object p1, p0, Lbr/com/topaz/u/c;->a:Lbr/com/topaz/t/b;

    return-void
.end method


# virtual methods
.method public a()Lbr/com/topaz/u/c$a;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u/c;->f:Lbr/com/topaz/u/c$a;

    return-object v0
.end method

.method public a(Lbr/com/topaz/u/c$a;)Lbr/com/topaz/u/c;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/u/c;->f:Lbr/com/topaz/u/c$a;

    return-object p0
.end method

.method public a(IJ)V
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/u/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    if-le p1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    if-le p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v3

    :cond_0
    add-int/lit8 v1, p1, -0x2

    :goto_0
    if-lez v1, :cond_1

    new-instance v4, Lbr/com/topaz/u/d;

    invoke-direct {v4, p0, p2, p3}, Lbr/com/topaz/u/d;-><init>(Lbr/com/topaz/u/c;J)V

    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    if-le p1, v2, :cond_2

    add-int/lit8 v1, p1, -0x2

    :goto_1
    if-lez v1, :cond_2

    new-instance v2, Lbr/com/topaz/u/d;

    invoke-direct {v2, p0, p2, p3}, Lbr/com/topaz/u/d;-><init>(Lbr/com/topaz/u/c;J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    if-le p1, v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Lbr/com/topaz/u/d;

    invoke-direct {v2, p0, p2, p3}, Lbr/com/topaz/u/d;-><init>(Lbr/com/topaz/u/c;J)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    if-lez p1, :cond_4

    new-instance p1, Lbr/com/topaz/u/d;

    invoke-direct {p1, p0, p2, p3}, Lbr/com/topaz/u/d;-><init>(Lbr/com/topaz/u/c;J)V

    const/4 p2, 0x0

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lbr/com/topaz/u/c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/u/c;->d:Ljava/util/Iterator;

    return-void
.end method

.method public a(IZ)V
    .locals 4

    if-lez p1, :cond_3

    iget-object v0, p0, Lbr/com/topaz/u/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lbr/com/topaz/u/c;->b:Ljava/util/List;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/topaz/u/b;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbr/com/topaz/u/c;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lbr/com/topaz/u/c;->c:Ljava/util/List;

    iget-object v1, p0, Lbr/com/topaz/u/c;->b:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    iget-object p1, p0, Lbr/com/topaz/u/c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/u/c;->d:Ljava/util/Iterator;

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Lbr/com/topaz/u/b;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;IZ)V"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/u/c;->a:Lbr/com/topaz/t/b;

    invoke-virtual {v0, p1, p2, p3}, Lbr/com/topaz/t/b;->a(Ljava/util/List;IZ)V

    return-void
.end method

.method public b()Lbr/com/topaz/u/b;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u/c;->e:Lbr/com/topaz/u/b;

    return-object v0
.end method

.method public b(Lbr/com/topaz/u/b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/u/c;->e:Lbr/com/topaz/u/b;

    return-void
.end method

.method public c()Lbr/com/topaz/t/b;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u/c;->a:Lbr/com/topaz/t/b;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u/c;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public e()Lbr/com/topaz/u/b;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u/c;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/u/b;

    invoke-virtual {p0, v0}, Lbr/com/topaz/u/c;->b(Lbr/com/topaz/u/b;)V

    invoke-virtual {p0}, Lbr/com/topaz/u/c;->b()Lbr/com/topaz/u/b;

    move-result-object v0

    return-object v0
.end method
