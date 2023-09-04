.class public Lbr/com/topaz/z/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lbr/com/topaz/z/e;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;)Lbr/com/topaz/heartbeat/ocr/e;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbr/com/topaz/z/e;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lbr/com/topaz/heartbeat/utils/OFDException;",
            "Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;",
            ")",
            "Lbr/com/topaz/heartbeat/ocr/e;"
        }
    .end annotation

    new-instance v6, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v6}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static/range {p0 .. p0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v9

    new-instance v12, Lbr/com/topaz/u0/h;

    invoke-direct {v12}, Lbr/com/topaz/u0/h;-><init>()V

    new-instance v13, Lbr/com/topaz/l/g0;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    move-object v4, v12

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v10, Lbr/com/topaz/u0/c;

    new-instance v0, Lbr/com/topaz/u0/a;

    invoke-direct {v0}, Lbr/com/topaz/u0/a;-><init>()V

    invoke-direct {v10, v6, v0}, Lbr/com/topaz/u0/c;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;)V

    new-instance v11, Lbr/com/topaz/f0/e;

    invoke-virtual/range {p1 .. p1}, Lbr/com/topaz/z/e;->n()I

    move-result v0

    move-object/from16 v1, p4

    invoke-direct {v11, v0, v1}, Lbr/com/topaz/f0/e;-><init>(ILbr/com/topaz/q0/a;)V

    new-instance v16, Lcom/google/gson/Gson;

    invoke-direct/range {v16 .. v16}, Lcom/google/gson/Gson;-><init>()V

    new-instance v17, Lbr/com/topaz/u0/a;

    invoke-direct/range {v17 .. v17}, Lbr/com/topaz/u0/a;-><init>()V

    new-instance v0, Lbr/com/topaz/heartbeat/face/d;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/face/d;-><init>()V

    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Lbr/com/topaz/heartbeat/face/d;->a(Landroid/content/Context;)Lbr/com/topaz/heartbeat/face/d;

    move-result-object v18

    new-instance v0, Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v8

    move-object v7, v0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    invoke-direct/range {v7 .. v20}, Lbr/com/topaz/heartbeat/ocr/e;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/c;Lbr/com/topaz/f0/e;Lbr/com/topaz/u0/h;Lbr/com/topaz/l/e0;Lbr/com/topaz/z/e;Ljava/util/HashMap;Lcom/google/gson/Gson;Lbr/com/topaz/u0/a;Lbr/com/topaz/heartbeat/face/d;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;)V

    return-object v0
.end method
