.class public Lbr/com/topaz/o0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/o0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lbr/com/topaz/o0/g;->b(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lbr/com/topaz/o0/g;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o0/g;->g:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lbr/com/topaz/o0/a;
    .locals 3

    new-instance v0, Lbr/com/topaz/o0/a;

    invoke-direct {v0, p1}, Lbr/com/topaz/o0/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbr/com/topaz/o0/g;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lbr/com/topaz/o0/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lbr/com/topaz/o0/a;->a(I)V

    :cond_1
    invoke-virtual {p0}, Lbr/com/topaz/o0/g;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lbr/com/topaz/o0/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lbr/com/topaz/o0/a;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lbr/com/topaz/o0/a;->a(I)V

    :cond_2
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/o0/g;
    .locals 8

    const-string v0, "t"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "e"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lbr/com/topaz/o0/g;->a(Z)V

    const-string v2, "i"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lbr/com/topaz/o0/g;->a(J)V

    const-string v2, "mr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lbr/com/topaz/o0/g;->d(I)V

    const-string v2, "mu"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lbr/com/topaz/o0/g;->e(I)V

    const-string v2, "d"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lbr/com/topaz/o0/g;->c(I)V

    const-string v2, "mc"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lbr/com/topaz/o0/g;->b(I)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lbr/com/topaz/o0/g;->a(I)V

    invoke-virtual {p0}, Lbr/com/topaz/o0/g;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "el"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0}, Lbr/com/topaz/o0/g;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lbr/com/topaz/o0/g;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "il"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0}, Lbr/com/topaz/o0/g;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "n"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lbr/com/topaz/o0/a;

    invoke-direct {v5, v4}, Lbr/com/topaz/o0/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lbr/com/topaz/o0/a;->b(I)V

    const-string v4, "l"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lbr/com/topaz/o0/a;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lbr/com/topaz/o0/g;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    invoke-virtual {p0, v1}, Lbr/com/topaz/o0/g;->a(Z)V

    :cond_2
    return-object p0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o0/g;->g:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lbr/com/topaz/o0/g;->b:J

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbr/com/topaz/o0/g;->h:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lbr/com/topaz/o0/g;->a:Z

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/o0/g;->b:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o0/g;->f:I

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/o0/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbr/com/topaz/o0/g;->i:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/o0/g;->h:Ljava/util/List;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o0/g;->e:I

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/o0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/o0/g;->i:Ljava/util/List;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o0/g;->c:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o0/g;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o0/g;->d:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o0/g;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o0/g;->d:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/o0/g;->a:Z

    return v0
.end method
