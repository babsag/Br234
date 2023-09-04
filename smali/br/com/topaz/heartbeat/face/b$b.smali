.class Lbr/com/topaz/heartbeat/face/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/face/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/face/c;Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;

.field final synthetic b:Lbr/com/topaz/heartbeat/face/b;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/b$b;->b:Lbr/com/topaz/heartbeat/face/b;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/face/b$b;->a:Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/b$b;->b:Lbr/com/topaz/heartbeat/face/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/face/b;->a(Lbr/com/topaz/heartbeat/face/b;)Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/b$b;->b:Lbr/com/topaz/heartbeat/face/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/face/b;->a(Lbr/com/topaz/heartbeat/face/b;)Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a(JI)V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/b$b;->a:Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;->onFinish(I)V

    return-void
.end method
