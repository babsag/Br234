.class Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;->a:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/f0/e$b;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;->a:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->b(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;->a:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->a(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;->a:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->c(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;->a(JI)V

    return-void
.end method

.method public b(Lbr/com/topaz/f0/e$b;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;->a:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->b(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;->a:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->a(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase$a;->a:Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;->c(Lbr/com/topaz/heartbeat/voice/SendVoiceUseCase;)Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryVoicePresenter;->a(JI)V

    return-void
.end method
