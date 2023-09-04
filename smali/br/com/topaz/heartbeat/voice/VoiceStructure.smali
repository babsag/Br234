.class public Lbr/com/topaz/heartbeat/voice/VoiceStructure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "e"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "as"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "o"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ae"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sr"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "br"
    .end annotation
.end field

.field private g:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pk"
    .end annotation
.end field

.field private j:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pki"
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lbr/com/topaz/q0/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->d:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/heartbeat/voice/VoiceStructure;
    .locals 2

    :try_start_0
    const-string v0, "e"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->a:Z

    const-string v0, "as"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->b:I

    const-string v0, "o"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->c:I

    const-string v0, "ae"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->d:I

    const-string v0, "sr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->e:I

    const-string v0, "br"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->f:I

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->g:I

    const-string v0, "u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->h:Ljava/lang/String;

    const-string v0, "bu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->k:Ljava/lang/String;

    const-string v0, "pk"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->i:Ljava/lang/String;

    const-string v0, "pki"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->j:I

    const-string v0, "rto"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->l:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->a:Z

    :goto_0
    :try_start_1
    new-instance v0, Lbr/com/topaz/q0/e;

    invoke-direct {v0}, Lbr/com/topaz/q0/e;-><init>()V

    const-string v1, "t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/q0/e;->a(Lorg/json/JSONObject;)Lbr/com/topaz/q0/e;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->m:Lbr/com/topaz/q0/e;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance p1, Lbr/com/topaz/q0/e;

    invoke-direct {p1}, Lbr/com/topaz/q0/e;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->m:Lbr/com/topaz/q0/e;

    :goto_1
    return-object p0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->c:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->j:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->l:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lbr/com/topaz/q0/e;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->m:Lbr/com/topaz/q0/e;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->a:Z

    return v0
.end method
