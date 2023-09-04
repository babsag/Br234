.class public Lbr/com/topaz/v/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/v/i;

.field private b:Lbr/com/topaz/v/j;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/v/b;->a:Lbr/com/topaz/v/i;

    const-string v2, "location"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbr/com/topaz/v/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lbr/com/topaz/v/b;->b:Lbr/com/topaz/v/j;

    const-string v2, "wifi"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lbr/com/topaz/v/j;->a()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lbr/com/topaz/v/b;->c:Ljava/lang/String;

    const-string v2, "location_data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/v/b;->e:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lbr/com/topaz/v/b;->d:J

    return-void
.end method

.method public a(Lbr/com/topaz/v/i;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/v/b;->a:Lbr/com/topaz/v/i;

    return-void
.end method

.method public a(Lbr/com/topaz/v/j;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/v/b;->b:Lbr/com/topaz/v/j;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/v/b;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/v/b;->a:Lbr/com/topaz/v/i;

    const-string v2, "location"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbr/com/topaz/v/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lbr/com/topaz/v/b;->b:Lbr/com/topaz/v/j;

    const-string v2, "wifi"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lbr/com/topaz/v/j;->a()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lbr/com/topaz/v/b;->e:I

    const-string v2, "data_option"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v1, p0, Lbr/com/topaz/v/b;->d:J

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
