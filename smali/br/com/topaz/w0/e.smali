.class public Lbr/com/topaz/w0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lbr/com/topaz/u0/r;)Lbr/com/topaz/w0/d;
    .locals 3

    new-instance p1, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {p1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static {p0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v0

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object p0

    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v2, Lbr/com/topaz/w0/d;

    invoke-direct {v2, p0, v0, p1, v1}, Lbr/com/topaz/w0/d;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/w0/b;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    return-object v2
.end method
