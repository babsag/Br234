.class public Lbr/com/topaz/heartbeat/ocr/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/ocr/c;
.implements Lbr/com/topaz/heartbeat/ocr/c$a;


# instance fields
.field private final a:Lbr/com/topaz/z/e;

.field private final b:Lbr/com/topaz/heartbeat/ocr/b;

.field private final c:Lbr/com/topaz/heartbeat/ocr/e;

.field private final d:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lbr/com/topaz/heartbeat/ocr/c$a;

.field private h:I


# direct methods
.method public constructor <init>(Lbr/com/topaz/z/e;Lbr/com/topaz/heartbeat/ocr/b;Lbr/com/topaz/heartbeat/ocr/e;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/z/e;",
            "Lbr/com/topaz/heartbeat/ocr/b;",
            "Lbr/com/topaz/heartbeat/ocr/e;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/d;->a:Lbr/com/topaz/z/e;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/ocr/d;->b:Lbr/com/topaz/heartbeat/ocr/b;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/ocr/d;->c:Lbr/com/topaz/heartbeat/ocr/e;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/ocr/d;->e:Ljava/util/HashMap;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/ocr/d;->d:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

    return-void
.end method

.method private a(Lbr/com/topaz/z/b;)Z
    .locals 2

    iget v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbr/com/topaz/heartbeat/ocr/d;->f:I

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/d;->a:Lbr/com/topaz/z/e;

    invoke-virtual {v1}, Lbr/com/topaz/z/e;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/ocr/d;->c(Lbr/com/topaz/z/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->a:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->r()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, v1}, Lbr/com/topaz/z/b;->a(Z)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lbr/com/topaz/z/b;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->f:I

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->d:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;->onProgress(I)V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->c:Lbr/com/topaz/heartbeat/ocr/e;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/d;->g:Lbr/com/topaz/heartbeat/ocr/c$a;

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/z/b;Lbr/com/topaz/heartbeat/ocr/c$a;)V

    return-void
.end method

.method private c(Lbr/com/topaz/z/b;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lbr/com/topaz/z/b;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/d;->a:Lbr/com/topaz/z/e;

    invoke-virtual {p1}, Lbr/com/topaz/z/e;->a()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/d;->a:Lbr/com/topaz/z/e;

    invoke-virtual {p1}, Lbr/com/topaz/z/e;->a()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, -0x39

    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->h:I

    :cond_1
    return p1
.end method


# virtual methods
.method public a(ILbr/com/topaz/z/b;)V
    .locals 2

    const/16 v0, -0x30

    if-ne p1, v0, :cond_2

    const/16 v0, -0x34

    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->h:I

    invoke-direct {p0, p2}, Lbr/com/topaz/heartbeat/ocr/d;->a(Lbr/com/topaz/z/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lbr/com/topaz/heartbeat/ocr/d;->f:I

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/d;->g:Lbr/com/topaz/heartbeat/ocr/c$a;

    iget v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->h:I

    invoke-interface {p1, v0, p2}, Lbr/com/topaz/heartbeat/ocr/c$a;->a(ILbr/com/topaz/z/b;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lbr/com/topaz/z/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lbr/com/topaz/heartbeat/ocr/d;->b(Lbr/com/topaz/z/b;)V

    return-void

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->a:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/d;->e:Ljava/util/HashMap;

    const-string v0, "EC"

    const-string v1, "-48"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lbr/com/topaz/heartbeat/ocr/d;->b(Lbr/com/topaz/z/b;)V

    return-void

    :cond_2
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->g:Lbr/com/topaz/heartbeat/ocr/c$a;

    invoke-interface {v0, p1, p2}, Lbr/com/topaz/heartbeat/ocr/c$a;->a(ILbr/com/topaz/z/b;)V

    return-void
.end method

.method public a(Lbr/com/topaz/z/b;Lbr/com/topaz/heartbeat/ocr/c$a;)V
    .locals 0

    iput-object p2, p0, Lbr/com/topaz/heartbeat/ocr/d;->g:Lbr/com/topaz/heartbeat/ocr/c$a;

    iget-object p2, p0, Lbr/com/topaz/heartbeat/ocr/d;->b:Lbr/com/topaz/heartbeat/ocr/b;

    invoke-virtual {p2, p1, p0}, Lbr/com/topaz/heartbeat/ocr/b;->a(Lbr/com/topaz/z/b;Lbr/com/topaz/heartbeat/ocr/c$a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/d;->g:Lbr/com/topaz/heartbeat/ocr/c$a;

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/ocr/c$a;->a(Z)V

    return-void
.end method

.method public b(ILbr/com/topaz/z/b;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lbr/com/topaz/heartbeat/ocr/d;->f:I

    invoke-direct {p0, p2}, Lbr/com/topaz/heartbeat/ocr/d;->b(Lbr/com/topaz/z/b;)V

    return-void
.end method
