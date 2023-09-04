.class public Lbr/com/topaz/heartbeat/face/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/face/b$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private final c:Lcom/google/gson/Gson;

.field private final d:Lbr/com/topaz/heartbeat/face/FaceStructure;

.field private final e:Lbr/com/topaz/f0/d;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lbr/com/topaz/u0/c;

.field private final h:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lcom/google/gson/Gson;Lbr/com/topaz/f0/d;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/heartbeat/face/FaceStructure;",
            "Lbr/com/topaz/heartbeat/crypto/MidCrypt;",
            "Lcom/google/gson/Gson;",
            "Lbr/com/topaz/f0/d;",
            "Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "5"

    iput-object v0, p0, Lbr/com/topaz/heartbeat/face/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/b;->d:Lbr/com/topaz/heartbeat/face/FaceStructure;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/face/b;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/face/b;->c:Lcom/google/gson/Gson;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/face/b;->e:Lbr/com/topaz/f0/d;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/face/b;->h:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/face/b;->f:Ljava/util/Map;

    new-instance p1, Lbr/com/topaz/u0/c;

    new-instance p3, Lbr/com/topaz/u0/a;

    invoke-direct {p3}, Lbr/com/topaz/u0/a;-><init>()V

    invoke-direct {p1, p2, p3}, Lbr/com/topaz/u0/c;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;)V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/b;->g:Lbr/com/topaz/u0/c;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/face/b;)Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/face/b;->h:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/b;->c:Lcom/google/gson/Gson;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/b;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/b;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/face/b;->d:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/face/FaceStructure;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([BLjava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/b;->g:Lbr/com/topaz/u0/c;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/u0/c;->b([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/face/c;Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;)V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/face/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lbr/com/topaz/heartbeat/face/c;->c()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p4}, Lbr/com/topaz/heartbeat/face/c;->c()I

    move-result v0

    invoke-static {p1, v0}, Lbr/com/topaz/u0/b;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p4, p1}, Lbr/com/topaz/heartbeat/face/c;->a(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    new-instance p4, Lbr/com/topaz/heartbeat/face/c$a;

    invoke-direct {p4}, Lbr/com/topaz/heartbeat/face/c$a;-><init>()V

    invoke-virtual {p4, v0, v1}, Lbr/com/topaz/heartbeat/face/c$a;->a(J)V

    invoke-virtual {p4, p1}, Lbr/com/topaz/heartbeat/face/c$a;->b([B)V

    new-instance v6, Lbr/com/topaz/heartbeat/face/b$b;

    invoke-direct {v6, p0, p5}, Lbr/com/topaz/heartbeat/face/b$b;-><init>(Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;)V

    new-instance p1, Lbr/com/topaz/f0/d$a;

    invoke-direct {p1}, Lbr/com/topaz/f0/d$a;-><init>()V

    const-string v0, "d"

    iput-object v0, p1, Lbr/com/topaz/f0/d$a;->b:Ljava/lang/String;

    iput-object p2, p1, Lbr/com/topaz/f0/d$a;->c:Ljava/lang/String;

    invoke-virtual {p4}, Lbr/com/topaz/heartbeat/face/c$a;->b()[B

    move-result-object p2

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->r()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p2, p4}, Lbr/com/topaz/heartbeat/face/b;->a([BLjava/lang/String;)[B

    move-result-object p2

    iput-object p2, p1, Lbr/com/topaz/f0/d$a;->a:[B

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/b;->e:Lbr/com/topaz/f0/d;

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "5"

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lbr/com/topaz/f0/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lbr/com/topaz/f0/d$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0x1ba

    invoke-interface {p5, p1}, Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;->onFinish(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Lbr/com/topaz/t/b;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/face/b$c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/face/c$a;",
            ">;",
            "Lbr/com/topaz/t/b;",
            "Lbr/com/topaz/heartbeat/face/FaceStructure;",
            "Lbr/com/topaz/heartbeat/face/b$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/face/b;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lbr/com/topaz/heartbeat/face/b$a;

    invoke-direct {v6, p0, p4}, Lbr/com/topaz/heartbeat/face/b$a;-><init>(Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/heartbeat/face/b$c;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/heartbeat/face/c$a;

    new-instance v1, Lbr/com/topaz/f0/d$a;

    invoke-direct {v1}, Lbr/com/topaz/f0/d$a;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lbr/com/topaz/f0/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/c$a;->b()[B

    move-result-object v4

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->r()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lbr/com/topaz/heartbeat/face/b;->a([BLjava/lang/String;)[B

    move-result-object v4

    iput-object v4, v1, Lbr/com/topaz/f0/d$a;->a:[B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ts_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/c$a;->c()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbr/com/topaz/f0/d$a;->b:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/heartbeat/face/b;->c:Lcom/google/gson/Gson;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lbr/com/topaz/f0/d$a;

    invoke-direct {p2}, Lbr/com/topaz/f0/d$a;-><init>()V

    const-string p4, "d"

    iput-object p4, p2, Lbr/com/topaz/f0/d$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->r()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lbr/com/topaz/heartbeat/face/b;->a([BLjava/lang/String;)[B

    move-result-object p1

    iput-object p1, p2, Lbr/com/topaz/f0/d$a;->a:[B

    const-string p1, "d.raw"

    iput-object p1, p2, Lbr/com/topaz/f0/d$a;->b:Ljava/lang/String;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/b;->e:Lbr/com/topaz/f0/d;

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->s()Ljava/lang/String;

    move-result-object v5

    const-string v4, "5"

    invoke-virtual/range {v0 .. v6}, Lbr/com/topaz/f0/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lbr/com/topaz/f0/d$b;)V

    return-void
.end method
