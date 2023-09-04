.class public Lbr/com/topaz/z/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/z/f$b;,
        Lbr/com/topaz/z/f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbr/com/topaz/heartbeat/ocr/Processor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;",
            "Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbr/com/topaz/heartbeat/ocr/Processor;"
        }
    .end annotation

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    :try_start_0
    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->C()Lbr/com/topaz/z/e;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lbr/com/topaz/z/e;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v3, p1, v1, p3}, Lbr/com/topaz/z/g;->a(Landroid/content/Context;Lbr/com/topaz/z/e;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;)Lbr/com/topaz/heartbeat/ocr/e;

    move-result-object p0

    new-instance p3, Lbr/com/topaz/heartbeat/ocr/a;

    invoke-direct {p3, p0}, Lbr/com/topaz/heartbeat/ocr/a;-><init>(Lbr/com/topaz/heartbeat/ocr/e;)V

    invoke-virtual {v3}, Lbr/com/topaz/z/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p3, Lbr/com/topaz/z/d;

    invoke-direct {p3, v3}, Lbr/com/topaz/z/d;-><init>(Lbr/com/topaz/z/e;)V

    new-instance v0, Lbr/com/topaz/heartbeat/ocr/d;

    new-instance v4, Lbr/com/topaz/heartbeat/ocr/b;

    new-instance v2, Lbr/com/topaz/u0/q;

    invoke-direct {v2}, Lbr/com/topaz/u0/q;-><init>()V

    invoke-direct {v4, v3, p3, v2}, Lbr/com/topaz/heartbeat/ocr/b;-><init>(Lbr/com/topaz/z/e;Lbr/com/topaz/z/d;Lbr/com/topaz/u0/q;)V

    move-object v2, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lbr/com/topaz/heartbeat/ocr/d;-><init>(Lbr/com/topaz/z/e;Lbr/com/topaz/heartbeat/ocr/b;Lbr/com/topaz/heartbeat/ocr/e;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;)V

    move-object p3, v0

    :cond_0
    new-instance p1, Lbr/com/topaz/heartbeat/ocr/Processor;

    invoke-direct {p1, p3, p0, p2, p4}, Lbr/com/topaz/heartbeat/ocr/Processor;-><init>(Lbr/com/topaz/heartbeat/ocr/c;Lbr/com/topaz/heartbeat/ocr/e;Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object p1

    :cond_1
    new-instance p0, Lbr/com/topaz/z/f$b;

    invoke-direct {p0}, Lbr/com/topaz/z/f$b;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lbr/com/topaz/z/f$a;

    invoke-direct {p0}, Lbr/com/topaz/z/f$a;-><init>()V

    throw p0
    :try_end_0
    .catch Lbr/com/topaz/z/f$a; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lbr/com/topaz/z/f$b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "089"

    invoke-virtual {v1, p0, p1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const-string p1, "087"

    invoke-virtual {v1, p0, p1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    :goto_1
    throw p0
.end method
