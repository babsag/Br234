.class public Lbr/com/topaz/d0/d;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1}, Lbr/com/topaz/d0/d;->g(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lbr/com/topaz/d0/d;->i(Ljava/lang/String;)V

    invoke-static {p3}, Lbr/com/topaz/d0/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbr/com/topaz/d0/d;->d(Ljava/lang/String;)V

    invoke-static {p4}, Lbr/com/topaz/d0/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbr/com/topaz/d0/d;->b(Ljava/lang/String;)V

    invoke-static {p5}, Lbr/com/topaz/d0/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbr/com/topaz/d0/d;->f(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lbr/com/topaz/d0/d;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p7}, Lbr/com/topaz/d0/d;->e(Ljava/lang/String;)V

    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbr/com/topaz/d0/d;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p9}, Lbr/com/topaz/d0/d;->j(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1}, Lbr/com/topaz/d0/d;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lbr/com/topaz/c0/g;Lbr/com/topaz/heartbeat/utils/OFDException;)Lbr/com/topaz/d0/d;
    .locals 11

    new-instance v0, Lbr/com/topaz/c0/a;

    invoke-direct {v0, p1}, Lbr/com/topaz/c0/a;-><init>(Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->c()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->e()Ljava/util/Date;

    move-result-object v6

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/c0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/c0/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->h()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/c0/a;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbr/com/topaz/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->b()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->b()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->j()Ljava/lang/String;

    move-result-object v10

    new-instance p1, Lbr/com/topaz/d0/d;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lbr/com/topaz/d0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/d0/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/d0/d;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbr/com/topaz/c0/g;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lbr/com/topaz/d0/d;->k(Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lbr/com/topaz/d0/d;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    :cond_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    const-string v0, "a"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "c"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "a"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/d0/d;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "detectionDate"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const-string v0, "lastUpdate"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    const-string v0, "o"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "installationDate"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    const-string v0, "w"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "i"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lbr/com/topaz/d0/d;

    invoke-virtual {p1}, Lbr/com/topaz/d0/d;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lbr/com/topaz/d0/d;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lbr/com/topaz/d0/d;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lbr/com/topaz/d0/d;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lastUpdate"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "md"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "o"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sh"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "t"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "w"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
