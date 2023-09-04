.class public Lbr/com/topaz/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/c0/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Success request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 12

    new-instance v0, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static {p1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v1

    new-instance v2, Lbr/com/topaz/k/b;

    invoke-direct {v2, v0, v1}, Lbr/com/topaz/k/b;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;)V

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v8

    new-instance v0, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v0, v8}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v6, Lbr/com/topaz/d0/a;

    invoke-direct {v6, p1, v0}, Lbr/com/topaz/d0/a;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v7, Lbr/com/topaz/d0/c;

    invoke-direct {v7, v8, v2}, Lbr/com/topaz/d0/c;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/k/b;)V

    new-instance v9, Lbr/com/topaz/m0/e;

    invoke-direct {v9, p1, v0}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v10, Lbr/com/topaz/c0/e;

    invoke-direct {v10, p1}, Lbr/com/topaz/c0/e;-><init>(Landroid/content/Context;)V

    new-instance v11, Lbr/com/topaz/c0/a;

    new-instance v0, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v0, v8}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-direct {v11, v0}, Lbr/com/topaz/c0/a;-><init>(Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v0, Lbr/com/topaz/c0/d;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v11}, Lbr/com/topaz/c0/d;-><init>(Landroid/content/Context;Lbr/com/topaz/c0/c;Lbr/com/topaz/d0/a;Lbr/com/topaz/d0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Lbr/com/topaz/c0/e;Lbr/com/topaz/c0/a;)V

    invoke-virtual {v0}, Lbr/com/topaz/c0/d;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Failure request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
