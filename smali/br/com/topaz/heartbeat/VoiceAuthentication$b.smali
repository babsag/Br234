.class Lbr/com/topaz/heartbeat/VoiceAuthentication$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/heartbeat/VoiceAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/VoiceAuthentication;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/VoiceAuthentication;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication$b;->a:Lbr/com/topaz/heartbeat/VoiceAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication$b;->a:Lbr/com/topaz/heartbeat/VoiceAuthentication;

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->stopRecord()V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication$b;->a:Lbr/com/topaz/heartbeat/VoiceAuthentication;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->access$000(Lbr/com/topaz/heartbeat/VoiceAuthentication;)Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    move-result-object p1

    const/4 p2, 0x3

    const/16 p3, -0x2d

    invoke-interface {p1, p2, p3}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    :cond_0
    return-void
.end method
