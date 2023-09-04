.class public Lbr/com/topaz/heartbeat/ocr/Processor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/ocr/c$a;


# instance fields
.field private final a:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

.field private final b:Lbr/com/topaz/heartbeat/ocr/c;

.field private final c:Lbr/com/topaz/heartbeat/ocr/e;

.field private d:Landroid/graphics/Bitmap;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:J


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/ocr/c;Lbr/com/topaz/heartbeat/ocr/e;Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->b:Lbr/com/topaz/heartbeat/ocr/c;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->c:Lbr/com/topaz/heartbeat/ocr/e;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->a:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(ILbr/com/topaz/z/b;)V
    .locals 1

    invoke-virtual {p2}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->d:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->a:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

    invoke-interface {p2, p1}, Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;->onFailure(I)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lbr/com/topaz/z/b;

    invoke-direct {v0}, Lbr/com/topaz/z/b;-><init>()V

    invoke-virtual {v0, p1}, Lbr/com/topaz/z/b;->a(Landroid/graphics/Bitmap;)V

    iget-wide v1, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->g:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->g:J

    :cond_1
    iget-wide v1, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->g:J

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/z/b;->a(J)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->b:Lbr/com/topaz/heartbeat/ocr/c;

    invoke-interface {p1, v0, p0}, Lbr/com/topaz/heartbeat/ocr/c;->a(Lbr/com/topaz/z/b;Lbr/com/topaz/heartbeat/ocr/c$a;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/OCRFile;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->c:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-virtual {v0, p1, p0}, Lbr/com/topaz/heartbeat/ocr/e;->a(Ljava/util/List;Lbr/com/topaz/heartbeat/ocr/c$a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->a:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

    const/16 v0, 0x6f

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->a:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

    const/16 v0, 0x6e

    :goto_0
    invoke-interface {p1, v0}, Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;->onProgress(I)V

    return-void
.end method

.method public b(ILbr/com/topaz/z/b;)V
    .locals 2

    invoke-virtual {p2}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lbr/com/topaz/z/b;->f()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lbr/com/topaz/heartbeat/ocr/Processor$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/ocr/Processor$a;-><init>(Lbr/com/topaz/heartbeat/ocr/Processor;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/Processor;->a:Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;

    invoke-interface {v0, p1, p2}, Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;->onSuccess(ILjava/util/HashMap;)V

    return-void
.end method
