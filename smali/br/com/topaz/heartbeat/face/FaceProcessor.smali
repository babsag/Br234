.class public Lbr/com/topaz/heartbeat/face/FaceProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbr/com/topaz/heartbeat/face/b;

.field private final b:Lbr/com/topaz/heartbeat/face/c;

.field private final c:Lbr/com/topaz/u/c;

.field private final d:Lbr/com/topaz/t/c;

.field private final e:Lbr/com/topaz/heartbeat/face/FaceStructure;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final g:Lbr/com/topaz/heartbeat/face/d;

.field private final h:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/face/FaceStructure;Ljava/util/Map;Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/w0/b;Lbr/com/topaz/heartbeat/face/c;Lbr/com/topaz/u/c;Lbr/com/topaz/t/c;Lbr/com/topaz/heartbeat/face/d;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/heartbeat/face/FaceStructure;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbr/com/topaz/heartbeat/face/b;",
            "Lbr/com/topaz/w0/b;",
            "Lbr/com/topaz/heartbeat/face/c;",
            "Lbr/com/topaz/u/c;",
            "Lbr/com/topaz/t/c;",
            "Lbr/com/topaz/heartbeat/face/d;",
            "Lbr/com/topaz/heartbeat/utils/OFDException;",
            "Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;",
            ")V"
        }
    .end annotation

    const-string v0, "LIVENESS_TYPE"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->i:Ljava/util/Map;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a:Lbr/com/topaz/heartbeat/face/b;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->b:Lbr/com/topaz/heartbeat/face/c;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    iput-object p7, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->d:Lbr/com/topaz/t/c;

    iput-object p8, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->g:Lbr/com/topaz/heartbeat/face/d;

    iput-object p10, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->h:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->f:Ljava/util/List;

    :try_start_0
    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->v()I

    move-result p2

    invoke-virtual {p5, p2}, Lbr/com/topaz/heartbeat/face/c;->a(I)Lbr/com/topaz/heartbeat/face/c;

    move-result-object p2

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->w()I

    move-result p3

    invoke-virtual {p2, p3}, Lbr/com/topaz/heartbeat/face/c;->b(I)Lbr/com/topaz/heartbeat/face/c;

    invoke-virtual {p6, p5}, Lbr/com/topaz/u/c;->a(Lbr/com/topaz/u/c$a;)Lbr/com/topaz/u/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MID"

    invoke-virtual {p0, p3, p2}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "2"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "064"

    invoke-virtual {p9, p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->I()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/heartbeat/face/FaceStructure$a;

    :try_start_0
    iget-object v2, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->g:Lbr/com/topaz/heartbeat/face/d;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/face/d;->a()Lbr/com/topaz/heartbeat/face/d$a;

    move-result-object v2

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/heartbeat/face/d$a;->b(I)Lbr/com/topaz/heartbeat/face/d$a;

    move-result-object v2

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/heartbeat/face/d$a;->a(I)Lbr/com/topaz/heartbeat/face/d$a;

    move-result-object v2

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/heartbeat/face/d$a;->a(Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/d$a;

    move-result-object v2

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/heartbeat/face/d$a;->c(I)Lbr/com/topaz/heartbeat/face/d$a;

    move-result-object v2

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/heartbeat/face/d$a;->a(Z)Lbr/com/topaz/heartbeat/face/d$a;

    move-result-object v2

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lbr/com/topaz/heartbeat/face/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->e()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lbr/com/topaz/heartbeat/face/d$a;->b(Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/l/w;

    :try_start_1
    invoke-virtual {v1}, Lbr/com/topaz/l/w;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lbr/com/topaz/l/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lbr/com/topaz/heartbeat/face/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->g:Lbr/com/topaz/heartbeat/face/d;

    invoke-virtual {v1}, Lbr/com/topaz/l/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lbr/com/topaz/heartbeat/face/d;->b(Ljava/lang/String;Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/d;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->g:Lbr/com/topaz/heartbeat/face/d;

    invoke-virtual {v1}, Lbr/com/topaz/l/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbr/com/topaz/l/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbr/com/topaz/heartbeat/face/d;->b(Ljava/lang/String;Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->b:Lbr/com/topaz/heartbeat/face/c;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->g:Lbr/com/topaz/heartbeat/face/d;

    invoke-virtual {p1, v0}, Lbr/com/topaz/heartbeat/face/c;->a(Lbr/com/topaz/heartbeat/face/d;)V

    :cond_6
    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lbr/com/topaz/u/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    new-instance v2, Lbr/com/topaz/u/e;

    invoke-direct {v2}, Lbr/com/topaz/u/e;-><init>()V

    :goto_1
    invoke-virtual {v1, v2}, Lbr/com/topaz/u/c;->a(Lbr/com/topaz/u/b;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lbr/com/topaz/u/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    new-instance v2, Lbr/com/topaz/u/a;

    invoke-direct {v2}, Lbr/com/topaz/u/a;-><init>()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lbr/com/topaz/u/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    new-instance v2, Lbr/com/topaz/u/g;

    invoke-direct {v2}, Lbr/com/topaz/u/g;-><init>()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lbr/com/topaz/u/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    new-instance v2, Lbr/com/topaz/u/f;

    invoke-direct {v2}, Lbr/com/topaz/u/f;-><init>()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->k()I

    move-result v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/face/FaceStructure;->A()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/u/c;->a(IZ)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->l()I

    move-result v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/face/FaceStructure;->q()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lbr/com/topaz/u/c;->a(IJ)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v0}, Lbr/com/topaz/u/c;->a()Lbr/com/topaz/u/c$a;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/u/c$a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/heartbeat/face/c$a;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->f:Ljava/util/List;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/c$a;->a()[B

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(FFFF)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->d:Lbr/com/topaz/t/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbr/com/topaz/t/c;->a(FFFF)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;)V
    .locals 9

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->h:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->i:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a(ZLjava/util/Map;)V

    :cond_0
    iget-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a:Lbr/com/topaz/heartbeat/face/b;

    iget-object v6, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->e:Lbr/com/topaz/heartbeat/face/FaceStructure;

    iget-object v7, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->b:Lbr/com/topaz/heartbeat/face/c;

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lbr/com/topaz/heartbeat/face/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/face/c;Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;)V

    return-void
.end method

.method public a(Landroid/media/Image;I)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->h:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->i:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a(ZLjava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->d:Lbr/com/topaz/t/c;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/t/c;->a(Landroid/media/Image;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a([BIII)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->h:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->i:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a(ZLjava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->d:Lbr/com/topaz/t/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbr/com/topaz/t/c;->a([BIII)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v0}, Lbr/com/topaz/u/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v0}, Lbr/com/topaz/u/c;->b()Lbr/com/topaz/u/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceProcessor;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v0}, Lbr/com/topaz/u/c;->b()Lbr/com/topaz/u/b;

    move-result-object v0

    instance-of v0, v0, Lbr/com/topaz/u/d;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
