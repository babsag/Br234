.class Lbr/com/topaz/heartbeat/token/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;

.field final synthetic c:Lbr/com/topaz/heartbeat/token/i;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i;Landroid/content/Context;Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$b;->c:Lbr/com/topaz/heartbeat/token/i;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/i$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/token/i$b;->b:Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbr/com/topaz/l/l;)V
    .locals 16

    move-object/from16 v10, p0

    new-instance v8, Lbr/com/topaz/f0/c;

    invoke-direct {v8}, Lbr/com/topaz/f0/c;-><init>()V

    iget-object v0, v10, Lbr/com/topaz/heartbeat/token/i$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v9

    new-instance v11, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v11}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v12, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v12, v9}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v13, Lbr/com/topaz/r0/b;

    invoke-direct {v13}, Lbr/com/topaz/r0/b;-><init>()V

    new-instance v14, Lbr/com/topaz/u0/s;

    invoke-direct {v14}, Lbr/com/topaz/u0/s;-><init>()V

    iget-object v0, v10, Lbr/com/topaz/heartbeat/token/i$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v3

    new-instance v15, Lbr/com/topaz/l/g0;

    iget-object v1, v10, Lbr/com/topaz/heartbeat/token/i$b;->a:Landroid/content/Context;

    new-instance v2, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v4, Lbr/com/topaz/u0/h;

    invoke-direct {v4}, Lbr/com/topaz/u0/h;-><init>()V

    move-object v0, v15

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v7, Lbr/com/topaz/heartbeat/token/a;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    move-object v0, v7

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v9

    move-object v5, v11

    move-object v6, v12

    move-object v10, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lbr/com/topaz/heartbeat/token/a;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance v7, Lbr/com/topaz/heartbeat/token/i$b$a;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v5, v15

    move-object v6, v13

    move-object v13, v7

    move-object v7, v11

    move-object v8, v12

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Lbr/com/topaz/heartbeat/token/i$b$a;-><init>(Lbr/com/topaz/heartbeat/token/i$b;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/o;Lbr/com/topaz/l/e0;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    invoke-virtual {v10, v13}, Lbr/com/topaz/heartbeat/token/a;->a(Lbr/com/topaz/heartbeat/token/a$b;)V

    invoke-virtual {v10}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
