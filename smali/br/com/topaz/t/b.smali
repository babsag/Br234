.class public Lbr/com/topaz/t/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final transient a:I

.field private final b:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbr/com/topaz/t/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbr/com/topaz/t/b;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/t/b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;IZ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lbr/com/topaz/t/b;->b:Ljava/util/ArrayList;

    new-instance p3, Lbr/com/topaz/t/a;

    invoke-direct {p3, p2}, Lbr/com/topaz/t/a;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/face/Face;

    iget-object v1, p0, Lbr/com/topaz/t/b;->b:Ljava/util/ArrayList;

    new-instance v2, Lbr/com/topaz/t/a;

    invoke-direct {v2, v0, p2, p3}, Lbr/com/topaz/t/a;-><init>(Lcom/google/mlkit/vision/face/Face;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbr/com/topaz/t/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lbr/com/topaz/t/b;->a:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lbr/com/topaz/t/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lbr/com/topaz/t/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/t/a;

    invoke-virtual {v1}, Lbr/com/topaz/t/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lbr/com/topaz/t/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method
