.class public Lbr/com/topaz/g0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/g0/d;


# instance fields
.field private a:Lbr/com/topaz/g0/d$a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/StartCallback;)V
    .locals 52

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move-object/from16 v17, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v13}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v32, Lbr/com/topaz/u0/s;

    move-object/from16 v16, v32

    invoke-direct/range {v32 .. v32}, Lbr/com/topaz/u0/s;-><init>()V

    invoke-static/range {p1 .. p1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v6

    new-instance v26, Lbr/com/topaz/u0/h;

    invoke-direct/range {v26 .. v26}, Lbr/com/topaz/u0/h;-><init>()V

    invoke-static/range {p1 .. p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v15

    move-object v5, v15

    new-instance v3, Lbr/com/topaz/g0/c;

    move-object v4, v3

    invoke-direct {v3, v14, v15}, Lbr/com/topaz/g0/c;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;)V

    new-instance v40, Lbr/com/topaz/heartbeat/crypto/FileDecryption;

    invoke-direct/range {v40 .. v40}, Lbr/com/topaz/heartbeat/crypto/FileDecryption;-><init>()V

    new-instance v12, Lbr/com/topaz/heartbeat/utils/OFDException;

    move-object/from16 v25, v12

    invoke-direct {v12, v15}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v11, Lbr/com/topaz/m0/e;

    move-object v7, v11

    invoke-direct {v11, v14, v12}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v3, Lbr/com/topaz/n/b;

    move-object v8, v3

    invoke-direct {v3, v14}, Lbr/com/topaz/n/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lbr/com/topaz/h0/a;->a()Lbr/com/topaz/h0/a;

    move-result-object v9

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v41

    move-object/from16 v3, v41

    new-instance v10, Lbr/com/topaz/u0/k;

    move-object/from16 p2, v10

    move-object/from16 v0, p2

    invoke-direct {v0, v14}, Lbr/com/topaz/u0/k;-><init>(Landroid/content/Context;)V

    new-instance v0, Lbr/com/topaz/u0/f;

    move-object/from16 v42, v1

    move-object v1, v11

    move-object v11, v0

    invoke-direct {v0}, Lbr/com/topaz/u0/f;-><init>()V

    new-instance v0, Lbr/com/topaz/t0/b;

    invoke-direct {v0, v14, v12}, Lbr/com/topaz/t0/b;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    move-object/from16 v43, v2

    new-instance v2, Lbr/com/topaz/m/a;

    move-object/from16 p2, v3

    move-object v3, v12

    move-object v12, v2

    invoke-direct {v2, v14, v3}, Lbr/com/topaz/m/a;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    move-object/from16 v44, v4

    new-instance v4, Lbr/com/topaz/j/b;

    invoke-direct {v4, v14}, Lbr/com/topaz/j/b;-><init>(Landroid/content/Context;)V

    new-instance v45, Lbr/com/topaz/u0/d;

    move-object/from16 v46, v15

    move-object/from16 v15, v45

    invoke-direct/range {v45 .. v45}, Lbr/com/topaz/u0/d;-><init>()V

    move-object/from16 v47, v5

    new-instance v5, Lbr/com/topaz/l/g0;

    move-object/from16 v48, v6

    move-object v6, v5

    move-object/from16 v18, v5

    move-object/from16 v19, p1

    move-object/from16 v20, v13

    move-object/from16 v21, v48

    move-object/from16 v22, v26

    move-object/from16 v23, v3

    invoke-direct/range {v18 .. v23}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v19, Lbr/com/topaz/b0/e;

    move-object/from16 v18, v19

    move-object/from16 v20, p1

    move-object/from16 v21, v46

    move-object/from16 v22, v0

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v24}, Lbr/com/topaz/b0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/t0/b;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/l/e0;)V

    new-instance v0, Lbr/com/topaz/f0/f;

    new-instance v14, Lbr/com/topaz/l/g0;

    move-object/from16 v19, v14

    move-object/from16 v21, v13

    move-object/from16 v22, v48

    move-object/from16 v23, v26

    move-object/from16 v24, v3

    invoke-direct/range {v19 .. v24}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-direct {v0, v14}, Lbr/com/topaz/f0/f;-><init>(Lbr/com/topaz/l/g0;)V

    new-instance v14, Lbr/com/topaz/g0/f;

    move-object/from16 v49, v6

    move-object/from16 v6, v46

    invoke-direct {v14, v0, v6, v1}, Lbr/com/topaz/g0/f;-><init>(Lbr/com/topaz/f0/g;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;)V

    new-instance v33, Lbr/com/topaz/j/c;

    move-object/from16 v46, v7

    move-object v7, v13

    move-object/from16 v13, v33

    move-object/from16 v34, v41

    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v5

    move-object/from16 v38, v3

    move-object/from16 v39, v45

    invoke-direct/range {v33 .. v39}, Lbr/com/topaz/j/c;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/j/b;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/d;)V

    new-instance v4, Lbr/com/topaz/f0/c;

    move-object/from16 v39, v8

    move-object/from16 v21, v14

    move-object/from16 v8, p1

    move-object v14, v4

    invoke-direct {v4}, Lbr/com/topaz/f0/c;-><init>()V

    move-object/from16 v50, v9

    new-instance v9, Lbr/com/topaz/n0/b;

    move-object/from16 v19, v9

    invoke-direct {v9, v8, v3}, Lbr/com/topaz/n0/b;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v26, Lbr/com/topaz/m0/a;

    move-object/from16 v23, v26

    move-object/from16 v27, p1

    move-object/from16 v28, v41

    move-object/from16 v29, v6

    move-object/from16 v30, v5

    move-object/from16 v31, v3

    invoke-direct/range {v26 .. v31}, Lbr/com/topaz/m0/a;-><init>(Landroid/content/Context;Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v9, Lbr/com/topaz/k/b;

    move-object/from16 v8, v48

    invoke-direct {v9, v7, v8}, Lbr/com/topaz/k/b;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;)V

    move-object/from16 v48, v10

    new-instance v10, Lbr/com/topaz/o/b;

    invoke-direct {v10, v6, v9}, Lbr/com/topaz/o/b;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/k/b;)V

    new-instance v26, Lbr/com/topaz/i/a;

    move-object/from16 v20, v26

    move-object/from16 v27, v41

    move-object/from16 v28, v32

    move-object/from16 v29, v0

    move-object/from16 v30, v40

    move-object/from16 v31, v1

    move-object/from16 v32, v21

    move-object/from16 v33, v5

    move-object/from16 v34, v4

    move-object/from16 v35, v7

    move-object/from16 v36, v2

    move-object/from16 v37, v6

    move-object/from16 v38, v10

    invoke-direct/range {v26 .. v38}, Lbr/com/topaz/i/a;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/u0/r;Lbr/com/topaz/f0/g;Lbr/com/topaz/k/d;Lbr/com/topaz/m0/d;Lbr/com/topaz/g0/f;Lbr/com/topaz/l/e0;Lbr/com/topaz/f0/c;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/m/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/o/b;)V

    new-instance v0, Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;-><init>()V

    new-instance v1, Lbr/com/topaz/e0/b;

    move-object/from16 v21, v1

    invoke-direct {v1, v0, v5, v3}, Lbr/com/topaz/e0/b;-><init>(Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-static {v6}, Lbr/com/topaz/g/d;->a(Lbr/com/topaz/l/f0;)Lbr/com/topaz/g/d;

    move-result-object v37

    new-instance v33, Lbr/com/topaz/g/c;

    move-object/from16 v26, v33

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v35, v41

    move-object/from16 v36, v6

    move-object/from16 v38, v3

    invoke-direct/range {v33 .. v38}, Lbr/com/topaz/g/c;-><init>(Landroid/content/Context;Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/g/d;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v0, Lbr/com/topaz/q/g;

    move-object/from16 v27, v0

    move-object/from16 v28, v41

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v45

    move-object/from16 v33, v5

    move-object/from16 v34, v4

    invoke-direct/range {v27 .. v34}, Lbr/com/topaz/q/g;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/d;Lbr/com/topaz/l/e0;Lbr/com/topaz/f0/c;)V

    new-instance v1, Lbr/com/topaz/q/e;

    move-object/from16 v22, v1

    invoke-direct {v1, v6, v0, v5}, Lbr/com/topaz/q/e;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/q/g;Lbr/com/topaz/l/e0;)V

    new-instance v0, Lbr/com/topaz/e/c;

    move-object/from16 v24, v0

    invoke-direct {v0, v6, v5}, Lbr/com/topaz/e/c;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;)V

    new-instance v1, Lbr/com/topaz/g0/e;

    move-object/from16 v2, p0

    move-object v0, v1

    move-object/from16 v3, p2

    move-object/from16 v51, v1

    move-object/from16 v8, v39

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    move-object/from16 v4, v44

    move-object/from16 v7, v46

    move-object/from16 v5, v47

    move-object/from16 v10, v48

    move-object/from16 v6, v49

    move-object/from16 v9, v50

    invoke-direct/range {v0 .. v26}, Lbr/com/topaz/g0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/g0/d;Lbr/com/topaz/s/a;Lbr/com/topaz/g0/b;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/m0/d;Lbr/com/topaz/n/a;Lbr/com/topaz/h0/a;Lbr/com/topaz/u0/k;Lbr/com/topaz/u0/f;Lbr/com/topaz/m/a;Lbr/com/topaz/j/c;Lbr/com/topaz/f0/c;Lbr/com/topaz/u0/d;Lbr/com/topaz/u0/r;Lbr/com/topaz/heartbeat/StartCallback;Lbr/com/topaz/b0/e;Lbr/com/topaz/n0/e;Lbr/com/topaz/i/a;Lbr/com/topaz/e0/a;Lbr/com/topaz/q/d;Lbr/com/topaz/m0/a;Lbr/com/topaz/e/c;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/g/c;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    iput-object v1, v0, Lbr/com/topaz/g0/a;->a:Lbr/com/topaz/g0/d$a;

    move-object/from16 v1, p1

    iput-object v1, v0, Lbr/com/topaz/g0/a;->b:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lbr/com/topaz/u0/o;->a(Landroid/content/Context;)V

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

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/g0/a;->a:Lbr/com/topaz/g0/d$a;

    invoke-interface {v0, p1}, Lbr/com/topaz/g0/d$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Failure request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/g0/a;->a:Lbr/com/topaz/g0/d$a;

    invoke-interface {v0}, Lbr/com/topaz/g0/d$a;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/g0/a;->a:Lbr/com/topaz/g0/d$a;

    invoke-interface {v0}, Lbr/com/topaz/g0/d$a;->c()V

    return-void
.end method
