.class public Lbr/com/topaz/d0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/d0/b;

.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/k/b;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/k/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/d0/c;->b:Lbr/com/topaz/l/f0;

    iput-object p2, p0, Lbr/com/topaz/d0/c;->c:Lbr/com/topaz/k/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Lbr/com/topaz/d0/d;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/d0/b;->a(Ljava/lang/String;Lbr/com/topaz/d0/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbr/com/topaz/d0/b;->a(Ljava/lang/String;)Lbr/com/topaz/d0/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/d0/d;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/d0/d;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/d0/d;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Lbr/com/topaz/d0/d;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbr/com/topaz/d0/d;

    return-object p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lbr/com/topaz/d0/d;
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbr/com/topaz/d0/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/d0/c;->b:Lbr/com/topaz/l/f0;

    const-string v1, "protector_app_cache_v2"

    invoke-interface {v0, v1}, Lbr/com/topaz/l/f0;->b(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/d0/c;->c:Lbr/com/topaz/k/b;

    invoke-virtual {v1, v0}, Lbr/com/topaz/k/b;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/d0/b;

    invoke-direct {v1}, Lbr/com/topaz/d0/b;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbr/com/topaz/d0/b;->a(Lorg/json/JSONObject;)Lbr/com/topaz/d0/b;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lbr/com/topaz/d0/b;

    invoke-direct {v0}, Lbr/com/topaz/d0/b;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lbr/com/topaz/d0/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/d0/c;->c:Lbr/com/topaz/k/b;

    invoke-virtual {v1, v0}, Lbr/com/topaz/k/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/d0/c;->b:Lbr/com/topaz/l/f0;

    const-string v2, "protector_app_cache_v2"

    invoke-interface {v1, v2, v0}, Lbr/com/topaz/l/f0;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/d0/c;->a:Lbr/com/topaz/d0/b;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
