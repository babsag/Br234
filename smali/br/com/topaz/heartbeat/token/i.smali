.class public Lbr/com/topaz/heartbeat/token/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/token/g$b;
.implements Lbr/com/topaz/heartbeat/token/a$b;


# instance fields
.field private a:Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;

.field private b:Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/token/i;)Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/i;->a:Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;

    return-object p0
.end method

.method private a(JJ)Z
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/u0/d;

    invoke-direct {v1}, Lbr/com/topaz/u0/d;-><init>()V

    const-wide/16 v2, 0x3e8

    mul-long p3, p3, v2

    add-long/2addr p1, p3

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v0}, Lbr/com/topaz/u0/d;->a(Ljava/util/Calendar;)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lbr/com/topaz/l/o;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->T()Lbr/com/topaz/r0/d;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v0

    :goto_0
    new-instance v2, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v2, p1}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    const-string p1, "079"

    invoke-virtual {v2, v1, p1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/r0/d;->l()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 p1, 0x1

    :goto_3
    return p1
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/token/i;JJ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lbr/com/topaz/heartbeat/token/i;->a(JJ)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lbr/com/topaz/heartbeat/token/i;)Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/token/i;->b:Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$g;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/token/i$g;-><init>(Lbr/com/topaz/heartbeat/token/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$h;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/heartbeat/token/i$h;-><init>(Lbr/com/topaz/heartbeat/token/i;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    invoke-interface {p3, p1}, Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;->onFailure(I)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p2

    new-instance v0, Lbr/com/topaz/heartbeat/token/i$i;

    invoke-direct {v0, p0, p1, p3}, Lbr/com/topaz/heartbeat/token/i$i;-><init>(Lbr/com/topaz/heartbeat/token/i;Landroid/content/Context;Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;)V

    invoke-virtual {p2, v0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p2}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/token/Token$DismissCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    invoke-interface {p3, p1}, Lbr/com/topaz/heartbeat/token/Token$DismissCallback;->onFailure(I)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p2

    new-instance v0, Lbr/com/topaz/heartbeat/token/i$d;

    invoke-direct {v0, p0, p1, p3}, Lbr/com/topaz/heartbeat/token/i$d;-><init>(Lbr/com/topaz/heartbeat/token/i;Landroid/content/Context;Lbr/com/topaz/heartbeat/token/Token$DismissCallback;)V

    invoke-virtual {p2, v0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p2}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/token/Token$TokenCallback;)V
    .locals 19

    invoke-direct/range {p0 .. p1}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Lbr/com/topaz/heartbeat/token/Token$TokenCallback;->onFailure(I)V

    return-void

    :cond_0
    move-object/from16 v3, p3

    invoke-static/range {p1 .. p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    new-instance v13, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v13}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v14, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v14, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v15, Lbr/com/topaz/f0/c;

    invoke-direct {v15}, Lbr/com/topaz/f0/c;-><init>()V

    new-instance v16, Lbr/com/topaz/u0/s;

    invoke-direct/range {v16 .. v16}, Lbr/com/topaz/u0/s;-><init>()V

    invoke-static/range {p1 .. p1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v7

    new-instance v17, Lbr/com/topaz/l/g0;

    new-instance v6, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v6}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v8, Lbr/com/topaz/u0/h;

    invoke-direct {v8}, Lbr/com/topaz/u0/h;-><init>()V

    move-object/from16 v4, v17

    move-object/from16 v5, p1

    move-object v9, v14

    invoke-direct/range {v4 .. v9}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v18, Lbr/com/topaz/r0/b;

    invoke-direct/range {v18 .. v18}, Lbr/com/topaz/r0/b;-><init>()V

    new-instance v2, Lbr/com/topaz/heartbeat/token/f;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v5

    move-object v4, v2

    move-object/from16 v6, p2

    move-object v7, v0

    move-object/from16 v8, v17

    move-object v9, v13

    move-object/from16 v10, v18

    move-object v11, v14

    move-object/from16 v12, v16

    invoke-direct/range {v4 .. v12}, Lbr/com/topaz/heartbeat/token/f;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance v12, Lbr/com/topaz/heartbeat/token/i$c;

    move-object v1, v12

    move-object v11, v2

    move-object/from16 v2, p0

    move-object v4, v0

    move-object/from16 v5, v17

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v15

    move-object/from16 v9, v18

    move-object v10, v13

    move-object v0, v11

    move-object v11, v14

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lbr/com/topaz/heartbeat/token/i$c;-><init>(Lbr/com/topaz/heartbeat/token/i;Lbr/com/topaz/heartbeat/token/Token$TokenCallback;Lbr/com/topaz/l/o;Lbr/com/topaz/l/e0;Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    invoke-virtual {v0, v13}, Lbr/com/topaz/heartbeat/token/f;->a(Lbr/com/topaz/heartbeat/token/f$a;)V

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;Lbr/com/topaz/l/l;Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    invoke-interface {p4, p1}, Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;->onFailure(I)V

    return-void

    :cond_0
    iput-object p4, p0, Lbr/com/topaz/heartbeat/token/i;->b:Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;

    const-string v0, "6"

    const-string v1, "TK_AU"

    invoke-virtual {p2, v0, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CODE"

    invoke-virtual {p2, v0, p3}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p2

    new-instance p3, Lbr/com/topaz/heartbeat/token/i$b;

    invoke-direct {p3, p0, p1, p4}, Lbr/com/topaz/heartbeat/token/i$b;-><init>(Lbr/com/topaz/heartbeat/token/i;Landroid/content/Context;Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;)V

    invoke-virtual {p2, p3}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p2}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;Lbr/com/topaz/l/l;Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    invoke-interface {p4, p1}, Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;->onFailure(I)V

    return-void

    :cond_0
    iput-object p4, p0, Lbr/com/topaz/heartbeat/token/i;->a:Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;

    const-string p4, "6"

    const-string v0, "TK_RA"

    invoke-virtual {p2, p4, v0}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "INFO"

    invoke-virtual {p2, p4, p3}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p2

    new-instance p3, Lbr/com/topaz/heartbeat/token/i$a;

    invoke-direct {p3, p0, p1}, Lbr/com/topaz/heartbeat/token/i$a;-><init>(Lbr/com/topaz/heartbeat/token/i;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p2}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;Lbr/com/topaz/l/l;)Z
    .locals 4

    :try_start_0
    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v1, Lbr/com/topaz/u0/s;

    invoke-direct {v1}, Lbr/com/topaz/u0/s;-><init>()V

    invoke-interface {p1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->T()Lbr/com/topaz/r0/d;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/r0/d;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lbr/com/topaz/l/l;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lbr/com/topaz/l/f0;->f(Ljava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Lbr/com/topaz/r0/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lbr/com/topaz/r0/c;

    invoke-direct {p2, v1}, Lbr/com/topaz/r0/c;-><init>(Lbr/com/topaz/u0/r;)V

    invoke-virtual {p2, p1}, Lbr/com/topaz/r0/c;->a(Ljava/lang/String;)Lbr/com/topaz/r0/c;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/r0/c;->f()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$e;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/token/i$e;-><init>(Lbr/com/topaz/heartbeat/token/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/i$f;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/heartbeat/token/i$f;-><init>(Lbr/com/topaz/heartbeat/token/i;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
