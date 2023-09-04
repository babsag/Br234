.class public Lbr/com/topaz/r0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbr/com/topaz/u0/r;

.field private b:I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/r0/c;->a:Lbr/com/topaz/u0/r;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/r0/c;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lbr/com/topaz/r0/c;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lbr/com/topaz/r0/c;->a:Lbr/com/topaz/u0/r;

    const/16 v1, 0x89

    invoke-interface {p1, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/r0/c;->e:Ljava/lang/String;

    iget-object p1, p0, Lbr/com/topaz/r0/c;->a:Lbr/com/topaz/u0/r;

    const/16 v1, 0x8a

    invoke-interface {p1, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/r0/c;->f:Ljava/lang/String;

    iget-object p1, p0, Lbr/com/topaz/r0/c;->a:Lbr/com/topaz/u0/r;

    const/16 v1, 0x8b

    invoke-interface {p1, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lbr/com/topaz/r0/c;->c:I

    iget-object p1, p0, Lbr/com/topaz/r0/c;->a:Lbr/com/topaz/u0/r;

    const/16 v1, 0x8c

    invoke-interface {p1, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lbr/com/topaz/r0/c;->b:I

    iget-object p1, p0, Lbr/com/topaz/r0/c;->a:Lbr/com/topaz/u0/r;

    const/16 v1, 0x8d

    invoke-interface {p1, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lbr/com/topaz/r0/c;->d:J

    iget-object p1, p0, Lbr/com/topaz/r0/c;->a:Lbr/com/topaz/u0/r;

    const/16 v1, 0x8e

    invoke-interface {p1, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lbr/com/topaz/r0/c;->g:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    iput-object p1, p0, Lbr/com/topaz/r0/c;->e:Ljava/lang/String;

    iput-object p1, p0, Lbr/com/topaz/r0/c;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbr/com/topaz/r0/c;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lbr/com/topaz/r0/c;->c:I

    iput p1, p0, Lbr/com/topaz/r0/c;->b:I

    iput-boolean p1, p0, Lbr/com/topaz/r0/c;->g:Z

    :goto_0
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r0/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/r0/c;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/r0/c;->g:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r0/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r0/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
