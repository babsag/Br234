.class public Lbr/com/topaz/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lbr/com/topaz/r/k;

.field private static b:Lbr/com/topaz/r/j;


# direct methods
.method public static a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;
    .locals 25

    move-object/from16 v6, p0

    new-instance v2, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static/range {p0 .. p0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v10

    new-instance v0, Lbr/com/topaz/k/b;

    invoke-direct {v0, v2, v10}, Lbr/com/topaz/k/b;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;)V

    new-instance v4, Lbr/com/topaz/u0/h;

    invoke-direct {v4}, Lbr/com/topaz/u0/h;-><init>()V

    invoke-static/range {p0 .. p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v11

    new-instance v7, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v7, v11}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    new-instance v15, Lbr/com/topaz/m/e;

    invoke-direct {v15, v6, v11, v2, v7}, Lbr/com/topaz/m/e;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v13, Lbr/com/topaz/m0/e;

    invoke-direct {v13, v6, v7}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lbr/com/topaz/b/b;

    invoke-direct {v1, v6, v11}, Lbr/com/topaz/b/b;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;)V

    new-instance v3, Lbr/com/topaz/m/c;

    invoke-direct {v3, v1}, Lbr/com/topaz/m/c;-><init>(Lbr/com/topaz/b/a;)V

    const-string v5, "hardwareSerial"

    invoke-virtual {v14, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lbr/com/topaz/m/f;

    invoke-direct {v3}, Lbr/com/topaz/m/f;-><init>()V

    const-string v5, "root_path"

    invoke-virtual {v14, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lbr/com/topaz/m/b;

    invoke-direct {v3}, Lbr/com/topaz/m/b;-><init>()V

    const-string v5, "su_command"

    invoke-virtual {v14, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lbr/com/topaz/m/g;

    invoke-direct {v3, v1}, Lbr/com/topaz/m/g;-><init>(Lbr/com/topaz/b/a;)V

    const-string v1, "galaxyHardwareSerial"

    invoke-virtual {v14, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v8

    new-instance v9, Lbr/com/topaz/u0/p;

    invoke-direct {v9, v7}, Lbr/com/topaz/u0/p;-><init>(Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Lbr/com/topaz/m/a;

    invoke-direct {v5, v6, v7}, Lbr/com/topaz/m/a;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v3, Lbr/com/topaz/o/b;

    invoke-direct {v3, v11, v0}, Lbr/com/topaz/o/b;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/k/b;)V

    invoke-virtual {v3}, Lbr/com/topaz/o/b;->a()V

    new-instance v1, Lbr/com/topaz/l/g0;

    move-object v0, v1

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v24, v3

    move-object v3, v10

    move-object/from16 v21, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    :try_start_0
    invoke-interface/range {v18 .. v18}, Lbr/com/topaz/l/e0;->d()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v9, v0, v1}, Lbr/com/topaz/u0/p;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/LinkedList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v12

    :goto_0
    new-instance v1, Lbr/com/topaz/n/b;

    move-object/from16 v17, v1

    invoke-direct {v1, v6}, Lbr/com/topaz/n/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbr/com/topaz/t0/b;

    move-object/from16 v20, v1

    invoke-direct {v1, v6, v7}, Lbr/com/topaz/t0/b;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v1, Lbr/com/topaz/u0/d;

    move-object/from16 v19, v1

    invoke-direct {v1}, Lbr/com/topaz/u0/d;-><init>()V

    new-instance v1, Lbr/com/topaz/m/h;

    move-object/from16 v22, v1

    invoke-direct {v1, v6, v7}, Lbr/com/topaz/m/h;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v1, Lbr/com/topaz/u0/l;

    move-object/from16 v23, v1

    move-object/from16 v2, v18

    invoke-direct {v1, v2, v7}, Lbr/com/topaz/u0/l;-><init>(Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v1, Lbr/com/topaz/r/b;

    move-object v7, v1

    move-object/from16 v9, p1

    move-object v12, v2

    move-object/from16 v18, v0

    invoke-direct/range {v7 .. v24}, Lbr/com/topaz/r/b;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/w0/b;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/m0/d;Ljava/util/Map;Lbr/com/topaz/m/e;Ljava/lang/String;Lbr/com/topaz/n/a;Ljava/util/LinkedList;Lbr/com/topaz/u0/d;Lbr/com/topaz/t0/b;Lbr/com/topaz/m/a;Lbr/com/topaz/m/h;Lbr/com/topaz/u0/l;Lbr/com/topaz/o/b;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lbr/com/topaz/l/h;)Lbr/com/topaz/r/j;
    .locals 11

    new-instance v10, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v10}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static {p0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v3

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v5

    new-instance v0, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v0, v5}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v4, Lbr/com/topaz/f0/a;

    invoke-direct {v4}, Lbr/com/topaz/f0/a;-><init>()V

    new-instance v7, Lbr/com/topaz/m/e;

    invoke-direct {v7, p0, v5, v10, v0}, Lbr/com/topaz/m/e;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v9, Lbr/com/topaz/m0/e;

    invoke-direct {v9, p0, v0}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lbr/com/topaz/m/f;

    invoke-direct {v0}, Lbr/com/topaz/m/f;-><init>()V

    const-string v1, "root_path"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    new-instance v8, Lbr/com/topaz/n/b;

    invoke-direct {v8, p0}, Lbr/com/topaz/n/b;-><init>(Landroid/content/Context;)V

    new-instance p0, Lbr/com/topaz/r/j;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lbr/com/topaz/r/j;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/h;Lbr/com/topaz/w0/b;Lbr/com/topaz/f0/b;Lbr/com/topaz/l/f0;Ljava/util/Map;Lbr/com/topaz/m/e;Lbr/com/topaz/n/a;Lbr/com/topaz/m0/d;Lbr/com/topaz/heartbeat/crypto/MidCrypt;)V

    sput-object p0, Lbr/com/topaz/r/a;->b:Lbr/com/topaz/r/j;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lbr/com/topaz/l/l;Ljava/util/HashMap;)Lbr/com/topaz/r/k;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbr/com/topaz/l/l;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbr/com/topaz/r/k;"
        }
    .end annotation

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    new-instance v3, Lbr/com/topaz/f0/c;

    invoke-direct {v3}, Lbr/com/topaz/f0/c;-><init>()V

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v4

    new-instance v10, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v10, v4}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v5, Lbr/com/topaz/m0/e;

    invoke-direct {v5, p0, v10}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v7, Lbr/com/topaz/u0/p;

    invoke-direct {v7, v10}, Lbr/com/topaz/u0/p;-><init>(Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v9, Lbr/com/topaz/k/c;

    invoke-direct {v9}, Lbr/com/topaz/k/c;-><init>()V

    new-instance v8, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v8}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance p0, Lbr/com/topaz/u0/s;

    invoke-direct {p0}, Lbr/com/topaz/u0/s;-><init>()V

    new-instance v11, Lbr/com/topaz/r/g;

    invoke-direct {v11, p0}, Lbr/com/topaz/r/g;-><init>(Lbr/com/topaz/u0/r;)V

    new-instance p0, Lbr/com/topaz/r/k;

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v11}, Lbr/com/topaz/r/k;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Ljava/util/HashMap;Lbr/com/topaz/u0/p;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/k/c;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/r/g;)V

    sput-object p0, Lbr/com/topaz/r/a;->a:Lbr/com/topaz/r/k;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Ljava/util/HashMap;)Lbr/com/topaz/r/k;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/l;
    .locals 7

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->Q()Lbr/com/topaz/k0/f;

    move-result-object v4

    invoke-static {p0}, Lbr/com/topaz/k0/b;->a(Landroid/content/Context;)Lbr/com/topaz/k0/a;

    move-result-object v5

    new-instance v6, Lbr/com/topaz/r/l;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/r/l;-><init>(Lbr/com/topaz/s/a;Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/k0/f;Lbr/com/topaz/k0/a;)V

    return-object v6
.end method
