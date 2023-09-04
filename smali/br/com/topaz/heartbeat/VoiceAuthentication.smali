.class public Lbr/com/topaz/heartbeat/VoiceAuthentication;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;
    }
.end annotation


# static fields
.field public static final MAX_AUDIO_TIME_REACHED:I = -0x2d

.field public static final RECORD_FAILURE:I = -0x32

.field public static final RELEASE_ACTION:I = 0x5

.field public static final RELEASE_FAILURE:I = -0x31

.field public static final SEND_BASE_VOICE_ACTION:I = 0x2

.field public static final SEND_FAILURE:I = -0x2f

.field public static final SEND_VOICE_ACTION:I = 0x1

.field public static final START_FAILURE:I = -0x2e

.field public static final START_RECORD_ACTION:I = 0x3

.field public static final STOP_FAILURE:I = -0x30

.field public static final STOP_RECORD_ACTION:I = 0x4


# instance fields
.field private final VOICE_PREFIX:Ljava/lang/String;

.field private callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

.field private context:Landroid/content/Context;

.field private isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private onErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private onInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sendVoiceUseCase:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

.field private telemetryVoicePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

.field private temporaryFile:Ljava/io/File;

.field private voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dmF0YWY="

    iput-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->VOICE_PREFIX:Ljava/lang/String;

    new-instance v0, Lbr/com/topaz/heartbeat/VoiceAuthentication$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/heartbeat/VoiceAuthentication$a;-><init>(Lbr/com/topaz/heartbeat/VoiceAuthentication;)V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->onErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    new-instance v0, Lbr/com/topaz/heartbeat/VoiceAuthentication$b;

    invoke-direct {v0, p0}, Lbr/com/topaz/heartbeat/VoiceAuthentication$b;-><init>(Lbr/com/topaz/heartbeat/VoiceAuthentication;)V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->onInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->context:Landroid/content/Context;

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->parameters:Ljava/util/HashMap;

    new-instance v1, Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    new-instance v2, Lbr/com/topaz/q0/i;

    invoke-direct {v2}, Lbr/com/topaz/q0/i;-><init>()V

    new-instance v3, Lbr/com/topaz/m/e;

    new-instance v4, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v4}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    iget-object v5, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v3, p1, v0, v4, v5}, Lbr/com/topaz/m/e;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-direct {v1, p1, v2, v3, v0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;-><init>(Landroid/content/Context;Lbr/com/topaz/q0/i;Lbr/com/topaz/m/e;Lbr/com/topaz/l/f0;)V

    iput-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->telemetryVoicePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    return-void
.end method

.method static synthetic access$000(Lbr/com/topaz/heartbeat/VoiceAuthentication;)Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    return-object p0
.end method

.method private buildSendVoiceUseCase(Z)Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;
    .locals 22

    move-object/from16 v0, p0

    new-instance v7, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v7}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    iget-object v1, v0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->context:Landroid/content/Context;

    invoke-static {v1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v10

    new-instance v5, Lbr/com/topaz/u0/h;

    invoke-direct {v5}, Lbr/com/topaz/u0/h;-><init>()V

    new-instance v14, Lbr/com/topaz/l/g0;

    iget-object v2, v0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->context:Landroid/content/Context;

    iget-object v6, v0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

    move-object v1, v14

    move-object v3, v7

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v12, Lbr/com/topaz/f0/e;

    iget-object v1, v0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->j()I

    move-result v1

    iget-object v2, v0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->telemetryVoicePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    invoke-direct {v12, v1, v2}, Lbr/com/topaz/f0/e;-><init>(ILbr/com/topaz/q0/a;)V

    new-instance v1, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v9

    new-instance v11, Lbr/com/topaz/u0/c;

    new-instance v2, Lbr/com/topaz/u0/a;

    invoke-direct {v2}, Lbr/com/topaz/u0/a;-><init>()V

    invoke-direct {v11, v7, v2}, Lbr/com/topaz/u0/c;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;)V

    new-instance v13, Lbr/com/topaz/u0/h;

    invoke-direct {v13}, Lbr/com/topaz/u0/h;-><init>()V

    iget-object v15, v0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    iget-object v2, v0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->parameters:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->getAudioBuffer()[B

    move-result-object v18

    new-instance v19, Lcom/google/gson/Gson;

    invoke-direct/range {v19 .. v19}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, v0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->telemetryVoicePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    iget-object v4, v0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    move-object v8, v1

    move/from16 v16, p1

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v8 .. v21}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/c;Lbr/com/topaz/f0/e;Lbr/com/topaz/u0/h;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/voice/VoiceStructure;ZLjava/util/HashMap;[BLcom/google/gson/Gson;Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;)V

    return-object v1
.end method

.method private hasRecordAudioPermission()Z
    .locals 2

    new-instance v0, Lbr/com/topaz/u0/k;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbr/com/topaz/u0/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/topaz/u0/k;->c()Z

    move-result v0

    return v0
.end method

.method private prepareFile()V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->temporaryFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dmF0YWY="

    invoke-static {v2, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->temporaryFile:Ljava/io/File;

    return-void
.end method

.method private sendAudio(Z)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->telemetryVoicePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;->a(ZLjava/util/HashMap;)V

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->getAudioBuffer()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v1, -0x2f

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->buildSendVoiceUseCase(Z)Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->sendVoiceUseCase:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    :goto_1
    return-void
.end method

.method private start()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    :cond_0
    return-void
.end method

.method private stop()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAudioBuffer()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->temporaryFile:Ljava/io/File;

    invoke-static {v0}, Lbr/com/topaz/u0/g;->a(Ljava/io/File;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0
.end method

.method public prepare()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->context:Landroid/content/Context;

    invoke-static {v1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/o;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->Z()Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->telemetryVoicePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;->d()V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->m()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "075"

    invoke-virtual {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->hasRecordAudioPermission()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "076"

    invoke-virtual {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->prepareFile()V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->voiceStructure:Lbr/com/topaz/heartbeat/voice/VoiceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/voice/VoiceStructure;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->temporaryFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->onErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->onInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "074"

    :goto_0
    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "073"

    goto :goto_0
.end method

.method public release()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->temporaryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->temporaryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    const/4 v1, 0x5

    const/16 v2, -0x31

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    :goto_0
    return-void
.end method

.method public sendRecord()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->sendAudio(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    const/4 v1, 0x1

    const/16 v2, -0x2f

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    :goto_0
    return-void
.end method

.method public sendRecordAsBaseVoice()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->sendAudio(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    const/4 v1, 0x2

    const/16 v2, -0x2f

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    :goto_0
    return-void
.end method

.method public startRecord()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->start()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->telemetryVoicePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    const/4 v1, 0x3

    const/16 v2, -0x2e

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->stop()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->telemetryVoicePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication;->callback:Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    const/4 v1, 0x4

    const/16 v2, -0x30

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    :goto_0
    return-void
.end method
