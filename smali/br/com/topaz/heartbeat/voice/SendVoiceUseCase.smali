.class public Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Lbr/com/topaz/w0/b;

.field private c:Lbr/com/topaz/u0/c;

.field private final d:Lbr/com/topaz/f0/e;

.field private e:Lbr/com/topaz/u0/h;

.field private f:Lbr/com/topaz/l/e0;

.field private g:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

.field private h:Z

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:[B

.field private k:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

.field private l:Lcom/google/gson/Gson;

.field private m:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/c;Lbr/com/topaz/f0/e;Lbr/com/topaz/u0/h;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/voice/VoiceStructure;ZLjava/util/HashMap;[BLcom/google/gson/Gson;Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/s/a;",
            "Lbr/com/topaz/w0/b;",
            "Lbr/com/topaz/u0/c;",
            "Lbr/com/topaz/f0/e;",
            "Lbr/com/topaz/u0/h;",
            "Lbr/com/topaz/l/e0;",
            "Lbr/com/topaz/heartbeat/voice/VoiceStructure;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B",
            "Lcom/google/gson/Gson;",
            "Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;",
            "Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->b:Lbr/com/topaz/w0/b;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->c:Lbr/com/topaz/u0/c;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->d:Lbr/com/topaz/f0/e;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->e:Lbr/com/topaz/u0/h;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->f:Lbr/com/topaz/l/e0;

    iput-object p7, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->g:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    iput-boolean p8, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->h:Z

    iput-object p9, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->i:Ljava/util/HashMap;

    iput-object p10, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->j:[B

    iput-object p11, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->l:Lcom/google/gson/Gson;

    iput-object p12, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->m:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    iput-object p13, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->k:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)Z
    .locals 0

    iget-boolean p0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->h:Z

    return p0
.end method

.method static synthetic b(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->k:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    return-object p0
.end method

.method static synthetic c(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->m:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    return-object p0
.end method

.method private c()[B
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->c:Lbr/com/topaz/u0/c;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->j:[B

    iget-object v2, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->g:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/u0/c;->b([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-idn-u"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-idn-o"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->g:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-k-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-ci-id"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v2}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->e:Lbr/com/topaz/u0/h;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->j:[B

    invoke-virtual {v1, v2}, Lbr/com/topaz/u0/h;->d([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA256"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->f:Lbr/com/topaz/l/e0;

    invoke-interface {v1}, Lbr/com/topaz/l/e0;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CLIENT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->l:Lcom/google/gson/Gson;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->c:Lbr/com/topaz/u0/c;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->g:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/u0/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->g:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->g:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->k()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->g:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->d:Lbr/com/topaz/f0/e;

    iget-boolean v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->h:Z

    invoke-virtual {p0, v1}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->d()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->c()[B

    move-result-object v3

    new-instance v4, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;

    invoke-direct {v4, p0}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;-><init>(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lbr/com/topaz/f0/e;->a(Ljava/lang/String;Ljava/util/HashMap;[BLbr/com/topaz/f0/e$a;)V

    :cond_0
    return-void
.end method
