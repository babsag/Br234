.class public Lbr/com/topaz/z/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/z/c;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:I

.field private q:Lbr/com/topaz/z/a;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/l/w;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lbr/com/topaz/q0/e;

.field private t:Z

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/z/e;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/z/e;->d:Z

    iput-boolean v0, p0, Lbr/com/topaz/z/e;->e:Z

    iput v0, p0, Lbr/com/topaz/z/e;->f:I

    iput v0, p0, Lbr/com/topaz/z/e;->g:I

    iput-boolean v0, p0, Lbr/com/topaz/z/e;->h:Z

    const/16 v1, 0x50

    iput v1, p0, Lbr/com/topaz/z/e;->i:I

    iput-boolean v0, p0, Lbr/com/topaz/z/e;->j:Z

    iput-boolean v0, p0, Lbr/com/topaz/z/e;->k:Z

    iput-boolean v0, p0, Lbr/com/topaz/z/e;->l:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbr/com/topaz/z/e;->m:Ljava/util/List;

    iput v0, p0, Lbr/com/topaz/z/e;->n:I

    iput v0, p0, Lbr/com/topaz/z/e;->o:I

    iput v0, p0, Lbr/com/topaz/z/e;->p:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbr/com/topaz/z/e;->r:Ljava/util/List;

    iput-boolean v0, p0, Lbr/com/topaz/z/e;->t:Z

    const/16 v1, 0xa

    iput v1, p0, Lbr/com/topaz/z/e;->u:I

    iput v0, p0, Lbr/com/topaz/z/e;->v:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/e;->v:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/z/e;
    .locals 7

    const-string v0, "cp"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "ul"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lbr/com/topaz/z/e;->a:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "pk"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/z/e;->b:Ljava/lang/String;

    const-string v3, "pki"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/z/e;->c:I

    const-string v3, "e"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/z/e;->d:Z

    const-string v3, "ri"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/z/e;->e:Z

    const-string v3, "cia"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/z/e;->g:I

    const-string v3, "fa"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/z/e;->h:Z

    const-string v3, "icr"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/z/e;->i:I

    const-string v3, "efa"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/z/e;->j:Z

    const-string v3, "sjc"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/z/e;->k:Z

    const-string v3, "ssi"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/z/e;->l:Z

    const-string v3, "rto"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/z/e;->n:I

    const-string v3, "bd"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/z/e;->o:I

    const-string v3, "emka"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/z/e;->t:Z

    const-string v3, "mka"

    const/16 v4, 0xa

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/z/e;->u:I

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lbr/com/topaz/z/e;->a(I)V

    new-instance v0, Lbr/com/topaz/z/a;

    invoke-direct {v0}, Lbr/com/topaz/z/a;-><init>()V

    invoke-virtual {v0, p1}, Lbr/com/topaz/z/a;->a(Lorg/json/JSONObject;)Lbr/com/topaz/z/a;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/z/e;->q:Lbr/com/topaz/z/a;

    const-string v0, "ato"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/z/e;->v:I

    const-string v0, "kw"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lbr/com/topaz/z/e;->m:Ljava/util/List;

    new-instance v5, Lbr/com/topaz/z/c;

    invoke-direct {v5}, Lbr/com/topaz/z/c;-><init>()V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/com/topaz/z/c;->a(Lorg/json/JSONObject;)Lbr/com/topaz/z/c;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :try_start_1
    const-string v0, "wmmtd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lbr/com/topaz/l/w;

    invoke-direct {v4}, Lbr/com/topaz/l/w;-><init>()V

    const-string v5, "k"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/w;->a(Ljava/lang/String;)Lbr/com/topaz/l/w;

    move-result-object v4

    const-string v5, "v"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/w;->b(Ljava/lang/String;)Lbr/com/topaz/l/w;

    move-result-object v4

    const-string v5, "mid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lbr/com/topaz/l/w;->a(Z)Lbr/com/topaz/l/w;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/topaz/l/w;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lbr/com/topaz/l/w;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lbr/com/topaz/z/e;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    iput-boolean v2, p0, Lbr/com/topaz/z/e;->d:Z

    :catch_1
    :cond_4
    :try_start_2
    new-instance v0, Lbr/com/topaz/q0/e;

    invoke-direct {v0}, Lbr/com/topaz/q0/e;-><init>()V

    const-string v1, "t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/q0/e;->a(Lorg/json/JSONObject;)Lbr/com/topaz/q0/e;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/z/e;->s:Lbr/com/topaz/q0/e;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    new-instance p1, Lbr/com/topaz/q0/e;

    invoke-direct {p1}, Lbr/com/topaz/q0/e;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/z/e;->s:Lbr/com/topaz/q0/e;

    :goto_4
    return-object p0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/z/e;->p:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/e;->o:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/e;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/e;->p:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/z/e;->t:Z

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/e;->i:I

    return v0
.end method

.method public g()Lbr/com/topaz/z/a;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/z/e;->q:Lbr/com/topaz/z/a;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/e;->u:I

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/z/e;->r:Ljava/util/List;

    return-object v0
.end method

.method public j()Lbr/com/topaz/q0/e;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/z/e;->s:Lbr/com/topaz/q0/e;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/z/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/z/e;->m:Ljava/util/List;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/e;->c:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/z/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/e;->n:I

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/z/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/z/e;->j:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/z/e;->d:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/z/e;->h:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/z/e;->k:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/z/e;->l:Z

    return v0
.end method
