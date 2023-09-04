.class public Lbr/com/topaz/c0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/c0/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v5

    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v1, v5}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-static {p1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v2

    new-instance v3, Lbr/com/topaz/k/b;

    invoke-direct {v3, v0, v2}, Lbr/com/topaz/k/b;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;)V

    new-instance v0, Lbr/com/topaz/d0/c;

    invoke-direct {v0, v5, v3}, Lbr/com/topaz/d0/c;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/k/b;)V

    new-instance v4, Lbr/com/topaz/d0/a;

    invoke-direct {v4, p1, v1}, Lbr/com/topaz/d0/a;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v6, Lbr/com/topaz/m0/e;

    invoke-direct {v6, p1, v1}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v7, Lbr/com/topaz/c0/e;

    invoke-direct {v7, p1}, Lbr/com/topaz/c0/e;-><init>(Landroid/content/Context;)V

    new-instance v8, Lbr/com/topaz/c0/i;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lbr/com/topaz/c0/i;-><init>(Landroid/content/Context;Lbr/com/topaz/d0/c;Lbr/com/topaz/d0/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Lbr/com/topaz/c0/e;)V

    iput-object v8, p0, Lbr/com/topaz/c0/h;->a:Lbr/com/topaz/c0/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c0/h;->a:Lbr/com/topaz/c0/i;

    invoke-virtual {v0, p1}, Lbr/com/topaz/c0/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/c0/h;->a:Lbr/com/topaz/c0/i;

    invoke-virtual {v0, p1}, Lbr/com/topaz/c0/i;->c(Ljava/lang/String;)V

    return-void
.end method
