.class Lbr/com/topaz/heartbeat/face/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/face/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/face/a$a;->onFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/face/a$a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/face/a$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/a$a$a;->a:Lbr/com/topaz/heartbeat/face/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/a$a$a;->a:Lbr/com/topaz/heartbeat/face/a$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/face/a$a;->c:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a(JI)V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/a$a$a;->a:Lbr/com/topaz/heartbeat/face/a$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/face/a$a;->a:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFinish(I)V

    return-void
.end method
