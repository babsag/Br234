.class public Lbr/com/topaz/j0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:I

.field private c:D

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lbr/com/topaz/u0/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb4

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/topaz/j0/f;->f:Ljava/lang/String;

    const/16 v0, 0xb5

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/topaz/j0/f;->g:Ljava/lang/String;

    const/16 v0, 0xb6

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/topaz/j0/f;->h:Ljava/lang/String;

    const/16 v0, 0xb7

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/topaz/j0/f;->i:Ljava/lang/String;

    const/16 v0, 0xb8

    invoke-interface {p1, v0}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lbr/com/topaz/j0/f;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/j0/f;->d:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/j0/f;
    .locals 2

    :try_start_0
    sget-object v0, Lbr/com/topaz/j0/f;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/j0/f;->a:Z

    sget-object v0, Lbr/com/topaz/j0/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/j0/f;->b:I

    sget-object v0, Lbr/com/topaz/j0/f;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lbr/com/topaz/j0/f;->c:D

    sget-object v0, Lbr/com/topaz/j0/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lbr/com/topaz/j0/f;->d:I

    sget-object v0, Lbr/com/topaz/j0/f;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lbr/com/topaz/j0/f;->e:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lbr/com/topaz/j0/f;->a:Z

    iput p1, p0, Lbr/com/topaz/j0/f;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbr/com/topaz/j0/f;->c:D

    iput p1, p0, Lbr/com/topaz/j0/f;->d:I

    iput p1, p0, Lbr/com/topaz/j0/f;->e:I

    :goto_0
    return-object p0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/j0/f;->e:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/j0/f;->b:I

    return v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/j0/f;->c:D

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/j0/f;->a:Z

    return v0
.end method
