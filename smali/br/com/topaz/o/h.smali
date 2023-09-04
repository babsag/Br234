.class public Lbr/com/topaz/o/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i"
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field

.field private transient e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msi"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/o/h;->a:Ljava/lang/String;

    iput-wide p2, p0, Lbr/com/topaz/o/h;->b:J

    iput-object p4, p0, Lbr/com/topaz/o/h;->c:Ljava/lang/String;

    iput p5, p0, Lbr/com/topaz/o/h;->d:I

    iput p6, p0, Lbr/com/topaz/o/h;->e:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lbr/com/topaz/o/h;->a(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o/h;->e:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o/h;->d:I

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "i"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/o/h;->a:Ljava/lang/String;

    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lbr/com/topaz/o/h;->b:J

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/o/h;->c:Ljava/lang/String;

    :try_start_0
    const-string v0, "s"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/o/h;->d:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x2

    iput v0, p0, Lbr/com/topaz/o/h;->d:I

    :goto_0
    const-string v0, "msi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lbr/com/topaz/o/h;->e:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/o/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o/h;->d:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/o/h;->b:J

    return-wide v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/o/h;->a:Ljava/lang/String;

    const-string v2, "i"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Lbr/com/topaz/o/h;->b:J

    const-string v3, "t"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lbr/com/topaz/o/h;->c:Ljava/lang/String;

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lbr/com/topaz/o/h;->d:I

    const-string v2, "s"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lbr/com/topaz/o/h;->e:I

    const-string v2, "msi"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
