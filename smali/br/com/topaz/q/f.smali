.class public Lbr/com/topaz/q/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbr/com/topaz/u0/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/q/f;->a:Z

    const/16 v0, 0x92

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/q/f;->j:Ljava/lang/String;

    const/16 v0, 0x93

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/q/f;->k:Ljava/lang/String;

    const/16 v0, 0x94

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/q/f;->l:Ljava/lang/String;

    const/16 v0, 0x95

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/q/f;->m:Ljava/lang/String;

    const/16 v0, 0x96

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/q/f;->n:Ljava/lang/String;

    const/16 v0, 0x97

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/q/f;->o:Ljava/lang/String;

    const/16 v0, 0x98

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/q/f;->p:Ljava/lang/String;

    const/16 v0, 0x99

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/q/f;->q:Ljava/lang/String;

    const/16 v0, 0x9a

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/q/f;->r:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/q/f;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/q/f;->d:Ljava/util/List;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/q/f;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/q/f;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lbr/com/topaz/q/f;->a:Z

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/q/f;->k:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lbr/com/topaz/q/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/q/f;->b:Ljava/util/List;

    iget-object v1, p0, Lbr/com/topaz/q/f;->l:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lbr/com/topaz/q/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/q/f;->c:Ljava/util/List;

    iget-object v1, p0, Lbr/com/topaz/q/f;->m:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lbr/com/topaz/q/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/q/f;->d:Ljava/util/List;

    iget-object v1, p0, Lbr/com/topaz/q/f;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/q/f;->e:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/q/f;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lbr/com/topaz/q/f;->f:I

    iget-object v1, p0, Lbr/com/topaz/q/f;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lbr/com/topaz/q/f;->g:J

    iget-object v1, p0, Lbr/com/topaz/q/f;->q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lbr/com/topaz/q/f;->h:J

    iget-object v1, p0, Lbr/com/topaz/q/f;->r:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbr/com/topaz/q/f;->r:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lbr/com/topaz/q/f;->i:I

    iget-object p1, p0, Lbr/com/topaz/q/f;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbr/com/topaz/q/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lbr/com/topaz/q/f;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-wide v1, p0, Lbr/com/topaz/q/f;->h:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_4

    :cond_3
    iput-boolean v0, p0, Lbr/com/topaz/q/f;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-boolean v0, p0, Lbr/com/topaz/q/f;->a:Z

    :cond_4
    :goto_1
    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/q/f;->d:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/q/f;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/q/f;->g:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/q/f;->i:I

    return v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/q/f;->h:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/q/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/q/f;->f:I

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/q/f;->b:Ljava/util/List;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/q/f;->a:Z

    return v0
.end method
