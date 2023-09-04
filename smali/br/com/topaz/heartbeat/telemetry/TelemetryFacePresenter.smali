.class public Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/q0/b;

.field private c:Lbr/com/topaz/q0/e;

.field private d:Lbr/com/topaz/m/e;

.field private e:Lbr/com/topaz/q0/c;

.field private f:Lbr/com/topaz/q0/g;

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/q0/b;Lbr/com/topaz/m/e;Lbr/com/topaz/l/f0;Lbr/com/topaz/q0/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->d:Lbr/com/topaz/m/e;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->f:Lbr/com/topaz/q0/g;

    :try_start_0
    invoke-interface {p4}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->q()Lbr/com/topaz/heartbeat/face/FaceStructure;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->b()Lbr/com/topaz/q0/e;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->c:Lbr/com/topaz/q0/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->c:Lbr/com/topaz/q0/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/q0/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->f:Lbr/com/topaz/q0/g;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    invoke-virtual {v0, v1}, Lbr/com/topaz/q0/g;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 2

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->h:Z

    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    invoke-virtual {v0, p3}, Lbr/com/topaz/q0/d;->a(I)V

    iget-object p3, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    invoke-virtual {p3}, Lbr/com/topaz/q0/b;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lbr/com/topaz/q0/d;->b(J)V

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b()V

    return-void
.end method

.method public a(JJJ)V
    .locals 1

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/q0/d;->a(J)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    invoke-virtual {p1, p3, p4}, Lbr/com/topaz/q0/d;->c(J)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    invoke-virtual {p1, p5, p6}, Lbr/com/topaz/q0/d;->d(J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lbr/com/topaz/q0/c;

    invoke-direct {v0, p1}, Lbr/com/topaz/q0/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->e:Lbr/com/topaz/q0/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->g:J

    return-void
.end method

.method public a(ZLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    if-eqz p1, :cond_1

    const-string p1, "FACE_LIVENESS"

    goto :goto_0

    :cond_1
    const-string p1, "FACE_BASE"

    :goto_0
    invoke-virtual {v0, p1}, Lbr/com/topaz/q0/d;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "USER_PARAM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "SESSION_ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    invoke-virtual {p2, p1}, Lbr/com/topaz/q0/d;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->h:Z

    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->d:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/q0/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/q0/b;->e(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 5

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->e:Lbr/com/topaz/q0/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->g:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/q0/c;->a(J)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->b:Lbr/com/topaz/q0/b;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->e:Lbr/com/topaz/q0/c;

    invoke-virtual {v0, v1}, Lbr/com/topaz/q0/b;->a(Lbr/com/topaz/q0/c;)V

    return-void
.end method
