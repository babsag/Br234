.class Lbr/com/topaz/heartbeat/face/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/face/a;->a(Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/u/c;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;)Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

.field final synthetic b:Lbr/com/topaz/heartbeat/face/FaceStructure;

.field final synthetic c:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

.field final synthetic d:Lbr/com/topaz/heartbeat/face/b;

.field final synthetic e:Lbr/com/topaz/u/c;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/u/c;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/a$a;->a:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/face/a$a;->b:Lbr/com/topaz/heartbeat/face/FaceStructure;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/face/a$a;->c:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/face/a$a;->d:Lbr/com/topaz/heartbeat/face/b;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/face/a$a;->e:Lbr/com/topaz/u/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/a$a;->c:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a(JI)V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/a$a;->a:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFailure(I)V

    return-void
.end method

.method public onFinish(I)V
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/a$a;->b:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lbr/com/topaz/heartbeat/face/a$a$a;

    invoke-direct {p1, p0}, Lbr/com/topaz/heartbeat/face/a$a$a;-><init>(Lbr/com/topaz/heartbeat/face/a$a;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/a$a;->d:Lbr/com/topaz/heartbeat/face/b;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/a$a;->e:Lbr/com/topaz/u/c;

    invoke-virtual {v1}, Lbr/com/topaz/u/c;->a()Lbr/com/topaz/u/c$a;

    move-result-object v1

    invoke-interface {v1}, Lbr/com/topaz/u/c$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/face/a$a;->e:Lbr/com/topaz/u/c;

    invoke-virtual {v2}, Lbr/com/topaz/u/c;->c()Lbr/com/topaz/t/b;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/heartbeat/face/a$a;->b:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0, v1, v2, v3, p1}, Lbr/com/topaz/heartbeat/face/b;->a(Ljava/util/List;Lbr/com/topaz/t/b;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/face/b$c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/a$a;->a:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFinish(I)V

    :goto_0
    return-void
.end method

.method public onFinishInstruction(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/a$a;->a:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFinishInstruction(I)V

    return-void
.end method

.method public onNewInstruction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/a$a;->a:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onNewInstruction(Ljava/lang/String;)V

    return-void
.end method
