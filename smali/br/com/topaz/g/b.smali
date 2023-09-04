.class public Lbr/com/topaz/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v3

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v2

    new-instance v5, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v5, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-static {v3}, Lbr/com/topaz/g/d;->a(Lbr/com/topaz/l/f0;)Lbr/com/topaz/g/d;

    move-result-object v4

    new-instance v6, Lbr/com/topaz/g/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/g/c;-><init>(Landroid/content/Context;Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/g/d;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-virtual {v6}, Lbr/com/topaz/g/c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
