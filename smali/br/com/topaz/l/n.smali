.class public Lbr/com/topaz/l/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbr/com/topaz/l/m;

.field private final b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private final c:Lbr/com/topaz/u0/r;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/m;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/l/n;->a:Lbr/com/topaz/l/m;

    iput-object p2, p0, Lbr/com/topaz/l/n;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p3, p0, Lbr/com/topaz/l/n;->c:Lbr/com/topaz/u0/r;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/l/n;->a:Lbr/com/topaz/l/m;

    const-string v1, "KLJLKROZPXIUCIU"

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/m;->b(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/n;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iget-object v2, p0, Lbr/com/topaz/l/n;->c:Lbr/com/topaz/u0/r;

    const/16 v3, 0xae

    invoke-interface {v2, v3}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->c([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/l/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/com/topaz/l/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lbr/com/topaz/l/n;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timestamp"

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x1e

    if-le p1, p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lbr/com/topaz/l/n;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lbr/com/topaz/l/n;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iget-object p3, p0, Lbr/com/topaz/l/n;->c:Lbr/com/topaz/u0/r;

    const/16 v0, 0xae

    invoke-interface {p3, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iget-object p2, p0, Lbr/com/topaz/l/n;->a:Lbr/com/topaz/l/m;

    const-string p3, "KLJLKROZPXIUCIU"

    invoke-virtual {p2, p3, p1}, Lbr/com/topaz/l/m;->a(Ljava/lang/String;[B)V

    return-void
.end method
