.class public Lbr/com/topaz/heartbeat/face/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/u/c;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;)Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;
    .locals 7

    new-instance v6, Lbr/com/topaz/heartbeat/face/a$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/heartbeat/face/a$a;-><init>(Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/u/c;)V

    return-object v6
.end method

.method public static a(Landroid/content/Context;Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;Lbr/com/topaz/heartbeat/face/FaceStructure;)Lbr/com/topaz/heartbeat/face/FaceProcessor;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    :try_start_0
    invoke-static/range {p0 .. p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v1

    new-instance v13, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v13, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v3}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static/range {p0 .. p0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v10

    new-instance v1, Lbr/com/topaz/t/b;

    invoke-virtual/range {p3 .. p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->u()I

    move-result v2

    invoke-direct {v1, v2}, Lbr/com/topaz/t/b;-><init>(I)V

    new-instance v11, Lbr/com/topaz/heartbeat/face/c;

    invoke-direct {v11}, Lbr/com/topaz/heartbeat/face/c;-><init>()V

    new-instance v14, Lbr/com/topaz/u/c;

    invoke-direct {v14, v1}, Lbr/com/topaz/u/c;-><init>(Lbr/com/topaz/t/b;)V

    new-instance v1, Lbr/com/topaz/heartbeat/face/d;

    invoke-direct {v1}, Lbr/com/topaz/heartbeat/face/d;-><init>()V

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Lbr/com/topaz/heartbeat/face/d;->a(Landroid/content/Context;)Lbr/com/topaz/heartbeat/face/d;

    move-result-object v15

    new-instance v5, Lbr/com/topaz/f0/d;

    invoke-direct {v5, v0}, Lbr/com/topaz/f0/d;-><init>(Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v7, Lbr/com/topaz/heartbeat/face/b;

    move-object v1, v7

    move-object/from16 v2, p3

    move-object/from16 v6, p2

    move-object v12, v7

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lbr/com/topaz/heartbeat/face/b;-><init>(Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lcom/google/gson/Gson;Lbr/com/topaz/f0/d;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;Ljava/util/Map;)V

    move-object/from16 v1, p1

    invoke-static {v1, v8, v12, v14, v0}, Lbr/com/topaz/heartbeat/face/a;->a(Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/u/c;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;)Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    move-result-object v1

    new-instance v7, Lbr/com/topaz/t/c;

    invoke-direct {v7, v1, v14, v8, v0}, Lbr/com/topaz/t/c;-><init>(Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;Lbr/com/topaz/u/c;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;)V

    new-instance v16, Lbr/com/topaz/heartbeat/face/FaceProcessor;

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move-object v3, v9

    move-object v4, v12

    move-object v5, v10

    move-object v6, v11

    move-object v8, v7

    move-object v7, v14

    move-object v9, v15

    move-object v10, v13

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lbr/com/topaz/heartbeat/face/FaceProcessor;-><init>(Lbr/com/topaz/heartbeat/face/FaceStructure;Ljava/util/Map;Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/w0/b;Lbr/com/topaz/heartbeat/face/c;Lbr/com/topaz/u/c;Lbr/com/topaz/t/c;Lbr/com/topaz/heartbeat/face/d;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v16

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_0

    const-string v1, "064"

    invoke-virtual {v13, v0, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OFDHB:064"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method
