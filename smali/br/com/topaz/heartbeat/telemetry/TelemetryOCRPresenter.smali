.class public Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/q0/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/q0/f;

.field private c:Lbr/com/topaz/q0/e;

.field private d:Lbr/com/topaz/m/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/q0/f;Lbr/com/topaz/m/e;Lbr/com/topaz/l/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->d:Lbr/com/topaz/m/e;

    :try_start_0
    invoke-interface {p4}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->C()Lbr/com/topaz/z/e;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/z/e;->j()Lbr/com/topaz/q0/e;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->c:Lbr/com/topaz/q0/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lbr/com/topaz/q0/e;

    invoke-direct {p1}, Lbr/com/topaz/q0/e;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->c:Lbr/com/topaz/q0/e;

    :goto_0
    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->c:Lbr/com/topaz/q0/e;

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
    .locals 3

    new-instance v0, Lbr/com/topaz/q0/g;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->c:Lbr/com/topaz/q0/e;

    invoke-virtual {v2}, Lbr/com/topaz/q0/e;->a()Lbr/com/topaz/r/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbr/com/topaz/q0/g;-><init>(Landroid/content/Context;Lbr/com/topaz/r/h;)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-virtual {v0, v1}, Lbr/com/topaz/q0/g;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 2

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-virtual {v0, p3}, Lbr/com/topaz/q0/d;->a(I)V

    iget-object p3, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-virtual {p3}, Lbr/com/topaz/q0/f;->b()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lbr/com/topaz/q0/d;->b(J)V

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b()V

    return-void
.end method

.method public a(JJJ)V
    .locals 1

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/q0/d;->a(J)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-virtual {p1, p3, p4}, Lbr/com/topaz/q0/d;->c(J)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-virtual {p1, p5, p6}, Lbr/com/topaz/q0/d;->d(J)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "rtdbs"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "rtdhs"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "rtdrt"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a(JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "197"

    invoke-static {p1}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ZLjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    const-string v1, "OCR_FILES"

    invoke-virtual {v0, v1}, Lbr/com/topaz/q0/d;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    const-string v0, "OCR_LIVE"

    invoke-virtual {p1, v0}, Lbr/com/topaz/q0/d;->b(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
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
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-virtual {p2, p1}, Lbr/com/topaz/q0/d;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/q0/f;->f(J)V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->d:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/q0/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/q0/f;->g(J)V

    return-void
.end method

.method public e()V
    .locals 5

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->b:Lbr/com/topaz/q0/f;

    invoke-virtual {v3}, Lbr/com/topaz/q0/f;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/q0/f;->e(J)V

    return-void
.end method
