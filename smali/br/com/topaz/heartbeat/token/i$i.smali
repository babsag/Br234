.class Lbr/com/topaz/heartbeat/token/i$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;

.field final synthetic c:Lbr/com/topaz/heartbeat/token/i;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i;Landroid/content/Context;Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$i;->c:Lbr/com/topaz/heartbeat/token/i;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/i$i;->a:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/token/i$i;->b:Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbr/com/topaz/l/l;)V
    .locals 20

    move-object/from16 v0, p0

    new-instance v9, Lbr/com/topaz/f0/c;

    invoke-direct {v9}, Lbr/com/topaz/f0/c;-><init>()V

    iget-object v1, v0, Lbr/com/topaz/heartbeat/token/i$i;->a:Landroid/content/Context;

    invoke-static {v1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v13

    new-instance v14, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v14}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v5, Lbr/com/topaz/u0/h;

    invoke-direct {v5}, Lbr/com/topaz/u0/h;-><init>()V

    new-instance v10, Lbr/com/topaz/r0/b;

    invoke-direct {v10}, Lbr/com/topaz/r0/b;-><init>()V

    new-instance v15, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v15, v13}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v19, Lbr/com/topaz/u0/s;

    invoke-direct/range {v19 .. v19}, Lbr/com/topaz/u0/s;-><init>()V

    iget-object v1, v0, Lbr/com/topaz/heartbeat/token/i$i;->a:Landroid/content/Context;

    invoke-static {v1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v4

    new-instance v11, Lbr/com/topaz/l/g0;

    iget-object v2, v0, Lbr/com/topaz/heartbeat/token/i$i;->a:Landroid/content/Context;

    move-object v1, v11

    move-object v3, v14

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v16, Lbr/com/topaz/heartbeat/token/e;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v2

    move-object/from16 v1, v16

    move-object v3, v13

    move-object v4, v9

    move-object/from16 v5, p1

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lbr/com/topaz/heartbeat/token/e;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance v17, Lbr/com/topaz/heartbeat/token/h;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v2

    move-object/from16 v1, v17

    move-object v4, v11

    move-object v5, v9

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lbr/com/topaz/heartbeat/token/h;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/f0/c;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v18, Lbr/com/topaz/heartbeat/token/c;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v2

    move-object/from16 v1, v18

    move-object/from16 v3, p1

    move-object v4, v9

    move-object v5, v13

    move-object v6, v11

    move-object v7, v10

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Lbr/com/topaz/heartbeat/token/c;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance v1, Lbr/com/topaz/heartbeat/token/b;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v11

    move-object v10, v1

    move-object/from16 v12, p1

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v2

    invoke-direct/range {v10 .. v19}, Lbr/com/topaz/heartbeat/token/b;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/token/e;Lbr/com/topaz/heartbeat/token/h;Lbr/com/topaz/heartbeat/token/c;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance v2, Lbr/com/topaz/heartbeat/token/i$i$a;

    invoke-direct {v2, v0}, Lbr/com/topaz/heartbeat/token/i$i$a;-><init>(Lbr/com/topaz/heartbeat/token/i$i;)V

    invoke-virtual {v1, v2}, Lbr/com/topaz/heartbeat/token/b;->a(Lbr/com/topaz/heartbeat/token/b$c;)V

    invoke-virtual {v1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
