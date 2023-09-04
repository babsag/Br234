.class public Lbr/com/topaz/o/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p3
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lbr/com/topaz/o/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rl"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lbr/com/topaz/o/c;

    invoke-direct {v4}, Lbr/com/topaz/o/c;-><init>()V

    const-string v5, "i"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/o/c;->a(Ljava/lang/String;)V

    const-string v5, "mt"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lbr/com/topaz/o/e;->a(I)Lbr/com/topaz/o/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/o/c;->a(Lbr/com/topaz/o/e;)V

    const-string v5, "r"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/o/c;->b(Ljava/lang/String;)V

    const-string v5, "bi"

    invoke-direct {p0, v3, v5, v1}, Lbr/com/topaz/o/d;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/o/c;->a(I)V

    const-string v5, "c"

    invoke-direct {p0, v3, v5, v1}, Lbr/com/topaz/o/d;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/o/c;->b(I)V

    const-string v5, "rt"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lbr/com/topaz/o/g;->a(I)Lbr/com/topaz/o/g;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/o/c;->a(Lbr/com/topaz/o/g;)V

    const-string v5, "msi"

    invoke-direct {p0, v3, v5, v1}, Lbr/com/topaz/o/d;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3}, Lbr/com/topaz/o/c;->c(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method
