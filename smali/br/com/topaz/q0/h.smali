.class public Lbr/com/topaz/q0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/utils/OFDException;)Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;
    .locals 7

    :try_start_0
    new-instance v6, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    new-instance v2, Lbr/com/topaz/q0/b;

    invoke-direct {v2}, Lbr/com/topaz/q0/b;-><init>()V

    new-instance v3, Lbr/com/topaz/m/e;

    new-instance v0, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-direct {v3, p0, p1, v0, p2}, Lbr/com/topaz/m/e;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v5, Lbr/com/topaz/q0/g;

    invoke-interface {p1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->q()Lbr/com/topaz/heartbeat/face/FaceStructure;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->b()Lbr/com/topaz/q0/e;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/q0/e;->a()Lbr/com/topaz/r/h;

    move-result-object v0

    invoke-direct {v5, p0, v0}, Lbr/com/topaz/q0/g;-><init>(Landroid/content/Context;Lbr/com/topaz/r/h;)V

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;-><init>(Landroid/content/Context;Lbr/com/topaz/q0/b;Lbr/com/topaz/m/e;Lbr/com/topaz/l/f0;Lbr/com/topaz/q0/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    if-eqz p2, :cond_0

    const-string p1, "101"

    invoke-virtual {p2, p0, p1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "OFDHB:101"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
