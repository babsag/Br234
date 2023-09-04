.class public Lbr/com/topaz/i0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lbr/com/topaz/heartbeat/sensors/a;)Lbr/com/topaz/heartbeat/sensors/c;
    .locals 4

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v0

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v1

    new-instance v2, Lbr/com/topaz/m0/e;

    new-instance v3, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v3, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-direct {v2, p0, v3}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance p0, Lbr/com/topaz/heartbeat/sensors/c;

    invoke-direct {p0, v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/sensors/c;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Lbr/com/topaz/heartbeat/sensors/a;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lbr/com/topaz/heartbeat/sensors/a;)Lbr/com/topaz/heartbeat/sensors/f;
    .locals 2

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v0

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object p0

    new-instance v1, Lbr/com/topaz/heartbeat/sensors/f;

    invoke-direct {v1, v0, p0, p1}, Lbr/com/topaz/heartbeat/sensors/f;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/sensors/a;)V

    return-object v1
.end method
