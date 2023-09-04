.class public Lbr/com/topaz/y/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lbr/com/topaz/u0/r;

.field private g:J


# direct methods
.method public constructor <init>(Lbr/com/topaz/u0/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/y/d;->a:Z

    iput-boolean v0, p0, Lbr/com/topaz/y/d;->b:Z

    iput-boolean v0, p0, Lbr/com/topaz/y/d;->c:Z

    const/4 v0, 0x1

    iput v0, p0, Lbr/com/topaz/y/d;->d:I

    iput-object p1, p0, Lbr/com/topaz/y/d;->f:Lbr/com/topaz/u0/r;

    const/16 v0, 0x7c

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/y/d;->e:Ljava/lang/String;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lbr/com/topaz/y/d;->g:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/y/d;->d:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/y/d;
    .locals 5

    const-string v0, "ce"

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "e"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/y/d;->a:Z

    const-string v3, "b"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/y/d;->b:Z

    const-string v3, "d"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/y/d;->c:Z

    const-string v3, "t"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/y/d;->d:I

    const-string v3, "u"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/y/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, Lbr/com/topaz/y/d;->g:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lbr/com/topaz/y/d;->a:Z

    iput-boolean p1, p0, Lbr/com/topaz/y/d;->b:Z

    iput-boolean p1, p0, Lbr/com/topaz/y/d;->c:Z

    const/4 p1, 0x1

    iput p1, p0, Lbr/com/topaz/y/d;->d:I

    const-string p1, ""

    iput-object p1, p0, Lbr/com/topaz/y/d;->e:Ljava/lang/String;

    iput-wide v1, p0, Lbr/com/topaz/y/d;->g:J

    :goto_1
    return-object p0
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lbr/com/topaz/y/d;->g:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/y/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/y/d;->b:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/y/d;->c:Z

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

    const-class v2, Lbr/com/topaz/y/d;

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

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/y/d;->a:Z

    return v0
.end method
