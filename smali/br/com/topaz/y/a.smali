.class public Lbr/com/topaz/y/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/c/e;
.implements Lbr/com/topaz/c0/c;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/y/a;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lbr/com/topaz/y/a;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/y/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private a(Lbr/com/topaz/l/x;Lbr/com/topaz/m/e;)Z
    .locals 0

    invoke-virtual {p2}, Lbr/com/topaz/m/e;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lbr/com/topaz/l/x;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Success request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lbr/com/topaz/y/a$a;

    invoke-direct {v0, p0, p1}, Lbr/com/topaz/y/a$a;-><init>(Lbr/com/topaz/y/a;Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Failure request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    :try_start_0
    invoke-static/range {p1 .. p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v11

    new-instance v12, Lbr/com/topaz/u0/s;

    invoke-direct {v12}, Lbr/com/topaz/u0/s;-><init>()V

    new-instance v3, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v3}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static/range {p1 .. p1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v4

    new-instance v1, Lbr/com/topaz/k/b;

    invoke-direct {v1, v3, v4}, Lbr/com/topaz/k/b;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;)V

    new-instance v13, Lbr/com/topaz/d0/c;

    invoke-direct {v13, v11, v1}, Lbr/com/topaz/d0/c;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/k/b;)V

    new-instance v14, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v14, v11}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v1, Lbr/com/topaz/m/e;

    new-instance v2, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v5, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v5, v11}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-direct {v1, v0, v11, v2, v5}, Lbr/com/topaz/m/e;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v11}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->B()Lbr/com/topaz/y/d;

    move-result-object v2

    new-instance v15, Lbr/com/topaz/l/x;

    const/16 v5, 0x78

    invoke-interface {v12, v5}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Lbr/com/topaz/y/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x79

    invoke-interface {v12, v6}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Lbr/com/topaz/y/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v10, Lbr/com/topaz/y/a;->b:Ljava/lang/String;

    invoke-direct {v15, v5, v6, v7}, Lbr/com/topaz/l/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v15, v1}, Lbr/com/topaz/y/a;->a(Lbr/com/topaz/l/x;Lbr/com/topaz/m/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Lbr/com/topaz/l/f0;->f()Lbr/com/topaz/c/d;

    move-result-object v1

    invoke-interface {v11}, Lbr/com/topaz/l/f0;->m()Lbr/com/topaz/c/d;

    move-result-object v2

    invoke-interface {v11}, Lbr/com/topaz/l/f0;->d()Lbr/com/topaz/c/c;

    move-result-object v3

    invoke-interface {v11}, Lbr/com/topaz/l/f0;->r()Lbr/com/topaz/c/c;

    move-result-object v4

    new-instance v5, Lbr/com/topaz/v0/b;

    invoke-virtual {v1}, Lbr/com/topaz/c/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3}, Lbr/com/topaz/c/c;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lbr/com/topaz/c/d;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4}, Lbr/com/topaz/c/c;->a()Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v1, v3, v2, v4}, Lbr/com/topaz/v0/b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    new-instance v8, Lbr/com/topaz/c/f;

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v4, v11

    move-object v6, v14

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lbr/com/topaz/c/f;-><init>(Landroid/content/Context;Lbr/com/topaz/c/e;Lbr/com/topaz/l/f0;Lbr/com/topaz/v0/c;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    invoke-interface {v8, v15}, Lbr/com/topaz/c/e$a;->a(Lbr/com/topaz/l/x;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v2}, Lbr/com/topaz/y/d;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v5, Lbr/com/topaz/u0/h;

    invoke-direct {v5}, Lbr/com/topaz/u0/h;-><init>()V

    new-instance v9, Lbr/com/topaz/c0/a;

    invoke-direct {v9, v14}, Lbr/com/topaz/c0/a;-><init>(Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v7, Lbr/com/topaz/m0/e;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1, v14}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v8, Lbr/com/topaz/c0/e;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1}, Lbr/com/topaz/c0/e;-><init>(Landroid/content/Context;)V

    new-instance v16, Lbr/com/topaz/l/g0;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v6, Lbr/com/topaz/d0/a;

    invoke-direct {v6, v0, v14}, Lbr/com/topaz/d0/a;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-virtual {v13}, Lbr/com/topaz/d0/c;->c()V

    new-instance v17, Lbr/com/topaz/c0/d;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v4, v6

    move-object v5, v13

    move-object/from16 v18, v6

    move-object v6, v11

    invoke-direct/range {v1 .. v9}, Lbr/com/topaz/c0/d;-><init>(Landroid/content/Context;Lbr/com/topaz/c0/c;Lbr/com/topaz/d0/a;Lbr/com/topaz/d0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Lbr/com/topaz/c0/e;Lbr/com/topaz/c0/a;)V

    new-instance v9, Lbr/com/topaz/y/c;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v2

    move-object v1, v9

    move-object v3, v13

    move-object/from16 v4, v18

    move-object v5, v14

    move-object v6, v12

    move-object/from16 v7, v17

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lbr/com/topaz/y/c;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/d0/c;Lbr/com/topaz/d0/a;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;Lbr/com/topaz/c0/d;Lbr/com/topaz/l/f0;)V

    new-instance v12, Lbr/com/topaz/y/b;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v3

    new-instance v5, Lbr/com/topaz/y/e;

    invoke-direct {v5}, Lbr/com/topaz/y/e;-><init>()V

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v4, v11

    move-object/from16 v6, p0

    move-object v7, v9

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lbr/com/topaz/y/b;-><init>(Landroid/content/Context;Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/y/e;Lbr/com/topaz/c/e;Lbr/com/topaz/y/c;Lbr/com/topaz/l/e0;)V

    invoke-virtual {v12, v15}, Lbr/com/topaz/y/b;->a(Lbr/com/topaz/l/x;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "029"

    invoke-virtual {v14, v0, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OFDHB:199"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
