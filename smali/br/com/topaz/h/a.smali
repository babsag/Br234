.class public Lbr/com/topaz/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/h/a$c;,
        Lbr/com/topaz/h/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/h/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lbr/com/topaz/u0/r;


# direct methods
.method public constructor <init>(Lbr/com/topaz/u0/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/h/a;->h:Ljava/util/List;

    const/16 v0, 0x3d

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/h/a;->a:Ljava/lang/String;

    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/h/a;->b:Ljava/lang/String;

    const/16 v0, 0x3f

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/h/a;->c:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/h/a;->d:Ljava/lang/String;

    const/16 v0, 0x41

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/h/a;->e:Ljava/lang/String;

    const/16 v0, 0x42

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/h/a;->f:Ljava/lang/String;

    iput-object p1, p0, Lbr/com/topaz/h/a;->i:Lbr/com/topaz/u0/r;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/h/a;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/h/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/h/a;->g:Z

    iget-object v0, p0, Lbr/com/topaz/h/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/h/a;->h:Ljava/util/List;

    new-instance v9, Lbr/com/topaz/h/a$b;

    iget-object v3, p0, Lbr/com/topaz/h/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v3, p0, Lbr/com/topaz/h/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lbr/com/topaz/h/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v3, p0, Lbr/com/topaz/h/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lbr/com/topaz/h/a$b;-><init>(Lbr/com/topaz/h/a;ILjava/lang/String;II)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/h/a;->h:Ljava/util/List;

    new-instance v0, Lbr/com/topaz/h/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbr/com/topaz/h/a$c;-><init>(Lbr/com/topaz/h/a;Lbr/com/topaz/h/a$a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Lbr/com/topaz/h/a;

    iget-object v0, p0, Lbr/com/topaz/h/a;->i:Lbr/com/topaz/u0/r;

    invoke-direct {p1, v0}, Lbr/com/topaz/h/a;-><init>(Lbr/com/topaz/u0/r;)V

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/h/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/h/a;->h:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/h/a$b;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/h/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbr/com/topaz/h/a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lbr/com/topaz/h/a;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/h/a$b;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/topaz/h/a$b;

    invoke-virtual {v1, v3}, Lbr/com/topaz/h/a$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/h/a;->g:Z

    return v0
.end method
