.class Lbr/com/topaz/heartbeat/VoiceAuthentication$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


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

    iput-object p1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication$a;->a:Lbr/com/topaz/heartbeat/VoiceAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/VoiceAuthentication$a;->a:Lbr/com/topaz/heartbeat/VoiceAuthentication;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/VoiceAuthentication;->access$000(Lbr/com/topaz/heartbeat/VoiceAuthentication;)Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;

    move-result-object p1

    const/4 p2, 0x3

    const/16 p3, -0x32

    invoke-interface {p1, p2, p3}, Lbr/com/topaz/heartbeat/VoiceAuthentication$VoiceAuthenticationCallback;->onFinish(II)V

    return-void
.end method
