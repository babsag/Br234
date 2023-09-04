.class public Lbr/com/topaz/z/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/z/e;


# direct methods
.method public constructor <init>(Lbr/com/topaz/z/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/z/d;->a:Lbr/com/topaz/z/e;

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/z/b;)Z
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/z/d;->a:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/z/d;->a:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/z/c;

    invoke-virtual {v2}, Lbr/com/topaz/z/c;->a()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Lbr/com/topaz/z/b;->d()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Lbr/com/topaz/z/b;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lbr/com/topaz/z/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lbr/com/topaz/z/c;->a()I

    move-result v2

    if-lt v3, v2, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
