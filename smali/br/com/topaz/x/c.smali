.class public Lbr/com/topaz/x/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/u0/r;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/x/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lbr/com/topaz/x/b;


# direct methods
.method public constructor <init>(Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/x/c;->a:Lbr/com/topaz/u0/r;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/x/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbr/com/topaz/x/c;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ui"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/x/c;->b:Ljava/util/List;

    new-instance v3, Lbr/com/topaz/x/b;

    invoke-direct {v3}, Lbr/com/topaz/x/b;-><init>()V

    invoke-virtual {v3, v1}, Lbr/com/topaz/x/b;->a(Lorg/json/JSONObject;)Lbr/com/topaz/x/b;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbr/com/topaz/x/b;
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/x/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/x/b;

    invoke-virtual {v1}, Lbr/com/topaz/x/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v1}, Lbr/com/topaz/x/b;->b()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/x/c;->a:Lbr/com/topaz/u0/r;

    const/16 v4, 0x57

    invoke-interface {v3, v4}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lbr/com/topaz/x/c;->c:Lbr/com/topaz/x/b;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lbr/com/topaz/x/c;->c:Lbr/com/topaz/x/b;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lbr/com/topaz/x/b;

    invoke-direct {p1}, Lbr/com/topaz/x/b;-><init>()V

    return-object p1
.end method
