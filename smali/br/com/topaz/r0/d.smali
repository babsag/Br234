.class public Lbr/com/topaz/r0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Lbr/com/topaz/u0/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/r0/d;->n:Z

    const-string v0, ""

    iput-object v0, p0, Lbr/com/topaz/r0/d;->o:Ljava/lang/String;

    const/16 v0, 0x43

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->a:Ljava/lang/String;

    const/16 v0, 0x44

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->b:Ljava/lang/String;

    const/16 v0, 0x45

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->c:Ljava/lang/String;

    const/16 v0, 0x46

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->d:Ljava/lang/String;

    const/16 v0, 0x47

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->e:Ljava/lang/String;

    const/16 v0, 0x48

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->f:Ljava/lang/String;

    const/16 v0, 0x49

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->g:Ljava/lang/String;

    const/16 v0, 0x4a

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->h:Ljava/lang/String;

    const/16 v0, 0x4b

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->i:Ljava/lang/String;

    const/16 v0, 0x4c

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->j:Ljava/lang/String;

    const/16 v0, 0x4d

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->k:Ljava/lang/String;

    const/16 v0, 0x4e

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r0/d;->l:Ljava/lang/String;

    const/16 v0, 0x8f

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/r0/d;->m:Ljava/lang/String;

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
.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/r0/d;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/r0/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lbr/com/topaz/r0/d;->n:Z

    iget-object v1, p0, Lbr/com/topaz/r0/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/r0/d;->o:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/r0/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lbr/com/topaz/r0/d;->p:I

    iget-object v1, p0, Lbr/com/topaz/r0/d;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/r0/d;->q:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/r0/d;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/r0/d;->r:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/r0/d;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lbr/com/topaz/r0/d;->s:I

    iget-object v1, p0, Lbr/com/topaz/r0/d;->m:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lbr/com/topaz/r0/d;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lbr/com/topaz/r0/d;->t:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lbr/com/topaz/r0/d;->n:Z

    const-string p1, ""

    iput-object p1, p0, Lbr/com/topaz/r0/d;->o:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/r0/d;->o:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/r0/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/r0/d;->t:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/r0/d;->o:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/r0/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/r0/d;->o:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/r0/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/r0/d;->p:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lbr/com/topaz/r0/d;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    return v0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r0/d;->r:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r0/d;->q:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/r0/d;->o:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/r0/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/r0/d;->o:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/r0/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/r0/d;->s:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/r0/d;->o:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/r0/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/r0/d;->n:Z

    return v0
.end method
