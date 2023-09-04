.class public Lbr/com/topaz/l/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lbr/com/topaz/l/o;
    .locals 9

    new-instance v5, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v5}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v4, Lbr/com/topaz/u0/s;

    invoke-direct {v4}, Lbr/com/topaz/u0/s;-><init>()V

    invoke-static {p0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v6

    new-instance v3, Lbr/com/topaz/u0/e;

    new-instance v0, Lbr/com/topaz/u0/a;

    invoke-direct {v0}, Lbr/com/topaz/u0/a;-><init>()V

    invoke-direct {v3, v5, v0, v6}, Lbr/com/topaz/u0/e;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;Lbr/com/topaz/w0/b;)V

    new-instance v7, Lbr/com/topaz/l/m;

    invoke-direct {v7, p0}, Lbr/com/topaz/l/m;-><init>(Landroid/content/Context;)V

    new-instance v2, Lbr/com/topaz/heartbeat/crypto/FileDecryption;

    invoke-direct {v2}, Lbr/com/topaz/heartbeat/crypto/FileDecryption;-><init>()V

    new-instance v8, Lbr/com/topaz/l/o;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lbr/com/topaz/l/o;-><init>(Landroid/content/Context;Lbr/com/topaz/k/d;Lbr/com/topaz/u0/e;Lbr/com/topaz/u0/r;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/l/m;)V

    return-object v8
.end method
