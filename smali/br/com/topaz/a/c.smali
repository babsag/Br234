.class public Lbr/com/topaz/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lbr/com/topaz/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    new-instance v6, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v6}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static {p0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v7

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v8

    new-instance v9, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v9, v8}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v10, Lbr/com/topaz/u0/a;

    invoke-direct {v10}, Lbr/com/topaz/u0/a;-><init>()V

    new-instance v4, Lbr/com/topaz/u0/h;

    invoke-direct {v4}, Lbr/com/topaz/u0/h;-><init>()V

    new-instance v11, Lbr/com/topaz/l/g0;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance p0, Lbr/com/topaz/p0/b;

    move-object v0, p0

    move-object v1, v6

    move-object v2, v10

    move-object v3, v8

    move-object v4, v7

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lbr/com/topaz/p0/b;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/w0/b;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/l/e0;)V

    invoke-interface {p0}, Lbr/com/topaz/p0/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    new-instance v0, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static {p0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v2

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v1

    new-instance v3, Lbr/com/topaz/n/b;

    invoke-direct {v3, p0}, Lbr/com/topaz/n/b;-><init>(Landroid/content/Context;)V

    new-instance v5, Lbr/com/topaz/m/f;

    invoke-direct {v5}, Lbr/com/topaz/m/f;-><init>()V

    new-instance v6, Lbr/com/topaz/m/b;

    invoke-direct {v6}, Lbr/com/topaz/m/b;-><init>()V

    new-instance v4, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v4, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v7, Lbr/com/topaz/m/e;

    invoke-direct {v7, p0, v1, v0, v4}, Lbr/com/topaz/m/e;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance p0, Lbr/com/topaz/a0/b;

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lbr/com/topaz/a0/b;-><init>(Lbr/com/topaz/w0/b;Lbr/com/topaz/n/a;Lbr/com/topaz/m/e;Lbr/com/topaz/m/f;Lbr/com/topaz/m/b;)V

    invoke-interface {p0, p1}, Lbr/com/topaz/a0/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lbr/com/topaz/u0/s;

    invoke-direct {v0}, Lbr/com/topaz/u0/s;-><init>()V

    invoke-static {p0, v0}, Lbr/com/topaz/w0/e;->a(Landroid/content/Context;Lbr/com/topaz/u0/r;)Lbr/com/topaz/w0/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lbr/com/topaz/w0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lbr/com/topaz/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lbr/com/topaz/heartbeat/StartCallback;)V
    .locals 1

    new-instance v0, Lbr/com/topaz/g0/a;

    invoke-direct {v0, p0, p2}, Lbr/com/topaz/g0/a;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/StartCallback;)V

    invoke-virtual {v0, p1}, Lbr/com/topaz/g0/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lbr/com/topaz/a/c;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lbr/com/topaz/heartbeat/Antipharming;->verify(Landroid/content/Context;)V

    new-instance p1, Lbr/com/topaz/a/d;

    invoke-direct {p1}, Lbr/com/topaz/a/d;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lbr/com/topaz/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/CurrentLocationCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbr/com/topaz/heartbeat/CurrentLocationCallback;",
            ")V"
        }
    .end annotation

    sget-object v0, Lbr/com/topaz/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lbr/com/topaz/v/d;->i:Lbr/com/topaz/v/d;

    invoke-virtual {p0}, Lbr/com/topaz/v/d;->a()I

    move-result p0

    invoke-virtual {p2, p0}, Lbr/com/topaz/heartbeat/CurrentLocationCallback;->onFailure(I)V

    return-void

    :cond_0
    new-instance v6, Lbr/com/topaz/n/b;

    invoke-direct {v6, p0}, Lbr/com/topaz/n/b;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v3

    new-instance v0, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v5, Lbr/com/topaz/u0/a;

    invoke-direct {v5}, Lbr/com/topaz/u0/a;-><init>()V

    new-instance v4, Lbr/com/topaz/u0/c;

    invoke-direct {v4, v0, v5}, Lbr/com/topaz/u0/c;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;)V

    new-instance v8, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v8, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v7, Lbr/com/topaz/m0/e;

    invoke-direct {v7, p0, v8}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v9, Lbr/com/topaz/v/b;

    invoke-direct {v9}, Lbr/com/topaz/v/b;-><init>()V

    new-instance v11, Lbr/com/topaz/v/h;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    move-object v0, v11

    move-object v2, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lbr/com/topaz/v/h;-><init>(Lbr/com/topaz/s/a;Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/u0/c;Lbr/com/topaz/u0/a;Lbr/com/topaz/n/a;Lbr/com/topaz/m0/d;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/v/b;Ljava/util/HashMap;)V

    new-instance p0, Lbr/com/topaz/v/f;

    invoke-direct {p0, v11}, Lbr/com/topaz/v/f;-><init>(Lbr/com/topaz/v/h;)V

    new-instance p1, Lbr/com/topaz/a/c$a;

    invoke-direct {p1, p2}, Lbr/com/topaz/a/c$a;-><init>(Lbr/com/topaz/heartbeat/CurrentLocationCallback;)V

    invoke-virtual {p0, p1}, Lbr/com/topaz/v/f;->a(Lbr/com/topaz/v/f$b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lbr/com/topaz/l/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v0, Lbr/com/topaz/m/a;

    invoke-direct {v0, p0, v1}, Lbr/com/topaz/m/a;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-virtual {v0}, Lbr/com/topaz/m/a;->h()Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v2

    new-instance v5, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v5, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v6, Lbr/com/topaz/d/h;

    new-instance v3, Lbr/com/topaz/d/f;

    invoke-direct {v3}, Lbr/com/topaz/d/f;-><init>()V

    new-instance v4, Lbr/com/topaz/d/d;

    invoke-direct {v4}, Lbr/com/topaz/d/d;-><init>()V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/d/h;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/d/f;Lbr/com/topaz/d/d;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v0, Lbr/com/topaz/d/c;

    new-instance v1, Lbr/com/topaz/u0/s;

    invoke-direct {v1}, Lbr/com/topaz/u0/s;-><init>()V

    invoke-direct {v0, v1}, Lbr/com/topaz/d/c;-><init>(Lbr/com/topaz/u0/r;)V

    new-instance v1, Lbr/com/topaz/d/e;

    invoke-direct {v1, p0, v6, v0}, Lbr/com/topaz/d/e;-><init>(Landroid/content/Context;Lbr/com/topaz/d/h;Lbr/com/topaz/d/c;)V

    invoke-virtual {v1}, Lbr/com/topaz/d/e;->b()V

    return-void
.end method
