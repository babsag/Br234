.class public Lbr/com/topaz/heartbeat/ocr/e;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/ocr/e$d;
    }
.end annotation


# instance fields
.field private final b:Lbr/com/topaz/w0/b;

.field private final c:Lbr/com/topaz/u0/c;

.field private final d:Lbr/com/topaz/f0/e;

.field private final e:Lbr/com/topaz/u0/h;

.field private final f:Lbr/com/topaz/l/e0;

.field private final g:Lbr/com/topaz/z/e;

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/gson/Gson;

.field private final j:Lbr/com/topaz/u0/a;

.field private k:Lbr/com/topaz/heartbeat/ocr/e$d;

.field private l:[B

.field private m:[B

.field private n:[B

.field private final o:Lbr/com/topaz/heartbeat/face/d;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/OCRFile;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private r:Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/c;Lbr/com/topaz/f0/e;Lbr/com/topaz/u0/h;Lbr/com/topaz/l/e0;Lbr/com/topaz/z/e;Ljava/util/HashMap;Lcom/google/gson/Gson;Lbr/com/topaz/u0/a;Lbr/com/topaz/heartbeat/face/d;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/s/a;",
            "Lbr/com/topaz/w0/b;",
            "Lbr/com/topaz/u0/c;",
            "Lbr/com/topaz/f0/e;",
            "Lbr/com/topaz/u0/h;",
            "Lbr/com/topaz/l/e0;",
            "Lbr/com/topaz/z/e;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/gson/Gson;",
            "Lbr/com/topaz/u0/a;",
            "Lbr/com/topaz/heartbeat/face/d;",
            "Lbr/com/topaz/heartbeat/utils/OFDException;",
            "Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/ocr/e;->b:Lbr/com/topaz/w0/b;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/ocr/e;->c:Lbr/com/topaz/u0/c;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/ocr/e;->d:Lbr/com/topaz/f0/e;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/ocr/e;->e:Lbr/com/topaz/u0/h;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/ocr/e;->f:Lbr/com/topaz/l/e0;

    iput-object p7, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    iput-object p8, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    iput-object p9, p0, Lbr/com/topaz/heartbeat/ocr/e;->i:Lcom/google/gson/Gson;

    iput-object p10, p0, Lbr/com/topaz/heartbeat/ocr/e;->j:Lbr/com/topaz/u0/a;

    iput-object p11, p0, Lbr/com/topaz/heartbeat/ocr/e;->o:Lbr/com/topaz/heartbeat/face/d;

    iput-object p12, p0, Lbr/com/topaz/heartbeat/ocr/e;->q:Lbr/com/topaz/heartbeat/utils/OFDException;

    const/4 p1, 0x0

    new-array p2, p1, [B

    iput-object p2, p0, Lbr/com/topaz/heartbeat/ocr/e;->l:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e;->m:[B

    iput-object p13, p0, Lbr/com/topaz/heartbeat/ocr/e;->r:Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/ocr/e;->r:Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    return-object p0
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/ocr/e;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/ocr/e;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e;->j:Lbr/com/topaz/u0/a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lbr/com/topaz/u0/a;->a(Ljava/lang/String;I)[B

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->c:Lbr/com/topaz/u0/c;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->n:[B

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/u0/c;->a([B[B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-idn-u"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "x-idn-o"

    const-string v1, "8"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {p1}, Lbr/com/topaz/z/e;->l()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "x-k-id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "x-ci-id"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lbr/com/topaz/z/b;)V
    .locals 2

    invoke-virtual {p1}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v1}, Lbr/com/topaz/z/e;->d()I

    move-result v1

    invoke-static {v0, v1}, Lbr/com/topaz/u0/b;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/z/b;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/com/topaz/heartbeat/ocr/e;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->l:[B

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/z/b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e;->m:[B

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/OCRFile;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e;->p:Ljava/util/List;

    return-void
.end method

.method private a(Lbr/com/topaz/f0/e$b;)Z
    .locals 3

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-Signature"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->j:Lbr/com/topaz/u0/a;

    invoke-virtual {v2, v0, v1}, Lbr/com/topaz/u0/a;->a(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->e:Lbr/com/topaz/u0/h;

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->b()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lbr/com/topaz/u0/h;->e([B)[B

    move-result-object p1

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->c:Lbr/com/topaz/u0/c;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v2}, Lbr/com/topaz/z/e;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lbr/com/topaz/u0/c;->a([BLjava/lang/String;[B)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/ocr/e;Lbr/com/topaz/f0/e$b;)Z
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/f0/e$b;)Z

    move-result p0

    return p0
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 6

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->f()I

    move-result v0

    invoke-static {p1, v0}, Lbr/com/topaz/u0/b;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v0}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v1}, Lbr/com/topaz/z/e;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/topaz/l/w;

    :try_start_0
    invoke-virtual {v3}, Lbr/com/topaz/l/w;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lbr/com/topaz/l/w;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lbr/com/topaz/heartbeat/face/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lbr/com/topaz/heartbeat/ocr/e;->o:Lbr/com/topaz/heartbeat/face/d;

    invoke-virtual {v3}, Lbr/com/topaz/l/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Lbr/com/topaz/heartbeat/face/d;->b(Ljava/lang/String;Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/d;

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lbr/com/topaz/heartbeat/ocr/e;->o:Lbr/com/topaz/heartbeat/face/d;

    invoke-virtual {v3}, Lbr/com/topaz/l/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lbr/com/topaz/l/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lbr/com/topaz/heartbeat/face/d;->b(Ljava/lang/String;Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->o:Lbr/com/topaz/heartbeat/face/d;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v1}, Lbr/com/topaz/z/e;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/face/d;->b(I)Lbr/com/topaz/heartbeat/face/d;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->o:Lbr/com/topaz/heartbeat/face/d;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v1}, Lbr/com/topaz/z/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/face/d;->a(I)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->o:Lbr/com/topaz/heartbeat/face/d;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/face/d;->a(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/ocr/e$d;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/ocr/e;->k:Lbr/com/topaz/heartbeat/ocr/e$d;

    return-object p0
.end method

.method private b([B)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->e:Lbr/com/topaz/u0/h;

    invoke-virtual {v0, p1}, Lbr/com/topaz/u0/h;->e([B)[B

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->e:Lbr/com/topaz/u0/h;

    invoke-virtual {v1, p1}, Lbr/com/topaz/u0/h;->a([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SHA256"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/u0/a;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/ocr/e;->j:Lbr/com/topaz/u0/a;

    return-object p0
.end method

.method private c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    const-string v1, "SHA256"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    const-string v1, "DS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    const-string v1, "IS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic d(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/utils/OFDException;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/ocr/e;->q:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-object p0
.end method

.method private d()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v1}, Lbr/com/topaz/z/e;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v1}, Lbr/com/topaz/z/e;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->m:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->l:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lbr/com/topaz/heartbeat/ocr/e;)V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/e;->c()V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->i:Lcom/google/gson/Gson;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->c:Lbr/com/topaz/u0/c;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v2}, Lbr/com/topaz/z/e;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/u0/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()[B
    .locals 9

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbr/com/topaz/heartbeat/OCRFile;

    invoke-virtual {v5}, Lbr/com/topaz/heartbeat/OCRFile;->getData()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "i"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lbr/com/topaz/heartbeat/OCRFile;->getFileName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "n"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lbr/com/topaz/heartbeat/OCRFile;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "m"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lbr/com/topaz/heartbeat/ocr/e;->e:Lbr/com/topaz/u0/h;

    invoke-virtual {v5}, Lbr/com/topaz/heartbeat/OCRFile;->getData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lbr/com/topaz/u0/h;->e([B)[B

    move-result-object v7

    iget-object v8, p0, Lbr/com/topaz/heartbeat/ocr/e;->e:Lbr/com/topaz/u0/h;

    invoke-virtual {v8, v7}, Lbr/com/topaz/u0/h;->a([B)Ljava/lang/String;

    move-result-object v7

    const-string v8, "h"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lbr/com/topaz/heartbeat/OCRFile;->getData()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    const-string v3, "IS"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v2}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->f:Lbr/com/topaz/l/e0;

    invoke-interface {v1}, Lbr/com/topaz/l/e0;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CLIENT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->n:[B

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->n:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->j:Lbr/com/topaz/u0/a;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->n:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbr/com/topaz/u0/a;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/heartbeat/ocr/e$d;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e;->k:Lbr/com/topaz/heartbeat/ocr/e$d;

    return-void
.end method

.method public a(Lbr/com/topaz/z/b;Lbr/com/topaz/heartbeat/ocr/c$a;)V
    .locals 1

    new-instance v0, Lbr/com/topaz/heartbeat/ocr/e$b;

    invoke-direct {v0, p0, p1, p2}, Lbr/com/topaz/heartbeat/ocr/e$b;-><init>(Lbr/com/topaz/heartbeat/ocr/e;Lbr/com/topaz/z/b;Lbr/com/topaz/heartbeat/ocr/c$a;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/heartbeat/ocr/e$d;)V

    invoke-virtual {p0, p1}, Lbr/com/topaz/heartbeat/ocr/e;->b(Lbr/com/topaz/z/b;)V

    invoke-virtual {p0}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Ljava/util/List;Lbr/com/topaz/heartbeat/ocr/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/OCRFile;",
            ">;",
            "Lbr/com/topaz/heartbeat/ocr/c$a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lbr/com/topaz/heartbeat/ocr/e$c;

    invoke-direct {v0, p0, p2}, Lbr/com/topaz/heartbeat/ocr/e$c;-><init>(Lbr/com/topaz/heartbeat/ocr/e;Lbr/com/topaz/heartbeat/ocr/c$a;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/heartbeat/ocr/e$d;)V

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/ocr/e;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->d:Lbr/com/topaz/f0/e;

    invoke-direct {p0, p2}, Lbr/com/topaz/heartbeat/ocr/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->c:Lbr/com/topaz/u0/c;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v2}, Lbr/com/topaz/z/e;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lbr/com/topaz/u0/c;->b([BLjava/lang/String;)[B

    move-result-object p3

    new-instance v1, Lbr/com/topaz/heartbeat/ocr/e$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/ocr/e$a;-><init>(Lbr/com/topaz/heartbeat/ocr/e;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lbr/com/topaz/f0/e;->a(Ljava/util/List;Ljava/util/HashMap;[BLbr/com/topaz/f0/e$a;)V

    return-void
.end method

.method public b(Lbr/com/topaz/z/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/z/b;)V

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/e;->h()V

    const/4 v0, 0x1

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e;->p:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/e;->g()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/e;->d()[B

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v2}, Lbr/com/topaz/z/e;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v2}, Lbr/com/topaz/z/e;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    const-string v3, "DS"

    iget-object v4, p0, Lbr/com/topaz/heartbeat/ocr/e;->m:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lbr/com/topaz/heartbeat/ocr/e;->b([B)V

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/e;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/heartbeat/ocr/e;->r:Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    iget-object v4, p0, Lbr/com/topaz/heartbeat/ocr/e;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v4}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a(ZLjava/util/HashMap;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->g:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->o()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v1}, Lbr/com/topaz/heartbeat/ocr/e;->a(Ljava/util/List;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e;->k:Lbr/com/topaz/heartbeat/ocr/e$d;

    const/16 v1, -0x31

    invoke-interface {v0, v1}, Lbr/com/topaz/heartbeat/ocr/e$d;->onFailure(I)V

    :goto_1
    return-void
.end method
