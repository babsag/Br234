.class public Lbr/com/topaz/w/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/w/e;
    .locals 1

    :try_start_0
    const-string v0, "gee"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/w/e;->a:Z

    const-string v0, "get"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/w/e;->b:I

    const-string v0, "gei"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/w/e;->c:I

    const-string v0, "gmls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/w/e;->d:I

    const-string v0, "geu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/w/e;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lbr/com/topaz/w/e;->a:Z

    :goto_0
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/w/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/w/e;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/w/e;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/w/e;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/w/e;->a:Z

    return v0
.end method
